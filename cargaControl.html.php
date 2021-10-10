<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Datos</title>
  <link rel="stylesheet" type="text/css" href="estilo.css">
  <script src="autocompleta.js"></script>
</head>
<body>
  

<div class="formulario">
    <fieldset>
      <legend>Control</legend>
<form action="" autocomplete="off" method="post">


 <label for="dName">Buscar caso:</label><br>
  <input type="text" name="Nombre" id="dName"><br><br>
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
    <p>
<?php
$caso = [];
  foreach ($casos as $caso) {
    if (isset($_POST['idPersona'])  && $caso['idPersona']==$_POST['idPersona']) {
     echo $caso['Nombre'] . ' ' . $caso['Apellido'] .' ' .  $caso['Sexo'] .' ' .  $caso['areaoperativa'] .' ' .$caso['años'] .'A ' . $caso['meses'] .'M ' . $caso['dias'] .'D ' .
  ' ' . $caso['Peso'].' ' . $caso['Talla'].' ' . $caso['ZPE'].' ' . $caso['ZTE'].' ' . $caso['ZIMC'].'<br> ' 
 ;
    }
   }
?>

</p>
</div>

<!--

<div>
      
        
      <table >
        
        <tbody>
  <thead>
  <tr>
    <th>Fecha control</th>
    <th>Edad</th>
   
    <th>Peso</th>
   
    <th>Talla</th>
    <th>Z Peso/Edad</th>
    <th>Z Peso/edad</th>
    <th>Z Talla/edad</th>
    <th>Z IMC/edad</th>
  </tr>
  </thead>
  <tbody>
  <?php  $caso = [];
   
    if (isset($_POST['idPersona'])  && $caso['idPersona']==$_POST['idPersona']); ?>

  <?php foreach ($casos as $caso): ?>

  
  <tr>
    <td><?= htmlspecialchars($caso['FechaControl'], ENT_QUOTES, 'UTF-8'); ?></td>
    <td><?= htmlspecialchars($caso['años'] .'A ' . $caso['meses'] .'M ' . $caso['dias'] .'D ' , ENT_QUOTES, 'UTF-8'); ?>
    <td align="center"><?= htmlspecialchars($caso['Peso'], ENT_QUOTES, 'UTF-8'); ?></td>
    <td><?= htmlspecialchars($caso['Talla'], ENT_QUOTES, 'UTF-8'); ?></td>
    <td><?= htmlspecialchars($caso['ZPE'], ENT_QUOTES, 'UTF-8'); ?></td>
    <td align="center"><?= htmlspecialchars($caso['ZTE'], ENT_QUOTES, 'UTF-8'); ?></td>
    <td align="center" ><?= htmlspecialchars($caso['ZIMC'], ENT_QUOTES, 'UTF-8'); ?></td>
    <td align="center"><?= htmlspecialchars($caso['ZIMCEdad'], ENT_QUOTES, 'UTF-8'); ?></td>
</tr>

  <?php endforeach; ?>

</table>
</div>

  -->




































<footer>
  <div>
<a href="index.html">Volver</a>
<br><br>
<a href="verlista.php">Ver</a>
</div>
</footer>

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


