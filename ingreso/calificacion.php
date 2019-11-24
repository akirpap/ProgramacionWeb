<!DOCTYPE html>
<html>
<head>
  
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel = "stylesheet" href="estilos2.css">  
    
     <h1>Danos tu opinion</h1>
    
     <h2> Nombre del restaurante</h2>    

     <select name="OS">
     <option value="1">Oishii resutoran</option> 
     <option value="2">Kashmiri Aloo Dum</option> 
     <option value="3">Nuestra Pizza</option>
     <option value="4">Tallarini</option> 
     <option value="5">Rapidisimos</option> 
     <option value="6">Badam Barfi</option> 
     <option value="7">La Changua de doña Esther</option> 
     <option value="8">Hamburguesas El Loko</option> 
     <option value="9">El Osobuco de Pedro</option> 
     <option value="10">El Bagre Elegante</option> 
     </select>
           
  <style>  
      .slidecontainer {
        width: 100%;
      }
          
      .sliderStylus {
        -webkit-appearance: none;
        width: 100%;
        height: 15px;
        border-radius: 5px;
        background: #FF69B4;
        outline: none;
        opacity: 0.7;
        -webkit-transition: .2s;
        transition: opacity .2s;
      }

      .sliderStylus:hover {
        opacity: 1;
      }

      .sliderStylus::-webkit-slider-thumb {
        -webkit-appearance: none;
        appearance: none;
        width: 25px;
        height: 25px;
        border-radius: 50%;
        background: #483D8B;
        cursor: pointer;
      }

      .sliderStylus::-moz-range-thumb {
        width: 25px;
        height: 25px;
        border-radius: 50%;
        background: #483D8B;
        cursor: pointer;
      }

  }
</style>

</head>
<body>
   
<?php    
    
  require('./promedio.php');
  $Datos = new Datos;
  $registrar = $Datos -> Crear_Calificacion();
    
?>   
    <form method="POST" action="calificacion.php">

<h2> Califica la atención</h2>    

<div class="slidecontainer" rel = "stylesheet"  href="estilos2.css">
  <input type="range" min="0" max="100" value="50" class="sliderStylus" id="rangoAtencion">
  <p>Valor: <span id="valorAtencion"></span></p>
</div>


<h2> Califica el lugar</h2>    

<div class="slidecontainer" rel = "stylesheet"  href="estilos2.css">
  <input type="range" min="0" max="100" value="50" class="sliderStylus" id="rangoLugar">
  <p>Valor: <span id="valorLugar"></span></p>
</div>


<h2> Califica la comida</h2>    

<div class="slidecontainer" rel = "stylesheet" href="estilos2.css">
  <input type="range" min="0" max="100" value="50" class="sliderStylus" id="rangoComida">
  <p>Valor: <span id="valorComida"></span></p>
</div>

<script>
  var sliderAtencion = document.getElementById("rangoAtencion");
  var outputAtencion = document.getElementById("valorAtencion");
  var sliderLugar = document.getElementById("rangoLugar");
  var outputLugar = document.getElementById("valorLugar");
  var sliderComida = document.getElementById("rangoComida");
  var outputComida = document.getElementById("valorComida");

  outputAtencion.innerHTML = sliderAtencion.value;
  outputLugar.innerHTML = sliderLugar.value;
  outputComida.innerHTML = sliderComida.value;

  sliderAtencion.oninput = function() {
      outputAtencion.innerHTML = this.value;
  }

  sliderLugar.oninput = function() {
    outputLugar.innerHTML = this.value;
  }    

  sliderComida.oninput = function() {
    outputComida.innerHTML = this.value;
  }

</script>
        
   <input type="submit" value="Enviar" name="registrar">
                      
 </form>
    
    <?php   
require('countbdd.php');   
echo $men;   
?> 
    
</body>
</html>