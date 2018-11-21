<%-- 
    Document   : agregararticulo
    Created on : Nov 20, 2018, 2:51:35 PM
    Author     : apolu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet" type="text/css" media="all"/>
        <title>Bienvenido administrador!</title>
    </head>
    <body>
        <div class="contenedor1">
            <h1 class="elh1">Bienvenido adminisrador!</h1>
        </div>
        <div class="contenedor2">
        <h4 class="elh4">En esta seccion podra elegir en agregar nuevos articulos a la tienda o revisar las estadisticas de la tienda de articulos. </h4>
        </div
        
        
        <div class="seciontabla1">
            <table class="tabla1">
                <tr>
                    <th></th>
                    <th></th>
                    </tr>
                </table>
        </div>
        <div class="añadir">
            <h2 class="elh3">Añadir un nuevo articulo</h2>
            <form action="añadir.jsp" method="post">
                <input type="text" value="Nombre del articulo" name="nombre" class="entrada1">
                  <input type="text" value="Stock disponible" name="stock" class="entrada2">
                  <input type="text" value="Descripcion del articulo" name="descripcion" class="entrada3">
                  <input type="text" value="Valor del articulo (sin punto, ni coma)" name="valor" class="entrada4">
                  <input type="text" value="Ingrese la ruta de la imagen (..//cart//images//image.jpg)" name="imagen" class="entrada5">
                  <input type="submit" onClick="alert('añadiendo')" value="Añadir" class="boton1">
              </form>
        </class>
        <!--<img src="../cart/images/ab.jpg"> -->
        <div class="estadistica">
            
            <iframe src="verestadisticaspago.jsp"  style="width: 500px; height: 500px;" class="eliframe" id="ven">
                    </iframe>
            <iframe src="verestadisticascompra.jsp"  style="width: 500px; height: 500px;" class="eliframe2" id="ven2">
                    </iframe>
            
            <input type="button" onclick="javascript:abrir()" value="ver el pago mas usado" class="boton2">
            <input type="button" onclick="javascript:cerrar(),cerrar2()" value="cerrar" class="boton22">
            <input type="button" onclick="javascript:abrir2()" value="ver el articulo mas comprado" class="boton3">
            
            
        </div>
        <p class="volv"><a href="../index.html" style="text-decoration: none;" class="volv"><--Volver</a></p>
        
        
        <script>
        function abrir(){

    document.getElementById("ven").style.display="block";
  }
  function cerrar(){
    document.getElementById("ven").style.display="none";
  }
  function abrir2(){
      document.getElementById("ven2").style.display="block";
  }
  function cerrar2(){
      document.getElementById("ven2").style.display="none";
  }
  </script>
    </body>
</html>
