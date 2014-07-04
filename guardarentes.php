<?php
session_start();
if (array_key_exists('login',$_SESSION)){
	include("ControlaBD.php");
	

/*INICIO: FUNCION QUE GENERA CONTRASEÑA DE USUARIO*/
function GeneradorClavesFaciles($longitud) {

$key=""; // la clave que se generará

$vocales='aeiou'; 
$numero_de_vocales=strlen($vocales);
$consonantes='bcdfgjklmnpqrstwxyz'; 
$numero_de_consonantes=strlen($consonantes);

while ($longitud>0) {
// Con is_int averiguamos si es un ´numero entero, par o impar y lanzamos una vocal o consonante
	if (!is_int($longitud/2)) { 
	   $key=$key.substr($consonantes,rand(0,$numero_de_consonantes-1),1);
	  }else { 
		$key=$key.substr($vocales,rand(0,$numero_de_vocales-1),1);
	  }
	$longitud=$longitud-1;
}

return $key;
} 
/*FIN: FUNCION QUE GENERA CONTRASEÑA DE USUARIO*/

    
?>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="text.css" type="text/css">
</head>

<body bgcolor="#CCCCCC" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td colspan="2"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="D00C0C">
        <tr bgcolor="#FF6600"> 
          <td bgcolor="#FFFFFF"><? include("cintillo.html"); ?></td>
        </tr>
      </table>	</td>
  </tr>
  <tr> 
  <tr>
    <td height="3" colspan="2" bgcolor="#000000"><img src="images/spacer.gif" width="1" height="3"></td>
  </tr>
  <tr> 
	<td colspan="2">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="75%" height="19" align="left" bgcolor="#FF6600">
				<font color="#FFFFFF" size="1" face="Verdana, Arial, Helvetica, sans-serif">
				&nbsp;&nbsp;<strong>Bienvenido Sr(a) <? echo $_SESSION["usuario"] ?></strong>
				</font>	
			</td>
			<td width="25%" align="right" bgcolor="#FF6600">
				<font color="#FFFFFF" size="1" face="Verdana, Arial, Helvetica, sans-serif">
				<? echo date("d / m / Y"); ?>&nbsp;&nbsp;
				</font>
			</td>		
		</tr>	
		</table>
	</td>
  </tr>  
  <tr>
  <td height="600px" width="206" bgcolor="#E5E5E5">
 	<? include("menu.php"); ?>
  </td>
  <td height="600px" bgcolor="#DADADA">
  <div class="tabConte" id="tabConte">
  
<?php

	 include("util.php"); // INCLUDE PARA LLAMAR A UNA PAGINA
	$con   = new ControlaBD();
	$idcon = $con->conectarSBD();
	$sel_bd= $con->select_BD("feria");
	
	    $numero= $_GET["Num"];
	    $nombre = $_GET["Nom"];
	    $telef = $_GET["Telf"];
	    $naci = $_GET["Nac"];
		$cedu = $_GET["Ced"];
		$cate=$_GET["Cate"];
		$comi=$_GET["Comi"];
		$tipoacr = $_GET["tipoac"];
	    $usua = $_GET["Usu"];
		$dato=$naci.$cedu;

	/*INICIO: VALIDAR VALOR ACREDITACIONES*/
		$contador=0;
		$totalregis=0;
		$resulcate= $con->ejecutar("SELECT codtacr,codcateg FROM tipacr WHERE codcateg='".$_GET["Cate"]."'",$idcon);
		    //RECORRE Y CUENTA PARA VALIDAR
		while ($fila = mysql_fetch_array($resulcate)) {
		 
		  $totalregis=$totalregis+$tipoacr[$contador];
	      $contador=$contador+1;
		}
		if ($totalregis==0){
		    js_redireccion("error.php?msn=Debe Registrar cantidad de Acreditaciones");
		  exit;
		}
	/*FIN: VALIDAR VALOR ACREDITACIONES */
		
	$result= $con->ejecutar("SELECT * FROM empresa WHERE rif='$dato' and nombre='$comi'",$idcon);
	$num_rows=mysql_num_rows($result);
	
	if ($num_rows==1){
	echo '<div align="center">
      <strong>
	    <font face="Arial, Helvetica, sans-serif">
		   <span>
		     <font size="4">
			   <font color="#FF6600">
		          <br>La Comisión ya Existe....
		          <br>
			   </font>
			 </font>
		</span>
		</font>
	</strong>
  </div>';
	}else
    {
		
     $strempresa = "INSERT INTO empresa (rif,nombre,telf,replegal,cedrepre,categoria) VALUES('$dato','$comi','$telef','$nombre','$dato',$cate)";
	 $resultempre = $con->ejecutar($strempresa,$idcon);
     $fecha=date("Y-m-d", mktime(0, 0, 0, date("m") , date("d"), date("Y")));

	 $strcontrato = "INSERT INTO contrato (rif,numero,fecha,totalacred) VALUES('$dato','$numero','$fecha','$totalregis')";
	 $resultcontra = $con->ejecutar($strcontrato,$idcon);
    
		/*INICIO:GENERA CLAVE DE USUARIO*/
		$Usuempresa=$usua;
		$buscar= $con->ejecutar("SELECT rifemp,clave FROM login WHERE usuario='$Usuempresa'",$idcon);
		$num_buscar=mysql_num_rows($buscar);
		$row_buscar=mysql_fetch_array($buscar);
		
		if ($num_buscar==0){
		   $Claempresa=GeneradorClavesFaciles(8);
		   $strsql = "INSERT INTO login (usuario,clave,codtipo,nombre,rifemp) VALUES('$Usuempresa','$Claempresa','10','".$_GET['Comi']."','$dato')";
		   $resultbusq = $con->ejecutar($strsql,$idcon);
		 }else{
			$Claempresa=$row_buscar[clave];
		 }
	
	    /*FIN: GENERA CLAVE DE USUARIO*/
		
			/*INICIO: MODULO DE GUARDAR NUMERO DE ACREDITACIONES (TIPO ACRED.) */
		$contador=0;
		  	$resulcate2= $con->ejecutar("SELECT codtacr,codcateg FROM tipacr WHERE codcateg='".$_GET["Cate"]."'",$idcon);
			//RECORRE PARA INSERTAR LOS DISTINTOS DE 0
			while ($fila2 = mysql_fetch_array($resulcate2)) {
			   if ($tipoacr[$contador]!=0 || $tipoacr[$contador]!="" ){
			      $resulCanti= $con->ejecutar("SELECT * FROM cantacredita",$idcon);
			 	  $cantidad = mysql_num_rows($resulCanti);
				  $nume=$cantidad+1;
			      $stracre = "INSERT INTO cantacredita VALUES('$nume','$numero','$fila2[codtacr]','$tipoacr[$contador]','$cate')";
				  $resulacre = $con->ejecutar($stracre,$idcon);
				 }
			   $contador=$contador+1;
		
			}
		
      /*FIN: MODULO DE GUARDAR NUMERO DE ACREDITACIONES (TIPO ACRED.) */
	
	
	   
		if (!$resultbusq) {
			die('Error al Insertar:'. mysql_error());
		}else{
			echo '<div align="center">
				  <strong>
					<font face="Arial, Helvetica, sans-serif">
					   <span>
						 <font size="4">
						   <font color="#FF6600">
							  <br>Registro Exitoso....
							  <br>
						   </font>
						 </font>
					</span>
					</font>
				</strong>
			  </div>';
	   }
	     echo "<FORM METHOD='GET' action='cartaentes.php' name='formato'>
            <table align='center'>
		     <tr>
		      <td>
			  <input type=hidden name='Nom' id='Nom' value='".$_GET["Comi"]."'>
			  
	

  		      <input type=hidden name='Usu' id='Usu' value='$Usuempresa'>
			  <input type=hidden name='Cla' id='Cla' value='$Claempresa'>
			  <input type=hidden name='Toacre' id='Toacre' value='$totalregis'>
			  <input type=hidden name='Cate' id='Cate' value='".$_GET["Cate"]."'>

			  <input type=hidden name='Num' id='Num' value='".$_GET["Num"]."'>
              <input name=button type=submit value='Ver Carta'>
					
		      </td>
			 
		         </tr>
		   </table>		   
		   
	   </form>";
}		  //<input type=hidden name='Rif' id='Rif' value='$dato'>
	//		  <input type=hidden name='tipoac' id='tipoac' value='".$_GET["tipoac"]."'>
?>
  
  
  </div>
  </td>
  </tr>
  
  
  <tr> 
    <td height="19" colspan="2" align="center" bgcolor="#FF6600"><font color="#FFFFFF" size="1" face="Verdana, Arial, Helvetica, sans-serif">&copy;2007 
    Alcald&iacute;a de Iribarren<br>Desarrollado por la Oficina de Inform&aacute;tica </font></td>
  </tr>
  <tr>
    <td height="3" colspan="2" bgcolor="#000000"><img src="images/spacer.gif" width="1" height="3"></td>
  </tr>
</table>
</body>
</html>
<?php
 }else
{
    Header ("location: index.php"); 
}
?>
