<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Datos</title>
  <link rel="stylesheet" type="text/css" href="estilo.css">
  <script src="autocompleta.js"></script>
</head>
<body>
  

<div>
    <fieldset>
      <legend>Control</legend>
<form action="" autocomplete="off" method="post">


 <label for="dName">Buscar caso:</label><br>
  <input type="text" name="Apellido" id="dName"><br><br>
 <input type="hidden"name="idPersona" id="dTel" value="idPersona"><br><br>
  <label for="FechaControl">Fecha de control:</label><br>
  <input type="date" id="FechaControl" name="FechaControl" value=""><br><br>
  <label for="Peso">Peso</label><br>
 <input type="number" step="0.01" id="Peso" name="Peso" value=""><br><br>
 <label for="Peso">Talla</label><br>
 <input type="number" step="0.01" id="Talla" name="Talla" value=""><br><br>
 <label for="Observaciones">Observaciones:</label><br>
<textarea id="Observaciones" name="Observaciones" rows="3" cols="40">
</textarea>


<input type="submit" value="Cargar">

</form> 

</fieldset>
</div>



<div>
<a href="index.html">Volver</a>
<br><br>
<a href="verlista.php">Ver</a>
</div>

<script>
    // (C) ATTACH AUTOCOMPLETE TO INPUT FIELDS
    window.addEventListener("DOMContentLoaded", function(){
          
      ac.attach({
        target: "dName",
        data: "search.php",
        
        // OPTIONAL
        delay : 500,
        min : 3
      });
    });
    </script>







</body>
</html>


