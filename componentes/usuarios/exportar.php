<?php
include "../../config.php"; include "../../funciones/function.globales.php"; include "class.contenidos.php";
$result = mysql_query("SHOW COLUMNS FROM usuarios");
$i = 0;
if (mysql_num_rows($result) > 0) {
	while ($row = mysql_fetch_assoc($result)) {
		$i++;
	}
}
$values = mysql_query("SELECT apellidop,apellidom,nombres,dni,codigo,direccion,fechanacimiento,email,celular,gsanguineo,genero,nivel FROM usuarios ORDER BY apellidop ASC");
while ($rowr = mysql_fetch_row($values)) {
	for ($j=0;$j<$i;$j++) {
		if($j=="10"){
			$salida_cvs .= Usuarios::binari_letter($rowr[$j]).", ";
		}
		else if($j=="11"){
			$salida_cvs .= Usuarios::que_tipo_es_ex($rowr[$j]).", ";
		}
		else {
			$salida_cvs .= $rowr[$j].", ";
		}
	}
	$salida_cvs .= "\n";
}

header("Content-type: application/vnd.ms-excel");
header("Content-disposition: csv".date("Y-m-d")."_".LGlobal::Url_Amigable($bdconfig['nombreapp']).".csv");
header("Content-disposition: filename=".date("Y-m-d")."_".LGlobal::Url_Amigable($bdconfig['nombreapp']).".csv");
print $salida_cvs;
exit;
?>