<?php
/* The source code packaged with this file is Free Software, Copyright (C) 2008 by
** Javier González González <desarrollo AT virtualpol.com> <gonzomail AT gmail.com>
** It's licensed under the GNU GENERAL PUBLIC LICENSE v3 unless stated otherwise.
** You can get copies of the licenses here: http://www.gnu.org/licenses/gpl.html
** The source: http://www.virtualpol.com/codigo - TOS: http://www.virtualpol.com/TOS
** VirtualPol, The first Democratic Social Network - http://www.virtualpol.com
*/

include('inc-login.php');
include('inc-functions-accion.php');

// ENVIO DE EMAILS DE AVISO

if (false) {

	evento_chat('<b>[#] Comienzo de envio de emails</b>.');
	
	$emails_enviados = 0;
	$result = sql("SELECT ID, nick, email FROM users WHERE estado = 'ciudadano' AND email != '' AND pais ='15M' ORDER BY fecha_registro ASC LIMIT 1");
	while($r = r($result)) {

		$txt_email = '<style>
body{
color:#ffffff;
font-family:arial;
font-size:12px;
}

td{
 background:#ffffff;
 vertical-align:top;
 font-size:12px;
 color:#5295bf;
}

h3{
	font-size:14px;
	color:#5295bf;
	font-weight: normal;
}

a{
color:#5295bf;
text-decoration:none
}

.aviso
{
font-size:10px;
font-family:Verdana;
color:#555555;
}
.aviso a{
color:#555555;
}
.titulo{
font-size:14px;
}
.nota{
font-size:9px;
}
</style>
<!-- Save for Web Slices (mail0.psd) -->
<table id="Table_01" width="690" height="1290" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_01.jpg" width="34" height="124" alt=""></td>
		<td colspan="2">
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_02.jpg" width="619" height="124" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_03.jpg" width="37" height="124" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_04.jpg" width="34" height="83" alt=""></td>
		<td colspan="2" width="619" height="83" class="titulo">
		En Asamblea Virtual evolucionamos continuamente, por ello creemos conveniente comunicarte en qué estamos trabajando y qué necesitamos para conseguir nuestros objetivos.<br>
Recuerda que cada individuo es tan importante como cualquier otro, y el conjunto de la Asamblea solo podrá conseguir sus metas si cada uno de nosotros actuamos para que eso ocurra.
		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_06.jpg" width="37" height="83" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_07.jpg" width="34" height="46" alt=""></td>
		<td colspan="2">
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_08.jpg" width="619" height="46" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_09.jpg" width="37" height="46" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_10.jpg" width="34" height="73" alt=""></td>
		<td>
			<a href="http://15m.virtualpol.com/foro/debates-internos/av-reloaded" target="_blank"><img src="http://www.virtualpol.com/img/mail/av1/images/mail0_11.jpg" width="94" height="73" alt=""></a></td>
		<td width="525" height="73">
			<strong>AV Reloaded.</strong> Estamos trabajando en la simplificación del funcionamiento en la Asamblea Virtual así como de sus protocolos, para agilizar los procesos y ser más eficientes.<br>
<a href="http://15m.virtualpol.com/foro/debates-internos/av-reloaded" target="_blank">http://15m.virtualpol.com/foro/debates-internos/av-reloaded</a>
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_13.jpg" width="37" height="73" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_14.jpg" width="34" height="70" alt=""></td>
		<td>
			<a href="http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion/" target="_blank"><img src="http://www.virtualpol.com/img/mail/av1/images/mail0_15.jpg" width="94" height="70" alt=""></a></td>
		<td width="525" height="70">
			<strong>Manual Interactivo</strong>, en funcionamiento. Hemos creado un manual interactivo(1) para facilitar el uso de la herramienta según los protocolos que tenemos establecidos actualmente.<br>
<a href="http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion/" target="_blank">http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion/</a>

			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_17.jpg" width="37" height="70" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_18.jpg" width="34" height="83" alt=""></td>
		<td>
			<a href="http://15m.virtualpol.com/foro/comunicados/inicio-del-proyecto-salvemos-rtve"><img src="http://www.virtualpol.com/img/mail/av1/images/mail0_19.jpg" width="94" height="83" alt=""></a></td>
		<td width="525" height="83">
			
<strong>Salvemos RTVE.</strong> Hemos iniciado el proyecto Salvemos RTVE y estamos redactando distintos comunicados para expresar nuestra queja respecto al uso partidista y manipulación de un medio público como es el de RTVE.<br>
<a href="http://15m.virtualpol.com/foro/comunicados/inicio-del-proyecto-salvemos-rtve">http://15m.virtualpol.com/foro/comunicados/inicio-del-proyecto-salvemos-rtve</a>
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_21.jpg" width="37" height="83" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_22.jpg" width="34" height="75" alt=""></td>
		<td>
			<a href="http://15m.virtualpol.com/foro/educacion/proyecto-la-revolucion-de-la-raiz/" target="_blank"><img src="http://www.virtualpol.com/img/mail/av1/images/mail0_23.jpg" width="94" height="75" alt=""></a></td>
		<td width="525" height="75">
	<strong>La Revolución de la Raíz.</strong> Hemos iniciado el proyecto La Revolución de la Raíz, con el que se pretende extraer información sobre uno de los sistemas de Educación más avanzados.<br>
<a href="http://15m.virtualpol.com/foro/educacion/proyecto-la-revolucion-de-la-raiz/" target="_blank">http://15m.virtualpol.com/foro/educacion/proyecto-la-revolucion-de-la-raiz/</a>
	
	</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_25.jpg" width="37" height="75" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_26.jpg" width="34" height="76" alt=""></td>
		<td>
			<a href="http://15m.virtualpol.com/foro/comunicados/coordinadora-25s" target="_blank"><img src="http://www.virtualpol.com/img/mail/av1/images/mail0_27.jpg" width="94" height="76" alt=""></a></td>
		<td  width="525" height="76">
		<strong>Coordinadora 25S.</strong> Apoyamos plenamente la petición de un proceso constituyente realizada por la Coordinadora 25S.<br>
<a href="http://15m.virtualpol.com/foro/comunicados/coordinadora-25s" target="_blank">http://15m.virtualpol.com/foro/comunicados/coordinadora-25s</a>

		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_29.jpg" width="37" height="76" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_30.jpg" width="34" height="92" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_31.jpg" width="94" height="92" alt=""></td>
		<td width="525" height="92">
		
		
Aprovechamos esta ocasión para dar nuestro más sentido apoyo al compañero Miguel Angel Quinteiro (maq en la Asamblea Virtual) que ha sido imputado tras su detención el 25S, por defender nuestros derechos.<br><br>

<span class="nota">(1)  De momento solo se puede visualizar en Chrome y Firefox. En Internet Explorer funcionará con la versión 10 que permite la tecnología CSS3</span>
		
		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_33.jpg" width="37" height="92" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_34.jpg" width="34" height="47" alt=""></td>
		<td colspan="2">
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_35.jpg" width="619" height="47" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_36.jpg" width="37" height="47" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_37.jpg" width="34" height="43" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_38.jpg" width="94" height="43" alt=""></td>
		<td width="525" height="43">
			
			Hacemos lo que está en nuestra mano, pero sin una mayor colaboración no podemos avanzar todo lo que quisiéramos, por eso pedimos una colaboración en los siguientes ámbitos:
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_40.jpg" width="37" height="43" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_41.jpg" width="34" height="88" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_42.jpg" width="94" height="88" alt=""></td>
		<td width="525" height="88">
		Necesitamos más candidatos a Coordinador. Sin suficientes Coordinadores la Asamblea ejecuta sus protocolos de forma mucho más lenta. Si queremos fluidez en la toma de decisiones necesitamos más colaboración en la gestión interna de la Asamblea. <br>
		Aquí ( <a href="http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion#/opcion3-2-1" target="_blank">http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion#/opcion3-2-1</a> ) tienes las instrucciones para ser Coordinador.
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_44.jpg" width="37" height="88" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_45.jpg" width="34" height="42" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_46.jpg" width="94" height="42" alt=""></td>
		<td width="525" height="42">
			Necesitamos Redactores y Correctores para poder agilizar la creación de comunicados y votaciones.
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_48.jpg" width="37" height="42" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_49.jpg" width="34" height="45" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_50.jpg" width="94" height="45" alt=""></td>
		<td width="525" height="45">
			Necesitamos Diseñadores para la creación de panfletos para las futuras manifestaciones y eventos.
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_52.jpg" width="37" height="45" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_53.jpg" width="34" height="57" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_54.jpg" width="94" height="57" alt=""></td>
		<td width="525" height="57">
		Necesitamos especialistas en redes sociales y "Community Managers" para colaborar en los distintos canales de comunicación (facebook, blog...). Para este cargo preguntad a algún usuario con cargo "Comunicador".
		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_56.jpg" width="37" height="57" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_57.jpg" width="34" height="30" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_58.jpg" width="94" height="30" alt=""></td>
		<td width="525" height="30">
		Necesitamos Abogados o del ámbito legal que nos puedan asesorar en momentos puntuales.
		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_60.jpg" width="37" height="30" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_61.jpg" width="34" height="51" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_62.jpg" width="94" height="51" alt=""></td>
		<td width="525" height="51">
		Para saber más acerca de cómo formar parte de estos cargos sigue estas instrucciones: <br>
		<a href="http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion#/opcion2-1-1" target="_blank">http://15m.virtualpol.com/doc/tutorial-coordinacion-interactivo/presentacion#/opcion2-1-1</a>
		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_64.jpg" width="37" height="51" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_65.jpg" width="34" height="67" alt=""></td>
		<td colspan="2"  width="619" height="67" class="titulo">
		Sabemos que no es fácil, pero Asamblea Virtual es solo un medio, lo que hagamos con este medio depende de nosotros como individuos. Para conseguir un cambio necesitamos empezar por nosotros mismos. Gracias por todo lo que estáis haciendo por cambiar nuestro futuro.


		</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_67.jpg" width="37" height="67" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_68.jpg" width="34" height="65" alt=""></td>
		<td colspan="2" width="619" height="65" class="aviso">
			Si no puedes ver correctamente este e-mail haz <a href="http://www.virtualpol.com/img/mail/av1/" target="_blank">click aquí</a>
			
			</td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_70.jpg" width="37" height="65" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_71.jpg" width="34" height="33" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_72.jpg" width="94" height="33" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_73.jpg" width="525" height="33" alt=""></td>
		<td>
			<img src="http://www.virtualpol.com/img/mail/av1/images/mail0_74.jpg" width="37" height="33" alt=""></td>
	</tr>
</table>';
		$txt_titulo = $r['nick'].', mensaje importante de Asamblea Virtual';

		enviar_email($r['ID'], $txt_titulo, $txt_email);
		$emails_enviados++;

		$txt .= $votar_num.' '.$r['nick'].'<br />';
	}
	evento_chat('<b>[#] Terminado el envio de emails</b> <span style="color:grey;">('.num($emails_enviados).' emails enviados, '.round(microtime(true)-TIME_START).' seg de proceso)</span>.');
}

$txt .= '<hr />'.$contador;
include('theme.php');
?>