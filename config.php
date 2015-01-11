<?php
// $cons = mysql_connect("us-cdbr-iron-east-01.cleardb.net","bfccb2af599d42","82073233");
// mysql_select_db("heroku_aafdb04701966cf",$cons) or die("<center>No hay conexion 2.</center>");
class LagcConfig {
    //Datos del Sitio
    var $lagcmail = 'hola@luisgagocasas.com';
    var $lagcurl = 'http://matriculas.herokuapp.com/';

    //Mysql
    var $lagclocal = 'us-cdbr-iron-east-01.cleardb.net';
    var $lagcbd = 'heroku_aafdb04701966cf';
    var $lagcuser = 'bfccb2af599d42';
    var $lagcpass = '82073233';

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