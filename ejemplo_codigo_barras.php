<?
// Ejemplo by Deerme
// http://deerme.org

// Incluimos la Clase
require_once('html2fpdf.php');
// Insertamos Clases de BARCODE
require("barcode/barcode.php");
require("barcode/i25object.php");
require("barcode/c39object.php");
require("barcode/c128aobject.php");
require("barcode/c128bobject.php");
require("barcode/c128cobject.php");

// Generamos Consultas y Guardamos Datos en Array
// En un Array debemos tener el Codigo del Artuclo
// De estos codigos vamos a generar los Codigo de Barras
$articulos=(array(array("012345","Athlon XP 3200+"),array("012346","Athlon XP 3200+")));

foreach($articulos as $valor)
{
	// Generamos
	$obj = new C39Object("100", "50", "452",$valor[0]);
	$obj->SetFont(2);   
	$obj->DrawObject(1);
	// Obtenemos Imagen
	$imagen = $obj->getImage();
	// Guardamos la Imagen en el mismo Directorio
	
		// Antes de Guardar Borramos Archivos
		if ( is_file($valor[0].'png') )
		{
			unlink($valor[0].'png');
		}
	
	imagepng($imagen,$valor[0].'.png',100);
	
	
	
}
// Borramos Objeto
unset($obj);
// Generamos el HTML

// Creamos en una Variable el Codigo HTML para Generar el PDF
$html="<html>
<body>
<table width=\"100%\" border=\"1\" cellspacing=\"0\" cellpadding=\"1\">
  <tr>
    <td width=\"25%\">Codigo</td>
    <td width=\"45%\">Articulo</td>
    <td width=\"30%\">Codigo de Barra </td>
  </tr>";
foreach($articulos as $valor)
{
	$html .= "<tr>
    <td>".$valor[0]."</td>
    <td>".$valor[1]." </td>
    <td><img src=\"".$valor[0].".png\" /></td>
  </tr>";
}  
  
// Continuamos HTML
$html .="</table></body></html>";

// Instanciamos la Clase
$pdf = new HTML2FPDF();
$pdf->DisplayPreferences('HideWindowUI');
$pdf->AddPage();
// Le Entregmos la Variable
$pdf->WriteHTML($html);
// Mandamos el Fichero
$pdf->Output('doc.pdf','I');
// Eliminamos Imagenes
foreach($articulos as $valor)
{
	unlink($valor[0].'png');
} 
?>