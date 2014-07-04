<?php
session_start();
$_SESSION["pag"] = "plantilla.html";
?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>XXXV Feria Internacional de Barquisimeto</title>
</head>
<body>
<table width="650" height="585" border="0" align="center" background="Imagenes/fondo.gif">
  <tr>
    <td width="161" height="413" rowspan="3"></td>
    <td height="133" colspan="2">	</td>
  </tr>
  <tr>
    <td colspan="2"></td>
  </tr>
  <tr>
    <td height="276" colspan="2">
		<img src="Imagenes/letras.gif">
		<br>
		<br>
	  <div align="center" style="width:200px; margin-left:100px">
		<form method="post" action="sesion.php">
			<font size="2" face="Arial, Helvetica, sans-serif"><strong>Nombre de Usuario:</strong></font><br>
			<input type="text" name="usuario"><br><br>
			<font size="2" face="Arial, Helvetica, sans-serif"><strong>Contrase&ntilde;a:</strong></font><br>
			<input type="password" name="password"><br><br>
			<input type="submit" name="enviar" value="Aceptar">
	  </form>
	  </div>
	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="279"><div align="right"><img src="Imagenes/logos.gif"></div></td>
    <td width="196"><div align="center"><img src="Imagenes/fabiolaI.gif"></div></td>
  </tr>
</table>
</body>
</html>
