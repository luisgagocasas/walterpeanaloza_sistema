<?php
class LagcConfig {
    //Datos del Sitio
    var $lagcmail = 'hola@luisgagocasas.com';
    var $lagcurl = 'https://luisgagocasas-luisgagocasas.c9.io/sistema/';

    //Mysql
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