<?php
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));
echo $url["host"]." - ".substr($url["path"], 1)." - ".$url["user"]." - ".$url["pass"];
$db = substr($url["path"], 1);
// class LagcConfig {
//     //Datos del Sitio
//     var $lagcmail = 'hola@luisgagocasas.com';
//     var $lagcurl = 'http://matriculas.herokuapp.com/';

//     //Mysql
//     var $lagclocal = $url["host"];
//     var $lagcbd = substr($url["path"], 1);
//     var $lagcuser = $url["user"];
//     var $lagcpass = $url["pass"];

//     //Sitio
//     var $lagccompopri = '2';

//     //Plantillas
//     var $lagctemplsite = 'default';
// }
//$config = new LagcConfig();
$con = mysql_connect($url["host"],$url["user"],$url["pass"]);
mysql_select_db($db,$con) or die("<center>No hay conexion.</center>");
mysql_set_charset('utf8');
//$respconfig = mysql_query("select * from configuracion"); $bdconfig = mysql_fetch_array($respconfig);

$cons = mysql_connect("us-cdbr-iron-east-01.cleardb.net","heroku_aafdb04701966cf","bfccb2af599d42");
mysql_select_db("82073233",$cons) or die("<center>No hay conexion.</center>");
?>