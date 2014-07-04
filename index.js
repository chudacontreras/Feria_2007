/*
*Esta libreria es una libreria AJAX creada por Javier Mellado con la inestimable
*colaboracion de Beatriz Gonzalez.
*descargada del portal AJAX Hispano http://www.ajaxhispano.com
*contacto javiermellado@gmail.com
*
*Puede ser utilizada, pasada, modificada pero no olvides mantener 
*el espiritu del software libre y respeta GNU-GPL
*/

/*function creaAjax(){
  var objetoAjax=false;
  try {
   Para navegadores distintos a internet explorer
   objetoAjax = new ActiveXObject("Msxml2.XMLHTTP");
  } catch (e) {
   try {
     Para explorer
     objetoAjax = new ActiveXObject("Microsoft.XMLHTTP");
     } 
     catch (E) {
     objetoAjax = false;
   }
  }

  if (!objetoAjax && typeof XMLHttpRequest!='undefined') {
   objetoAjax = new XMLHttpRequest();
  }
  return objetoAjax;
}

function FAjax (url,capa,valores,metodo)
{
   var ajax=creaAjax();
   var capaContenedora = document.getElementById(capa);
   
Creamos y ejecutamos la instancia si el metodo elegido es POST
if(metodo.toUpperCase()=='POST'){
         ajax.open ('POST', url, true);
         ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
                          capaContenedora.innerHTML="<img src='Imagen/ajax-loader.gif'>"; 
         }
         else if (ajax.readyState==4){
                   if(ajax.status==200)
                   {
                        document.getElementById(capa).innerHTML=ajax.responseText;
                   }
                   else if(ajax.status==404)
                                             {

                            capaContenedora.innerHTML = "La direccion no existe";
                                             }
                           else
                                             {
                            capaContenedora.innerHTML = "Error: ".ajax.status;
                                             }
                                    }
                  }
         ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
         ajax.send(valores);
         return;
}

/*Creamos y ejecutamos la instancia si el metodo elegido es GET
if (metodo.toUpperCase()=='GET'){
    ajax.open ('GET', url, true);
    ajax.onreadystatechange = function() {
         if (ajax.readyState==1) {
				 capaContenedora.innerHTML="<img src='Imagen/ajax-loader.gif'>"; 
         }
         else if (ajax.readyState==4){
            if(ajax.status==200){ 
                 document.getElementById(capa).innerHTML=ajax.responseText; 
            }
            else if(ajax.status==404)
                 {

                     capaContenedora.innerHTML = "La direccion no existe";
                 }
                 else
                 {
                     capaContenedora.innerHTML = "Error: ".ajax.status;
                 }
        }
    }
    ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    ajax.send(null);
    return
}
}

var peticion = false; 
if (window.XMLHttpRequest) {
      peticion = new XMLHttpRequest();
      } else if (window.ActiveXObject) {
            peticion = new ActiveXObject("Microsoft.XMLHTTP");
}
function ObtenerDatos(datos,divID) { 
if(peticion) {
     var obj = document.getElementById(divID); 
     peticion.open("GET",datos); 
     peticion.onreadystatechange = function()  { 
          if (peticion.readyState == 4) { 
               obj.innerHTML = peticion.responseText; 
          } 
     } 
peticion.send(null); 
}
}

function direcc(){
		if(document.formu.ckbox.checked==true){
			document.formu.prueba.value = "1";	
			
		}
	
	}		*/
	
  function ValidarUbica()
   {
           var Can = document.formu.Can.value; 
           if(Can==""){
           {
                   alert("Ingrese una Cantidad Valida");
                   return false;
           }
		  
    
           return true;
   }
