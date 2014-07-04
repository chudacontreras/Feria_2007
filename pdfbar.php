<?php 
require("pdfbarcode.php");
include ('class.ezpdf.php');
$pdf =& new Cezpdf('a4');
function getvar($name)
       {
       global $_GET, $_POST;
       if (isset($_GET[$name])) return $_GET[$name];
       else if (isset($_POST[$name])) return $_POST[$name];
       else return false;
       }
$codigo=getvar('codigo');
$codificacion=getvar('codificacion');
$escala=getvar('escala');
//echo "$codigo <br> $codificacion <br> $escala";
if (strtoupper(substr(PHP_OS, 0, 3)) == 'WIN')
    {
     $app_patch = getcwd();
     $genbarcode_loc = $app_patch."\genbarcode\genbarcode.exe";
    }
else
   {
    $app_patch = getcwd();
    $genbarcode_loc = $app_patch."/genbarcode/genbarcode";	 
   }

$cmd = $genbarcode_loc;
global $cmd;
$fp=popen("$cmd $codigo $codificacion", "r");
$bars=rtrim(fgets($fp, 1024));
$text=rtrim(fgets($fp, 1024));
$encoding=rtrim(fgets($fp, 1024));
echo "$bars <br> $text <br> $encoding";
pclose($fp);

if ($encoding == 'ISBN' or $encoding == 'EAN-13') $fontscale = 4;

$id = barcode($pdf, $text, $bars, '1', $fontscale, '20', '810', '/fonts/Helvetica.afm');

echo" $genbarcode_loc";
//$pdf->addObject($id);
//$pdf->ezStream();
?> 

