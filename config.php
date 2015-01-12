<?php
class LagcConfig {
    //Datos del Sitio
    var $lagcmail = 'hola@luisgagocasas.com';
    // var $lagcurl = 'https://matriculas.herokuapp.com/';

    //Mysql
    // var $lagclocal = 'us-cdbr-iron-east-01.cleardb.net';
    // var $lagcbd = 'heroku_aafdb04701966cf';
    // var $lagcuser = 'bfccb2af599d42';
    // var $lagcpass = '82073233';

    var $lagcurl = 'https://luisgagocasas-luisgagocasas.c9.io/sistema/';

    var $lagclocal = '127.0.0.1';
    var $lagcbd = 'sistema';
    var $lagcuser = 'luisgagocasas';
    var $lagcpass = '';

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