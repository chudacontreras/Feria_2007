<?php
function GeneradorClavesFaciles($longitud) {

// Copyright Rafa Marruedo, 2006 | www.vibra.es/codigo
// Generador de claves fáciles de recordar, con el tamaño en caracteres indicado.
// Ejemplo de uso:
// echo GeneradorClavesFaciles(6);
// mostrara: ibacem

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

echo GeneradorClavesFaciles(10);
?>