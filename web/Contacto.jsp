<%-- 
    Document   : Contacto
    Created on : 10/05/2017, 12:48:10 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Contacto</title>
        <link rel="stylesheet" href="static/Style.css" />
            <script>
function LetrasYNumeros(e) {
    var key = e.keyCode || e.which;
    var tecla = String.fromCharCode(key).toLowerCase();
    var letras = "@0123456789abcdefghijklmnñopqrstuvwxyzA B C D E F G H I J K L M N Ñ O P Q R S T U V W X Y Z";
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
	</head>
    <body>         
   	<div id="menu">
   	  		<ul id="hmenu"/>
             <a href="porfile.jsp"><img src="img/Logo/Allahu.png"/></a>
            	<li><a href="porfile.jsp">Inicio</a></li>
                <li><a href="#">Futbol</a>
                  <ul class="submenu">
                        <li><a href="Subcategorias/Futbol/Balones.jsp">Balones</a></li>
                        <li><a href="Subcategorias/Futbol/Espinilleras.jsp">Espinilleras</a></li>
                        <li><a href="Subcategorias/Futbol/Guantes.jsp">Guantes</a></li>
                        <li><a href="Subcategorias/Futbol/Medias.jsp">Medias</a></li>
                        <li><a href="Subcategorias/Futbol/Playeras.jsp">Playeras</a></li>
                        <li><a href="Subcategorias/Futbol/Shorts.jsp">Shorts</a></li>
                     </ul>
                 </li>
                 <li><a href="#">Basquetbol</a>
               	   <ul class="submenu">
                    	<li><a href="Subcategorias/Basquetbol/Balones.jsp">Balones</a></li>
                        <li><a href="Subcategorias/Basquetbol/Gorras.jsp">Gorras</a></li>
                        <li><a href="Subcategorias/Basquetbol/Jersey.jsp">Playeras</a></li>
                        <li><a href="Subcategorias/Basquetbol/Medias.jsp">Medias</a></li>
                        <li><a href="Subcategorias/Basquetbol/Shorts.jsp">Shorts</a></li>
                        <li><a href="Subcategorias/Basquetbol/Tenis.jsp">Calzado</a></li>
                        </ul>
     			 </li>
                        <li><a href="#">Tennis</a>
               	   <ul class="submenu">
                    	<li><a href="Subcategorias/Tennis/Bandas.jsp">Bandas</a></li>
                        <li><a href="Subcategorias/Tennis/Muñequeras.jsp">Muñequeras</a></li>
                        <li><a href="Subcategorias/Tennis/Pelota.jsp">Pelotas</a></li>
                        <li><a href="Subcategorias/Tennis/Raquetas.jsp">Raquetas</a></li>
                        </ul>
     			 </li>
                       <li><a href="#">Americano</a>
               	   <ul class="submenu">
                    	<li><a href="Subcategorias/Futbol Americano/Balon.jsp">Balones</a></li>
                        <li><a href="Subcategorias/Futbol Americano/Gorra.jsp">Gorras</a></li>
                        <li><a href="Subcategorias/Futbol Americano/Guantes.jsp">Guantes</a></li>
                               <li><a href="Subcategorias/Futbol Americano/Jersey.jsp">Playeras</a></li>
                        </ul>
     			 </li>
                        <li><a href="Contacto.jsp">Contacto</a></li>
                        </ul>
                        </ul>
            		</ul>
            </div> 
            <div class="sep">
            </div>  
            <div class="DIV_main">
        	<h1 class="H1_titulo">
            	Sugerencias o quejas 
            </h1> 
        	<div class="DIV_contenedorArticulos" align="center">
            	<div>
                    <div class="logo_contacto" align="center">
                        <center>
                        <img src="img/Logo/Allahu.png" width="60%";/>
                        <h2></h2>
                        <label class="detalles">
                       	    Deja un mensaje para mejorar la pagina.
                            <br />
                            <br />
                                 
			</label>
                        <form action="Contacto" method="POST">
                    <div class="comentario">
                        <br />
                        <br />
                        <label>Nombre</label> 
                        <input type="text" name="txt-user" value="" onkeypress="return LetrasYNumeros(event)"  onpaste="alert('No puedes pegar');return false"/>
                        <br />
                        <br />
                        <label>Telefono</label> 
                        <input type="text" name="txt-telefono" value="" onkeypress="return LetrasYNumeros(event)"  onpaste="alert('No puedes pegar');return false"/>
                        <br />
                        <br />
                        <label>Correo</label> 
                        <input type="text" name="txt-correo" value="" onkeypress="return LetrasYNumeros(event)" onpaste="alert('No puedes pegar');return false"/>
                        <h2>Sugerencias o quejas</h2>
                         <textarea  rows="6" cols="50" name="txt-sugerencia" value="" onkeypress="return LetrasYNumeros(event)" onpaste="alert('No puedes pegar');return false">
                        </textarea>
                        <br />
                        <br />
                        <input class="boton" type="submit" value="Enviar"/>
                    </div>
                    </form>
                    </div>
                    <br />
                    <br />
                </div>
            </div>
        </div>
       </div>    
       </center>
</body>
<div class="contacto">
         <footer>
         <div class="DIV_footer" align="center">
         <br /><label>| Contactanos | Facebook: Allahu Akbar | Twitter: @AllahuAkbar | <a href="Logout"><label>Cerrar Sesion</label></a> | </label>
         </div>
          </footer>
     </div>
</html>

