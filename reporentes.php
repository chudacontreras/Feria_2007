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
	$this->SetFont('Arial','B',8);
	//Movernos a la derecha
	$this->Cell(80);
	//Título
	$this->Cell(30,10,'REPORTE DE COMISIONES',0,0,'C');
	$this->Ln();
	$this->Cell(190,10,date("d / m / Y"),0,0,'C');
	//Salto de línea
	$this->Ln(30);
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
	$w=array(40,20,40,45,20,20);
	//Cabeceras
	for($i=0;$i<count($header);$i++)
		$this->Cell($w[$i],7,$header[$i],1,0,'C');
	$this->Ln();
	//Datos

}

//Tabla coloreada
function FancyTable($header)
{
	//Colores, ancho de línea y fuente en negrita
	$this->SetFillColor(255,0,0);
	$this->SetTextColor(255);
	$this->SetDrawColor(128,0,0);
	$this->SetLineWidth(.3);
	$this->SetFont('','B');
	//Cabecera
	$w=array(100,25,25,25);
	for($i=0;$i<count($header);$i++)
		$this->Cell($w[$i],7,$header[$i],1,0,'C',1);
	$this->Ln();
	//Restauración de colores y fuentes
	$this->SetFillColor(224,235,255);
	$this->SetTextColor(0);
	$this->SetFont('Arial','B',7);
	//Datos
	$fill=0;
	
	include("ControlaBD.php");

	$con   = new ControlaBD();
	$idcon = $con->conectarSBD();
	$sel_bd= $con->select_BD("feria");
	
	$result= $con->ejecutar("SELECT numero,rif,totalacred FROM contrato WHERE numero like '%E07%'",$idcon);
	
    while ($fila = mysql_fetch_array($result)) {
	   $resempre= $con->ejecutar("SELECT nombre FROM empresa WHERE rif='$fila[rif]'",$idcon);
       $empr = mysql_fetch_array($resempre);
	   $this->Cell($w[0],6,$empr[nombre],1,'L');
	   $this->Cell($w[1],6,$fila[totalacred],1,'L');
	   $resregis= $con->ejecutar("SELECT count(rif) as contarregis FROM acreditado WHERE rif='$fila[rif]' and estatus='1' and contrato='$fila[numero]'",$idcon);
	   $regis = mysql_fetch_array($resregis);
	   $this->Cell($w[2],6,$regis[contarregis],1,'L');
	   $resimpre= $con->ejecutar("SELECT count(rif) as contarimpre FROM acreditado WHERE rif='$fila[rif]' and estatus='2' and contrato='$fila[numero]'",$idcon);
	   $impre = mysql_fetch_array($resimpre);
	   $this->Cell($w[2],6,$impre[contarimpre],1,'L');
	   $this->Ln();
    }
	$result2= $con->ejecutar("SELECT sum(totalacred) as sumatotal FROM contrato WHERE numero like '%E07%'",$idcon);
    $fila2= mysql_fetch_array($result2);
	 $this->Cell($w[0],6,' ',1,'L');
	 $this->Cell($w[1],6,' ',1,'L');
	 $this->Cell($w[2],6,'Total Acreditaciones',1,'C');
	 $this->Cell($w[3],6, $fila2[sumatotal],1,'L');
}
}



$pdf=new PDF();
$header=array('Comisión','Acreditaciones','Registradas','Impresas');
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial','',8);
$pdf->FancyTable($header);
$pdf->Output('reporte_acreditacion.pdf','I'); //para que muestre la opcion de descargar el reporte

?>
<?php
 }else
{
    Header ("location: index.php"); 
}
?>