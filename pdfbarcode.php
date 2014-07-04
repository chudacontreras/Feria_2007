<?
/*======================================================================
PDFBarcode
http://www.grana.to/pdfbarcode

Copyright (C) 2004 Valerio Granato (valerio at grana.to)
Last Modified: 2004-05-30 21:00 CEST

DESCRIPTION:
A function to add barcodes to PDF documents created using Cpdf, a class
by Wayne Munro <pdf@ros.co.nz> - http://www.ros.co.nz/pdf/.
It takes in input the text and the bars coded as GNU-barcode
(http://www.gnu.org/software/barcode/) and outputs an object id to
place on your PDF document.

WARRANTY:
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

LICENCE
You could do what you want but sell it or ask money for usage, without
author's written permission.

If you find it useful, please donate. Donations will help the
development of this and other function/classes.
To donate go to http://www.grana.to/pdfbarcode .
If you need customization send me a mail.

Author:  Valerio Granato (valerio at grana.to)
Version: 0.9
Package: PDFBarcode


USAGE:
Call the function using
   $id = barcode($pdf, $text, $bars, $scale, $fontscale, $xstart, $ystart, $font);

where:
   $pdf is the PDF-Class object (http://www.ros.co.nz/pdf/)

   $text is the genbarcode text as below (ISBN barcode 1234567890):
    '0:12:9 12:12:7 19:12:8 26:12:1 33:12:2 40:12:3 47:12:4 59:12:5 66:12:6 73:12:7 80:12:8 87:12:9 94:12:7',

   $bars is the size of bars as below (ISBN barcode 1234567890):
    '9a1a1312312112222122114111321a1a1123111141312121331121312a1a',

    From GNU-barcode manual (http://www.gnu.org/software/barcode/):

    <cite>
    The bar-string:
    Read char by char, all odd chars represent a space, all even a bar:
    <space-width><bar-width><space-width><bar-width>...
    
    An alphabetic character defines a tall bar, all others small ones.
    
    The character-string:
    <position>:<font-size>:<character> ...
    </cite>      

   $scale is the generated barcode scale, from 1 to... infinite (what printer do you have? :-))
   $fontscale is a value that will be subtracted from the genbarcode font size. Tipically you will
    need it for ISBN or EAN13: for these encodings try a value of 3 or 4.

   $xstart is the horizontal start of the barcode, in user point.
   $ystart (as $xstart, but remember that pdf documents have the 0,0 in bottom left corner)
   $font is the server path of an .afm font file.

The function generate a pdf.class-object that you could put on your page
using addObject($id).

A simple usage example (you NEED GNU-Barcode and pdf.class, see links above):

<?php
include ('class.ezpdf.php');
$pdf =& new Cezpdf('a4');

$fp=popen('/usr/bin/genbarcode 1234567890', "r");
$bars=fgets($fp, 1024);
$text=fgets($fp, 1024);
$encoding=fgets($fp, 1024);
pclose($fp);

if ($encoding == 'ISBN' or $encoding == 'EAN-13') $fontscale = 4;

$id = barcode($pdf, $text, $bars, '1', $fontscale, '100', '500', './fonts/Helvetica.afm');

$pdf->addObject($id);
$pdf->ezStream();
?>


*/

function barcode(&$pdf, $text, $bars, $scale, $fontscale, $xstart, $ystart, $font) {

    $id = $pdf->openObject();

    if ($scale<1) {
        $scale=1;
    }

    $y=(int)$scale * 60;
    $spacebottom = $scale-5;

    $short=round($y-($scale*10));
    $long=round($y-$spacebottom);

    $xpos = 0;

    for ($i=0;$i<strlen($bars);$i++){

        $barspace = $bars[$i]*$scale;

        $pdf->setColor(1,1,1);
        $pdf->filledRectangle($xstart+$xpos, $ystart-$long, $barspace, $long);
        $xpos += $barspace;

        $i++;
        $barwidth=strtolower($bars[$i]);
        if (ereg("[a-z]", $barwidth)){
            $barwidth=ord($barwidth)-ord('a')+1;
                $height=$long;
            $txtstart += $barwidth*$scale;
        } else {
            $height=$short;
        }
        $barwidth = $barwidth*$scale;

        $pdf->setColor(0,0,0);
        $pdf->filledRectangle($xstart+$xpos, $ystart-$height, $barwidth, $height);
        $xpos += $barwidth;
    }


    $pdf->selectFont($font);

    $chars=explode(" ", $text);
    foreach($chars AS $c){
        $ar=explode(":", $c);
        $xtxtpos = $xstart+($ar[0]*$scale)+$txtstart/3;
        $fontsize=($ar[1]-$fontscale)*$scale;
        $pdf->addText($xtxtpos,$ystart-$long, $fontsize, "<b>$ar[2]</b>");
    }

    $pdf->closeObject($id);

    return $id;
}
?>
