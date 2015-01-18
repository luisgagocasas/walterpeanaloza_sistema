<form method="post" enctype="multipart/form-data" class="frm_validate">
    <h2>Nuevo Usuario</h2>
    <div class="grid grid-pad">
        <div class="col-1-3">
            <center><u><h3>DATOS PERSONALES</h3></u></center>
            <div class="form_control">
                <label for="txtName">Nombres</label>
                <input type="text" name="nombres" id="txtName" required placeholder="Ingrese su Nombre">
            </div>
            <div class="form_control">
                <label for="txtLastName">Apellido Patterno</label>
                <input type="text" name="apellidop" id="txtLastName" required placeholder="Ingrese su apellido paterno">
            </div>
            <div class="form_control">
                <label for="txtLastName">Apellido Materno</label>
                <input type="text" name="apellidom" id="txtLastName" required placeholder="Ingrese su apellido materno">
            </div>
            <div class="form_control">
                <label for="txtEmail">Correo </label>
                <input type="email" name="email" id="txtEmail" placeholder="Ingrese su Correo Electrónico">
            </div>
            <div class="form_control">
                <label>Género</label>
                <div class="iopinline">
                    <label for="radGener1" class="ioption"><input id="radGener1" name="radGener" value="1" type="radio">Masculino</label>
                    <label for="radGener2" class="ioption"><input id="radGener2" name="radGener" value="0" type="radio">Femenino</label>
                </div>
            </div>
            <div class="form_control">
                <label for="txtDni">DNI</label>
                <input type="text" name="dni" id="txtDni" required placeholder="Ingrese su número de DNI">
            </div>
            <div class="form_control">
                <label for="txtgsanguineo">G. Sanguíneo</label>
                <input type="text" name="gsanguineo" id="txtgsanguineo" placeholder="Ingrese su grupo Sanguineo">
            </div>
            <div class="form_control">
                <label for="txtcel">Celular</label>
                <input type="tel" name="cel" id="txtcel" placeholder="Ingrese su celular">
            </div>
            <div class="form_control">
                <label for="txtfcumple">Cumpleaños</label>
                <input type="date" name="cumpleanios" id="txtfcumple">
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
                        echo "<option value=\"".$datapc['distrito_id']."\">".$datapc['distrito_nombre']."</option>\n";
                    }
                    ?>
                    </select>
                </center>
            </div>
            <div class="form_control">
                <label for="txtdireccion">Dirección</label>
                <textarea id="txtdireccion" name="direccion" type="textarea" placeholder="Ingrese su Dirección"></textarea>
            </div>
            <center><u><h3>Más Información</h3></u></center>
            <div class="form_control">
                <label for="txtproblemas">Problemas de Salud o Alergias</label>
                <textarea id="txtproblemas" name="problemas" type="textarea" placeholder="Problemas de Salud o Alergias"></textarea>
            </div>
            <div class="form_control">
                <label for="txtfoto">Foto</label>
                <div style="display: inline;margin: 5px 0px 0px 0px;">
                    <input type="file" name="archivo" id="txtfoto">
                </div>
            </div>
            <div class="form_control">
                <label for="txtMessage">Observación</label>
                <textarea id="txtMessage" name="comentario" type="textarea" placeholder="Escríbenos sus comentarios..."></textarea>
            </div>
        </div>
        <div class="col-1-3">
            <center><u><h3>USUARIO</h3></u></center>
            <div class="form_control">
                <label for="txtpermisos"><u>Permisos</u></label>
                <select name="nivel" id="txtpermisos">
                    <option value="1">Administrador</option>
                    <option value="2">Supervisor</option>
                    <option value="3">Padre</option>
                    <option value="4">Alumno</option>
                </select>
            </div>
            <blockquote>
                <div class="form_control" id="m1">
                    <label for="txtuser">Usuario</label>
                    <input type="text" name="usuario" id="txtuser" placeholder="Usuario">
                </div>
                <div class="form_control" id="m2">
                    <label for="txtpass">Contraseña</label>
                    <input type="password" name="password" id="txtpass" placeholder="Contraseña">
                </div>
            </blockquote>
            <div class="form_control" id="codmodular">
                <label for="txtcodigo">CDO Modular</label>
                <input type="text" name="codigo" id="txtcodigo" placeholder="Ingrese el código">
            </div>
            <div class="form_control">
                <label class="ioption ck">
                    <input name="estado" type="checkbox" value="1">Activar Usuario
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