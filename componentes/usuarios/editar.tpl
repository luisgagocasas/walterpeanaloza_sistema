<div class="tlcabecera">
    <a href="?lagc=usuarios" title="Lista de Usuarios" class="menucompo">
        <img src="plantillas/default/img/lista.png">Todos</a>
    <a href="?lagc=usuarios&id=3&ver=true" title="Lista de entradas" class="menucompo">
		<img src="plantillas/default/img/lista.png">Padres</a>
    <a href="?lagc=usuarios&id=2&ver=true" title="Lista de entradas" class="menucompo">
        <img src="plantillas/default/img/lista.png">Alumnos</a>
    <a href="?lagc=usuarios&id=1&ver=true" title="Lista de entradas" class="menucompo">
        <img src="plantillas/default/img/lista.png">Administradores</a>
</div>
<form method="post" action="" enctype="multipart/form-data" class="frm_validate">
    <input type="hidden" name="id" value="<?=$cont['id']; ?>" />
    <input type="hidden" name="fotohid" value="<?=$cont['imagen']; ?>" />
    <h2>Editando: <?=$cont['nombres']." ".$_POST['apellidop']." ".$_POST['apellidom']; ?></h2>
<br/>
    <div class="grid grid-pad">
        <div class="col-1-3">
            <center><u><h3>DATOS PERSONALES</h3></u></center>
            <div class="form_control">
                <label for="txtName">Nombres</label>
                <input type="text" name="nombres" id="txtName" required placeholder="Ingrese su Nombre" value="<?=$cont['nombres']; ?>">
            </div>
            <div class="form_control">
                <label for="txtLastName">Apellido Patterno</label>
                <input type="text" name="apellidop" id="txtLastName" required placeholder="Ingrese su apellido paterno" value="<?=$cont['apellidop']; ?>">
            </div>
            <div class="form_control">
                <label for="txtLastName">Apellido Materno</label>
                <input type="text" name="apellidom" id="txtLastName" required placeholder="Ingrese su apellido materno" value="<?=$cont['apellidom']; ?>">
            </div>
            <div class="form_control">
                <label for="txtEmail">Correo </label>
                <input type="email" name="email" id="txtEmail" placeholder="Ingrese su Correo Electrónico" value="<?=$cont['email']; ?>">
            </div>
            <div class="form_control">
                <label>Género</label>
                <div class="iopinline">
                    <label for="radGener1" class="ioption">
                        <input id="radGener1" name="radGener"<?=Usuarios::check($cont['genero'], "1"); ?> value="1" type="radio">Masculino
                    </label>
                    <label for="radGener2" class="ioption">
                        <input id="radGener2" name="radGener"<?=Usuarios::check($cont['genero'], "0"); ?> value="0" type="radio">Femenino
                    </label>
                </div>
            </div>
            <div class="form_control">
                <label for="txtDni">DNI</label>
                <input type="text" name="dni" id="txtDni" required placeholder="Ingrese su número de DNI" value="<?=$cont['dni']; ?>">
            </div>
            <div class="form_control">
                <label for="txtgsanguineo">G. Sanguíneo</label>
                <input type="text" name="gsanguineo" id="txtgsanguineo" placeholder="Ingrese su grupo Sanguineo" value="<?=$cont['gsanguineo']; ?>">
            </div>
            <div class="form_control">
                <label for="txtcel">Celular</label>
                <input type="tel" name="cel" id="txtcel" placeholder="Ingrese su celular" value="<?=$cont['celular']; ?>">
            </div>
            <div class="form_control">
                <label for="txtfcumple">Cumpleaños</label>
                <input type="date" name="cumpleanios" id="txtfcumple" value="<?=$cont['fechanacimiento']; ?>">
            </div>
        </div>
        <div class="col-1-3">
            <center><u><h3>UBICACIÓN</h3></u></center>
            <div class="form_control">
                <label for="distrito">Distrito</label>
                <center>
                    <select name="distrito" id="distrito" size="10" style="min-width: 50%;height: 200px;">
                        <?php
                        $resppc = mysql_query("select * from com_distrito where distrito_estado='1'");
                        while($datapc = mysql_fetch_array($resppc)) {
                            if ($datapc['distrito_id'] == $cont['distrito_id']){
                                echo "<option value=\"".$datapc['distrito_id']."\" selected=\"selected\">".$datapc['distrito_nombre']."</option>\n";
                            }
                            else {
                                echo "<option value=\"".$datapc['distrito_id']."\">".$datapc['distrito_nombre']."</option>\n";
                            }
                        }
                        ?>
                    </select>
                </center>
            </div>
            <div class="form_control">
                <label for="txtdireccion">Dirección</label>
                <textarea id="txtdireccion" name="direccion" type="textarea" placeholder="Ingrese su Dirección"><?=$cont['direccion']; ?></textarea>
            </div>
            <center><u><h3>Más Información</h3></u></center>
            <div class="form_control">
                <label for="txtproblemas">Problemas de Salud o Alergias</label>
                <textarea id="txtproblemas" name="problemas" type="textarea" placeholder="Problemas de Salud o Alergias"><?=$cont['problemas']; ?></textarea>
            </div>
            <div class="form_control">
                <label for="txtfoto">Foto</label>
                <?=LGlobal::foto_perfil($cont['id'], "fotoperfil"); ?>
                <div style="display: inline;margin: 5px 0px 0px 0px;">
                    <input type="file" name="archivo" id="txtfoto">
                </div>
            </div>
            <div class="form_control">
                <label for="txtMessage">Observación</label>
                <textarea id="txtMessage" name="comentario" type="textarea" placeholder="Escríbenos sus comentarios..."><?=$cont['comentario']; ?></textarea>
            </div>
        </div>
        <div class="col-1-3">
            <center><u><h3>USUARIO</h3></u></center>
            <div class="form_control">
                <label for="txtpermisos"><u>Permisos</u></label>
                <select name="nivel" id="txtpermisos">
                    <option value="1"<?=Usuarios::select("1", $cont['nivel']); ?>>Administrador</option>
                    <option value="2"<?=Usuarios::select("2", $cont['nivel']); ?>>Supervisor</option>
                    <option value="3"<?=Usuarios::select("3", $cont['nivel']); ?>>Padre</option>
                    <option value="4"<?=Usuarios::select("4", $cont['nivel']); ?>>Alumno</option>
                </select>
            </div>
            <blockquote>
                <div class="form_control" id="m1">
                    <label for="txtuser">Usuario</label>
                    <input type="text" name="usuario" id="txtuser" placeholder="Usuario"<?php if(!empty($cont['usuario'])){ echo " disabled readonly=\"readonly\""; } ?> value="<?=$cont['usuario']; ?>">
                </div>
                <div class="form_control" id="m2">
                    <label for="txtpass">Contraseña</label>
                    <input type="password" name="password" id="txtpass" placeholder="Contraseña">
                </div>
            </blockquote>
            <div class="form_control" id="codmodular">
                <label for="txtcodigo">CDO Modular</label>
                <input type="text" name="codigo" id="txtcodigo" placeholder="Ingrese el código" value="<?=$cont['codigo']; ?>">
            </div>
            <div class="form_control">
                <label class="ioption ck">
                    <input name="estado" type="checkbox" value="1"<?=Usuarios::check($cont['estado'], "1"); ?>>Activar Usuario
                </label>
            </div>
            <center>
                <div class="form_control">
                    <button type="submit" id="sbmSend" title="Enviar" class="btn">Guardar</button>
                </div>
            </center>
        </div>
    </div>
</form>