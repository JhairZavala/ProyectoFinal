<%-- 
    Document   : login
    Created on : 21/04/2017, 02:51:34 PM
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
      <title>Allahu Akbar</title>
      <link rel="stylesheet" type="text/css" href="static/stylelogin.css">
  </head>
  <body>
      <form action="Login" method="POST">
        <div align="center"><a href="login.jsp"><img src="img/Logo/Allahu.png" alt="Logo" width="450" height="100" style=" margin: 10px"></a></div>
        
        <div class="encabezado">
            <h1>¡Bienvenido a nuestra pagina!</h1>
            <h2>Inicia sesion para poder disfrutar de Allahu Akbar</h2>
        </div>
        <div class="menu_logo">
            <label>Nombre de Usuario</label>
            <input type="text" name="txt-nombre" value="" size="35"onkeypress="return LetrasYNumeros(event)" onkeypress="return soloLetras(event)" onpaste="alert('No puedes pegar');return false"/>
            <br/>
            <label>Contraseña</label>
            <input type="password" name="txt-password" value="" size="35"onkeypress="return LetrasYNumeros(event)" onkeypress="return soloLetras(event)" onpaste="alert('No puedes pegar');return false"/>
            <br/>
            <br/>
            <input type="submit" class="sesion" value="Iniciar Sesion">
            <a href="register.jsp"><input type="button" class="registro" value="Registrarse"></a>
        </div>
    </form>
  </body>
</html>
