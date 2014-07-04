<?php
session_start();
if (array_key_exists('login',$_SESSION)){
?>
<?
require('fpdf.php');

class PDF extends FPDF
{
//Cabecera de página
function Header()
{
	//Logo
	$this->Image('Cortubar.jpg',10,10,30);
	$this->Image('Alcaldia.jpg',180,8,15);
	//Arial bold 15
	$this->SetFont('Arial','IB',10);
	//Movernos a la derecha
	$this->Cell(80);
	//Título
	$this->Cell(30,10,'República Bolivariana de Venezuela',0,0,'C');
	//Salto de línea
	$this->Ln(5);
	$this->Cell(190,10,'Alcaldía del Municipio Iribarren',0,0,'C');
	$this->Ln(5);
	$this->Cell(190,10,'Barquisimeto - Estado Lara',0,0,'C');
	$this->Ln(5);
	$this->Cell(190,10,'Corporación de Turismo de Barquisimeto',0,0,'C');
	$this->Ln(5);
	$this->Cell(190,10,'CORTUBAR, C.A.',0,0,'C');
	$this->Ln(10);
}

//Pie de página
function Footer()
{
	//Posición: a 1,5 cm del final
	$this->SetY(-15);
	//Arial italic 8
	$this->SetFont('Arial','I',6);
	//Número de página
	$this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}

//Cargar los datos
function LoadData($file)
{
	//Leer las líneas del fichero
	$lines=file($file);
	$data=array();
	foreach($lines as $line)
		$data[]=explode(';',chop($line));
	return $data;
}

//Tabla simple
function BasicTable($header)
{
	//Cabecera
	foreach($header as $col)
		$this->Cell(40,7,$col,1);
	$this->Ln();
}

//Una tabla más completa
function ImprovedTable($header)
{
	//Anchuras de las columnas
	$w=array(10,40,20,40,25,20,20);
	//Cabeceras
	for($i=0;$i<count($header);$i++)
		$this->Cell($w[$i],7,$header[$i],1,0,'C');
	$this->Ln();
	//Datos

}
function PrintChapter($num,$title,$file)
{
	//Añadir capítulo
	$this->AddPage();
	$this->ChapterTitle(2,$title);
	$this->ChapterBody($file);
}


//Tabla coloreada
function FancyTable($header)
{

    $nume=$_GET["Num"];
	$this->SetFont('Arial','IB',10);
	$this->Cell(190,10,'No. REGISTRO '.$nume,0,0,'C');
	$this->Ln(10);


    include("ControlaBD.php");
   
	$con   = new ControlaBD();
	$idcon = $con->conectarSBD();
	$sel_bd= $con->select_BD("feria");
	
	$this->SetFont('Arial','IB',10);
	$this->Ln(20);

	//Colores, ancho de línea y fuente en negrita
	$this->SetFillColor(255,255,255);
	$this->SetTextColor(0,0,0);
	$this->SetDrawColor(128,0,0);
	$this->SetLineWidth(.2);
	$this->SetFont('Arial','B',8);
	
	
	//Cabecera
	$w=array(20,40,40,30,30);
	
	$this->SetFont('Arial','',9);
	$this->Cell(30,10,'Sres.',0,0,'C');
	$this->Ln(5);
   
	$this->Cell(50,10,$_GET["Nom"],0,0,'C');
	$this->Ln(5);
	$this->Cell(40,10,'Presente.-',0,0,'C');
	$this->Ln(5);
	$this->Ln(20);
	
	$this->SetFont('Arial','',8);
	
	$file = fopen('clave1.txt',"r");
	$buffer = fread($file,filesize('clave1.txt'));
	$txt=$buffer;
	$this->MultiCell(0,5,$txt);
	$this->Ln(5);
	$this->Cell(20,10,'Login',0,0,'C');
	$this->Cell(30,10,':'.'   '.$_GET["Usu"],0,0,'C');
	$this->Ln(5);
	$this->Cell(20,10,'Password',0,0,'C');
	$this->Cell(30,10,':   '.$_GET["Cla"],0,0,'C');
	$this->Ln(20);
	$file2 = fopen('clave2.txt',"r");
	$buffer2 = fread($file2,filesize('clave2.txt'));
	$txt2=$buffer2;
	$this->MultiCell(0,5,$txt2);
	fclose($file);
	fclose($file2);
	$this->Ln(10);
	$this->Cell(60,10,'Número de Acreditaciones Disponibles'.' :'.' '.$_GET["Toacre"],0,0,'C');
	$this->Ln();
	/*INICIO: MODULO DE GUARDAR NUMERO DE ACREDITACIONES (TIPO ACRED.) */

	$resulcate2= $con->ejecutar("SELECT codtacr,codcateg,descrip FROM tipacr WHERE codcateg='".$_GET["Cate"]."'",$idcon);
	//RECORRE PARA INSERTAR LOS DISTINTOS DE 0
	while ($fila2 = mysql_fetch_array($resulcate2)) {
	   $resultipo= $con->ejecutar("SELECT cant FROM cantacredita WHERE nrocontrato='".$_GET["Num"]."' and tipoacre='$fila2[codtacr]'",$idcon);
	   $fila3 = mysql_fetch_array($resultipo);
	    $num_rows=mysql_num_rows($resultipo);
	   if  ($fila3[cant]!='' or $fila3[cant]!=0 ){
          $this->Cell(50,10,$fila2[descrip],0,0,'C');
	      $this->Cell(10,10,':   '.$fila3[cant],0,0,'C');
		  $this->Ln(5);
		}
	}
		
    /*FIN: MODULO DE GUARDAR NUMERO DE ACREDITACIONES (TIPO ACRED.) */
	
	$this->Ln(20);
	$this->Cell(50,10,'Se despide Cordialmente,',0,0,'C');
	$this->Ln(10);
	$this->SetFont('Arial','B',8);
    $this->Cell(50,10,'Comisión de Acreditación',0,0,'C');
	
		}
	}

$pdf=new PDF();
$header=array('','Pabellon','Stand','Costo','Mts²');
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial','',8);
$pdf->FancyTable($header);

$pdf->Output('reporte_empresa.pdf','I'); //para que muestre la opcion de descargar el reporte

?>
<?php
 }else
{
    Header ("location: index.php"); 
}
?>