<?php
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));
echo $url["host"]." - ".$url["path"]." - ".$url["user"]." - ".$url["pass"];
class LagcConfig {
    //Datos del Sitio
    var $lagcmail = 'hola@luisgagocasas.com';
    var $lagcurl = 'http://matriculas.herokuapp.com/';

    //Mysql
    var $lagclocal = $url["host"];
    var $lagcbd = substr($url["path"], 1);
    var $lagcuser = $url["user"];
    var $lagcpass = $url["pass"];

    //Sitio
    var $lagccompopri = '2';

    //Plantillas
    var $lagctemplsite = 'default';
}
$config = new LagcConfig();
$con = mysql_connect($config->lagclocal,$config->lagcuser,$config->lagcpass);
mysql_select_db($config->lagcbd,$con) or die("<center>No hay conexion.</center>");
mysql_set_charset('utf8');
$respconfig = mysql_query("select * from configuracion"); $bdconfig = mysql_fetch_array($respconfig);
?>