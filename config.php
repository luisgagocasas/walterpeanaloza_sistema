<?php
$url = parse_url(getenv("CLEARDB_DATABASE_URL"));
echo $url["host"]." - ".$url["path"]." - ".$url["user"]." - ".$url["pass"];
?>