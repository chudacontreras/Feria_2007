<?php
  include("util.php");
   $cont=$_GET["Cont"];
   $total=$_GET["tota"];
if ($_GET["test"]=="Eliminar"){
  js_redireccion("elicontra.php?cont=$_GET[Cont]");
}
elseif ($_GET["test"]=="Ver Pagos"){
 js_redireccion("verpagos.php?cont=$_GET[Cont]&total=$_GET[tota]");
}
elseif ($_GET["test"]=="Realizar Pago"){
 js_redireccion("generarpago.php?Cont=$_GET[Cont]&tot=$_GET[tot]&acum=$_GET[acum]");
 
}elseif ($_GET["test"]=="Acreditaciones Adicionales"){
 js_redireccion("acreadicionales.php?Cont=$_GET[Cont]&Rif=$_GET[rif]");
}
elseif ($_GET["test"]=="Ver Recibo"){
 js_redireccion("recibo2.php?Cont=$_GET[Cont]");
}
?>
