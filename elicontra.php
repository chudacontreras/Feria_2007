<?php
session_start();
if (array_key_exists('login',$_SESSION)){
  include("util.php");
  if (!$_GET["cont"]){
	 js_redireccion("error.php?msn=Debe seleccionar un Contrato");
  }
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
<?php
$contra=$_GET["cont"];
include("ControlaBD.php");

			    $con   = new ControlaBD();
				$idcon = $con->conectarSBD();
				$sel_bd= $con->select_BD("feria");
				$resulEmp= $con->ejecutar("SELECT numero FROM contrato WHERE numero='$contra'",$idcon);
				$fila0 = mysql_fetch_array($resulEmp);
				$num_rows=mysql_num_rows($resulEmp);


                 if ($num_rows==1){
                    $str = "UPDATE contrato SET Statu='4' WHERE numero='$contra'";
			        $result = $con->ejecutar($str,$idcon);
	        		if (!$result) {
			          die('Error al Insertar:'. mysql_error());
		            }else{
					echo '<div align="center">
						  <strong>
							<font face="Arial, Helvetica, sans-serif">
							   <span>
								 <font size="4">
								   <font color="#FF6600">
									  <br>El Contrato fue Eliminado exitosamente....
									  <br>
								   </font>
								 </font>
							</span>
							</font>
						</strong>
					  </div>';
			            
		            }
				}		
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

