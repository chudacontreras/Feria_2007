<?php

	include("ControlaBD.php");

	$con   = new ControlaBD();
	$idcon = $con->conectarSBD();
	$sel_bd= $con->select_BD("feria");
	
	$login    = $_POST["usuario"];
	$password = $_POST["password"];

	$result= $con->ejecutar("SELECT * FROM login WHERE usuario='$login' and clave='$password'",$idcon);
	$fila  = mysql_fetch_array($result);

	if ($fila){

			session_start();
			$_SESSION["login"]    = $login;
			$_SESSION["password"] = $password;
			$_SESSION["usuario"] = $fila["nombre"];
			$_SESSION["rif"] = $fila["rifemp"];
			$_SESSION["tusu"] = $fila["codtipo"];
			$_SESSION["valor"] = "true";
			Header ("location: plantilla.php"); 

	} else{
			include("index.php");
			echo "<h3 align=center> Login Incorrecto...!</h3>";
		}

?>
