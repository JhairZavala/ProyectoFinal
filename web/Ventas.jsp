<%-- 
    Document   : Ventas
    Created on : 10/05/2017, 04:39:17 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="static/Ventas.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script>
		function cotizar()
		{
			switch(parseInt(document.getElementById("OPT_articulo").value))
			{
				case 0:
					document.getElementById("TXT_Subtotal").innerHTML=300*document.getElementById("Cantidad").value;
				break;
				case 1:
					document.getElementById("TXT_Subtotal").innerHTML=350*document.getElementById("Cantidad").value;	
				break;
				case 2:
					document.getElementById("TXT_Subtotal").innerHTML=100*document.getElementById("Cantidad").value;
				break;
				case 3:
				    document.getElementById("TXT_Subtotal").innerHTML=120*document.getElementById("Cantidad").value;
				break;
				case 4: 
				    document.getElementById("TXT_Subtotal").innerHTML=1000*document.getElementById("Cantidad").value;
				break;
				case 5:
				    document.getElementById("TXT_Subtotal").innerHTML=1100*document.getElementById("Cantidad").value;
				break;
				case 6:
				    document.getElementById("TXT_Subtotal").innerHTML=450*document.getElementById("Cantidad").value;
				break;
				case 7: 
				    document.getElementById("TXT_Subtotal").innerHTML=500*document.getElementById("Cantidad").value;
				break;
				case 8: 
				    document.getElementById("TXT_Subtotal").innerHTML=400*document.getElementById("Cantidad").value;
				break;
				case 9: 
				    document.getElementById("TXT_Subtotal").innerHTML=399*document.getElementById("Cantidad").value;
				break;
				case 10: 
				    document.getElementById("TXT_Subtotal").innerHTML=150*document.getElementById("Cantidad").value;
				break;
                                case 11 
				    document.getElementById("TXT_Subtotal").innerHTML=100*document.getElementById("Cantidad").value;
				break;
                                case 12: 
				    document.getElementById("TXT_Subtotal").innerHTML=100*document.getElementById("Cantidad").value;
				break;
                                case 13: 
				    document.getElementById("TXT_Subtotal").innerHTML=100*document.getElementById("Cantidad").value;
				break;
			}		
		}
	</script>
<title>Futbol</title>
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
  <div class="DIV_titulo">
      <h1 class="H1_titulo">
      Futbol
      </h1>
   </div>
    <form id="Formulario" method="POST">
          <fieldset>
			<div class="DIV_venta">
                    <label>Sucursal</label>
                     <select>
                        <option>Monterrey</option>
                        <option>San Pedro</option>
                        <option>Escobedo</option>
                        <option>Guadalupe</option>
                        <option>San Nicolas</option>
                     </select>
                    <label>Articulo</label>
                    <select id="OPT_articulo" name="OPT_articulo" onchange="cotizar();">
                        <option value="0">Short Portero blanco 300$</option>
                        <option value="1">Short Portero rojo 350$</option>
                        <option value="2">Medias adidas negras 100$</option>
                        <option value="3">Medias adidas amarillas 120$</option>
                        <option value="4">Playera de Portero morada 1000$</option>
                        <option value="5">Playera de Portero roja 1100$</option>
                        <option value="6">Guantes adidas 450$</option>
                        <option value="7">Guantes adidas 500$</option>
                        <option value="8">Guantes adidas 400$</option>
                        <option value="9">Balon nike 399$</option>
                        <option value="10">Balon Start 150$</option>
                        <option value="11">Espinilleras nike negras 100$</option>
                        <option value="12">Espinilleras nike azul 100$</option>
                        <option value="13">Espinilleras nike rojas 100$</option>
                    </select>
           	 	<label>Cantidad</label>
                <input type="number" min="1" max="10" id="Cantidad" onchange="cotizar();"/>
                <label>Total a pagar:</label><br />
                <span id="TXT_Subtotal"></span>
                <br /><br />
                <a href="Compra.jsp"><input type="button" class= "compra" value="Comprar"/></a>
           </fieldset>
        </form>
    </div>
</div>
</body>
<div class="contacto">
         <footer>
         <div class="DIV_footer" align="center">
         <br /><label>| Contactanos | Facebook: Allahu Akbar | Twitter: @AllahuAkbar | <a href="Logout"><label>Cerrar Sesion</label></a> | </label>
         </div>
          </footer>
     </div>
</html>

