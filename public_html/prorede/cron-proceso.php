<?php
/* The source code packaged with this file is Free Software, Copyright (C) 2008 by
** Javier González González <desarrollo AT virtualpol.com> <gonzomail AT gmail.com>
** It's licensed under the GNU GENERAL PUBLIC LICENSE v3 unless stated otherwise.
** You can get copies of the licenses here: http://www.gnu.org/licenses/gpl.html
** The source: http://www.virtualpol.com/codigo - TOS: http://www.virtualpol.com/TOS
** VirtualPol, The first Democratic Social Network - http://www.virtualpol.com
*/

$root_dir = '/var/www/vhosts/virtualpol.com/httpdocs/real/';

include($root_dir.'config.php');
include($root_dir.'source/inc-functions-accion.php');



// PROTECCION DE DOBLE EJECUCION. Evita que se ejcute el proceso mas de una vez en un mismo dia.
$result = sql("SELECT pais FROM stats WHERE pais = '".PAIS."' AND time = '".date('Y-m-d 20:00:00')."' LIMIT 1");
while($r = r($result)) { echo 'Ya se ha ejecutado hoy'; exit; }




// INICIO PROCESO
evento_chat('<b>[PROCESO] Inicio del proceso diario...</b>');

// TIME MARGEN
$date			= date('Y-m-d 20:00:00'); 					// ahora


// LOAD CONFIG $pol['config'][]
$result = sql("SELECT valor, dato FROM config WHERE pais = '".PAIS."' AND autoload = 'no'");
while ($r = r($result)) { $pol['config'][$r['dato']] = $r['valor']; }


// NOTAS MEDIA
$result = sql("SELECT user_ID, AVG(nota) AS media FROM cargos_users WHERE pais = '".PAIS."' GROUP BY user_ID");
while($r = r($result)){ 
	if ($r['media']) { sql("UPDATE users SET nota = '".$r['media']."' WHERE ID = '".round($r['user_ID'], 1)."' LIMIT 1"); }
}
//evento_chat('<b>[PROCESO] Calculadas las notas media.</b>');




// ACTUALIZACION DEL VOTO CONFIANZA
sql("UPDATE users SET voto_confianza = '0'");
$result = sql("SELECT item_ID, SUM(voto) AS num_confianza FROM votos WHERE tipo = 'confianza' GROUP BY item_ID");
while ($r = r($result)) { 
	sql("UPDATE users SET voto_confianza = '".$r['num_confianza']."' WHERE ID = '".$r['item_ID']."' LIMIT 1");
}
sql("DELETE FROM votos WHERE tipo = 'confianza' AND (voto = '0' OR time < '".tiempo(180)."')");



// Quitar candidaturas de SC que estén más de 60 dias inactivos.
sql("UPDATE users SET ser_SC = 'false' WHERE ser_SC = 'true' AND fecha_last < '".tiempo(60)."'");

if (date('N') == 7) { // SOLO DOMINGO

	// Guardar historico de confianza (un dato por semana)
	$result = sql("SELECT ID, voto_confianza FROM users WHERE pais = '".PAIS."'");
	while ($r = r($result)) {
		sql("UPDATE users SET confianza_historico = CONCAT(confianza_historico,' ".$r['voto_confianza']."') WHERE ID = '".$r['ID']."' LIMIT 1");
	}
	
	// Actualizar nuevos SC
	sql("UPDATE users SET SC = 'false'");
	$result = sql("SELECT ID FROM users WHERE estado = 'ciudadano' AND fecha_registro < '".tiempo(365)."' AND ser_SC = 'true' ORDER BY voto_confianza DESC, fecha_registro ASC LIMIT ".SC_NUM);
	while($r = r($result)){ 
		sql("UPDATE users SET SC = 'true' WHERE ID = '".$r['ID']."' LIMIT 1");
	}


	evento_chat('<b>[PROCESO] Supervisores del Censo electos:</b> '.implode(' ', get_supervisores_del_censo()));
	
}



// STATS (1º obtener variables estadísticas, 2º insertar los datos en la tabla stats)

// ciudadanos
$result = sql("SELECT COUNT(ID) AS num FROM users WHERE estado = 'ciudadano' AND pais = '".PAIS."'");
while($r = r($result)) { $st['ciudadanos'] = $r['num']; }

// nuevos
$result = sql("SELECT COUNT(ID) AS num FROM users WHERE estado = 'ciudadano' AND pais = '".PAIS."' AND fecha_registro > '".tiempo(1)."'");
while($r = r($result)) { $st['nuevos'] = $r['num']; }
evento_chat('<b>[PROCESO]</b> Ciudadanos nuevos: <b>'.$st['nuevos'].'</b>, Ciudadanos expirados: <b>'.$st['eliminados'].'</b>. Balance: <b>'.round($st['nuevos'] - $st['eliminados']).'</b>');

// pols
$result = sql("SELECT SUM(pols) AS num FROM users WHERE pais = '".PAIS."'");
while($r = r($result)) { $st['pols'] = $r['num']; }

// pols_cuentas
if (ECONOMIA) {
	$result = sql("SELECT SUM(pols) AS num FROM cuentas WHERE pais = '".PAIS."'");
	while($r = r($result)) { $st['pols_cuentas'] = $r['num']; }

	// transacciones

	$result = sql("SELECT COUNT(ID) AS num FROM transacciones WHERE pais = '".PAIS."' AND time > '".tiempo(1)."'");
	while($r = r($result)) { $st['transacciones'] = $r['num']; }
} else { $st['transacciones'] = 0; $st['pols_cuentas'] = 0; }

// hilos+msg
$result = sql("SELECT COUNT(ID) AS num FROM ".SQL."foros_hilos WHERE time > '".tiempo(1)."'");
while($r = r($result)) { $st['hilos_msg'] = $r['num']; }
$result = sql("SELECT COUNT(ID) AS num FROM ".SQL."foros_msg WHERE time > '".tiempo(1)."'");
while($r = r($result)) { $st['hilos_msg'] = $st['hilos_msg'] + $r['num']; }

// pols_gobierno
if (ECONOMIA) {
	$result = sql("SELECT SUM(pols) AS num FROM cuentas WHERE pais = '".PAIS."' AND gobierno = 'true'");
	while($r = r($result)) { $st['pols_gobierno'] = $r['num']; }
} else { $st['pols_gobierno'] = 0; }

// partidos
$result = sql("SELECT COUNT(ID) AS num FROM partidos WHERE pais = '".PAIS."' AND estado = 'ok'");
while($r = r($result)) { $st['partidos'] = $r['num']; }

// empresas
if (ECONOMIA) {
	$result = sql("SELECT COUNT(ID) AS num FROM empresas WHERE pais = '".PAIS."'");
	while($r = r($result)) { $st['empresas'] = $r['num']; }


	// mapa (desde el 2011/04/07 guarda el porcentaje en venta.
	$superficie_total = $columnas * $filas;
	$result = sql("SELECT superficie, estado FROM mapa WHERE pais = '".PAIS."'");
	while($r = r($result)) { 
		$sup_total += $r['superficie']; 
		if ($r['estado'] == 'v') { $sup_vende += $r['superficie']; }
	}
	$st['mapa'] = round(($sup_vende * 100) / $superficie_total);

	// mapa_vende: el precio de venta más bajo de una propiedad
	$result = sql("SELECT pols FROM mapa WHERE pais = '".PAIS."' AND estado = 'v' ORDER BY pols ASC LIMIT 1");
	while($r = r($result)) { $st['mapa_vende'] = $r['pols']; }
} else { $st['empresas'] = 0; $st['mapa'] = 0; $st['mapa_vende'] = 0; }


// 24h: ciudadanos que entraron en 24h (CONDICION NUEVA: y que no sean ciudadanos nuevos).
$result = sql("SELECT COUNT(ID) AS num FROM users WHERE estado = 'ciudadano' AND pais = '".PAIS."' AND fecha_last > '".tiempo(1)."' AND fecha_registro < '".tiempo(1)."'");
while($r = r($result)) { $st['24h'] = $r['num']; }

// confianza
$result = sql("SELECT SUM(voto) AS num FROM votos WHERE tipo = 'confianza'");
while($r = r($result)) { $st['confianza'] = $r['num']; }

// autentificados
$result = sql("SELECT COUNT(*) AS num FROM users WHERE dnie = 'true' AND pais = '".PAIS."'");
while($r = r($result)) { $st['autentificados'] = $r['num']; }


// STATS GUARDADO DIARIO
sql("INSERT INTO stats 
(pais, time, ciudadanos, nuevos, pols, pols_cuentas, transacciones, hilos_msg, pols_gobierno, partidos, frase, empresas, eliminados, mapa, mapa_vende, 24h, confianza, autentificados) 
VALUES ('".PAIS."', '".date('Y-m-d 20:00:00')."', '".$st['ciudadanos']."', '".$st['nuevos']."', '".$st['pols']."', '".$st['pols_cuentas']."', '".$st['transacciones']."', '".$st['hilos_msg']."', '".$st['pols_gobierno']."', '".$st['partidos']."', '".$pujas_total."', '".$st['empresas']."', '".$st['eliminados']."', '".$st['mapa']."', '".$st['mapa_vende']."', '".$st['24h']."', '".$st['confianza']."', '".$st['autentificados']."')");


// ¿ELECCIONES?
include($root_dir.'source/cron/cron-elecciones.php');

// Unifica y comprime archivos CSS y JS
include($root_dir.'source/cron/cron-compress-all.php');



evento_chat('<b>[PROCESO] FIN del proceso</b>, todo <span style="color:blue;"><b>OK</b></span>, '.num((microtime(true)-TIME_START)/1000000000).'s (<a href="/estadisticas/'.PAIS.'">estadisticas actualizadas</a>)');





if (date('N') == 1) { // Solo Lunes 

	evento_chat('<b>[#] Comienzo de envio de emails</b> semanales de aviso de votaciones.');
	
	$emails_enviados = 0;
	$result = sql("SELECT ID, nick, email, pais FROM users WHERE pais = '".PAIS."' AND estado = 'ciudadano' AND email != '' ORDER BY fecha_registro ASC LIMIT 10000");
	while($r = r($result)) {

		// Lista de votaciones por votar del usuario
		$txt_votaciones = '';
		$votar_num = 0;
		$result2 = sql("SELECT ID, pais, pregunta, tipo,
(SELECT ID FROM votacion_votos WHERE ref_ID = votacion.ID AND user_ID = '".$r['ID']."' LIMIT 1) AS ha_votado
FROM votacion
WHERE estado = 'ok' AND pais = '".PAIS."' AND acceso_votar IN ('ciudadanos_global', 'ciudadanos') AND acceso_ver IN ('ciudadanos_global', 'ciudadanos', 'anonimos')
ORDER BY num DESC");
		while($r2 = r($result2)) {
			if (!$r2['ha_votado']) { // Si NO ha votado...
				$votar_num++;
				$txt_votaciones .= '<li><a href="http://'.strtolower($r2['pais']).'.'.DOMAIN.'/votacion/'.$r2['ID'].'"><b>'.$r2['pregunta'].'</b></a> ('.ucfirst($r2['tipo']).')</li>';
			}
		}

		if ($votar_num > 0) { // Enviar email solo si tiene votaciones por votar

			// Lista de ultimas votaciones finalizadas
			$txt_votaciones_result = '';
			$result2 = sql("SELECT ID, pais, pregunta, tipo, num
FROM votacion
WHERE estado = 'end' AND pais = '".PAIS."' AND acceso_votar IN ('ciudadanos_global', 'ciudadanos') AND acceso_ver IN ('ciudadanos_global', 'ciudadanos', 'anonimos')
ORDER BY time_expire DESC LIMIT 5");
			while($r2 = r($result2)) {
				$txt_votaciones_result .= '<li><a href="http://'.strtolower($r2['pais']).'.'.DOMAIN.'/votacion/'.$r2['ID'].'">'.$r2['pregunta'].'</a> <span style="">(<b>'.num($r2['num']).'</b> votos)</span></li>';
			}

			$txt_email = '<p>¡Hola '.$r['nick'].'!</p>
		
<p>Aún puedes votar en las siguientes votaciones:</p>
<ol>'.$txt_votaciones.'</ol>

<p><br />Resultados de las últimas votaciones:</p>
<ul>
'.$txt_votaciones_result.'
<li>(<a href="http://'.strtolower(PAIS).'.'.DOMAIN.'/votacion">Ver todas</a>)</li>
</ul>

<p><br />Más formas de participar: <a href="http://'.strtolower(PAIS).'.'.DOMAIN.'"><b>Chat</b></a>, <a href="http://'.strtolower(PAIS).'.'.DOMAIN.'/hacer">¿<b>Qué hacer</b>?</a></p>

<p>________<br />
<b>'.$pol['config']['pais_des'].'</b><br />
<a href="http://www.'.DOMAIN.'">Virtual<b>Pol</b></a> - La primera red social democrática
</p>';
			$txt_titulo = $r['nick'].', '.($votar_num>1?'¡Tienes '.$votar_num.' votaciones pendientes!':'¡Tienes una votación pendiente!');

			enviar_email($r['ID'], $txt_titulo, $txt_email); 
			$emails_enviados++;

			//$txt .= $votar_num.' '.$r['nick'].'<br />'.$txt_email;
		}
	}
	evento_chat('<b>[#] Terminado el envio de emails</b> de aviso <span style="color:grey;">('.num($emails_enviados).' emails enviados)</span>.');

}

mysql_close($link);
?>