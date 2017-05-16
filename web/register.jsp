<%-- 
    Document   : register
    Created on : 21/04/2017, 09:20:58 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
function LetrasYNumeros(e) {
    var key = e.keyCode || e.which;
    var tecla = String.fromCharCode(key).toLowerCase();
    var letras = "0123456789abcdefghijklmnñopqrstuvwxyzA B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z";
    var especiales = [8, 37, 39, 46];

    var tecla_especial = false;
    for(var i in especiales) {
        if(key === especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) === -1 && !tecla_especial)
        return false;
}
</script>
        <title>Registro</title>
        <link rel="stylesheet" type="text/css" href="static/styleregister.css">
    </head>
    <body>
        <img src="img/Logo/akbar.png" alt="logo" width="150" height="100" style="margin: 10px 0px 0px 10px"/>
        <div class="encabezado">
            <h1>Crea una cuenta</h1>
            <h2>Y unete a Allahu Akbar</h2>
        </div>
        <div class="registro">
            <form action="Registro" method="POST">
                <label>Nombre de Usuario</label>
                <input type="text" name="txt-user" value="" onkeypress="return LetrasYNumeros(event)" onpaste="alert('No puedes pegar');return false"/>
                <label>Contraseña</label>
                <input type="password" name="txt-password" value="" onkeypress="return LetrasYNumeros(event)" onkeypress="return soloLetras(event)" onpaste="alert('No puedes pegar');return false"/>
                <br/>
                <input type="submit" class="cuenta" value="Crear cuenta"/>
            </form>
        </div>
    </body>
</html>
