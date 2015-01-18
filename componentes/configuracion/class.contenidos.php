<?php
class Configuracion{
	function inicio(){ ?>
		<div class="tlcabecera">
			<a href="?lagc=configuracion" title="Configuración del sitio" class="menucompo">
				<img src="plantillas/default/img/lista.png"><b>Configuración</b></a>
		</div>
		<?php
		$respconfig = mysql_query("select * from configuracion"); $config = mysql_fetch_array($respconfig);
		if (!isset($_POST['nombreapp'])) { ?>
			<form action="" enctype="multipart/form-data" method="post" class="frm_validate">
				<div class="grid grid-pad">
					<div class="col-1-2">
						<div class="form_control">
							<label for="nombre">Nombre de la APP</label>
							<input type="text" name="nombreapp" id="nombre" required placeholder="Ingrese el nombre" value="<?=$config['nombreapp']; ?>">
						</div>
						<div class="form_control">
							<label for="correo">Correo</label>
							<input type="email" name="correo" id="correo" required placeholder="Ingrese el correo" value="<?=$config['correo']; ?>">
						</div>
						<div class="form_control">
							<label for="direccion">Dirección</label>
							<input type="text" name="direccion" id="direccion" placeholder="Ingrese la dirección" value="<?=$config['direccion']; ?>">
						</div>
						<div class="form_control">
							<label for="telefono">Telefonos</label>
							<input type="text" name="telefono" id="telefono" placeholder="Ingrese el telefono" value="<?=$config['telefono']; ?>">
						</div>
						<div class="form_control">
							<label for="ruc">Ruc</label>
							<input type="text" name="ruc" id="ruc" placeholder="Ingrese el ruc" value="<?=$config['ruc']; ?>">
						</div>
						<div class="form_control">
				            <center>
				                <button type="submit" id="sbmSend" title="Enviar" style="margin: 30px 0px 0px 0px" class="btn">Guardar</button>
				            </center>
			        	</div>
					</div>
					<div class="col-1-2">
			        </div>
				</div>
			</form>
		<?php
		}
		else{
			$config = new LagcConfig(); //Conexion
			$con = mysql_connect($config->lagclocal,$config->lagcuser,$config->lagcpass);
			mysql_select_db($config->lagcbd,$con);
			$sql = "UPDATE configuracion SET nombreapp='".$_POST['nombreapp']."', correo='".$_POST['correo']."', direccion='".$_POST['direccion']."', telefono='".$_POST['telefono']."', ruc='".$_POST['ruc']."'";
			$Query = mysql_query ($sql, $con) or die ("Error: <b>" . mysql_error() . "</b>");
			mysql_close($con);
			echo "<script type=\"text/javascript\"> setTimeout(\"window.top.location='?lagc=configuracion'\", 1500) </script><br/><br/><center><h4>Se guardo correctamente.</h4></center>";
		}
	}
}
?>