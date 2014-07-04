<%
Actual = Now() 
'session("codigo")=Request.QueryString("codigo") 'tomo el codigo de la licencia enviado por la pagina anterior

'***********************************************************************
	set rst_in = server.createobject("ADODB.Recordset")
	sql = "select * from propuesta where Licencia = '" & session("codigo")  & "'"
	rst_in.open sql, session("cnn")  
	set cmd_in = server.createobject("ADODB.Command")
	cmd_in.activeconnection = session("cnn")
	
	set rst_in2 = server.createobject("ADODB.Recordset")
	sql2 = "select * from rubros"
	rst_in2.open sql2, session("cnn")  
	set cmd_in = server.createobject("ADODB.Command")
	cmd_in.activeconnection = session("cnn")
	
	
%>


<html>
<head>
<title>.:::Auto Liquidac&iacute;on - Tasas y Certificaciones :::.</title>


<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #DA251D;
}
a:visited {
	color: #DA251D;
}
a:hover {
	color: #DA251D;
}
a:active {
	color: #DA251D;
}
.Estilo1 {
	color: #DA251D;
	font-weight: bold;
	font-size:13px;
	font-family:Verdana, Arial, Helvetica, sans-serif;
}
.Estilo2 {
    color: #000000;
	font-family:Verdana, Arial, Helvetica, sans-serif;
	font-size:13px;
	}
.Estilo3 {
	color: #000000;
	font-size:13px;
    font-family:Verdana, Arial, Helvetica, sans-serif;	
}
-->

</style>

</head>

<body>

<Form name="f1" action="tasas1.asp" method="post">

<table width="665" border="0" align="center" cellpadding="0" cellspacing="0">
<% 
'rst_in2.movefirst
'while not rst_in2.EOF 
'   Response.Write "" & rst_in2("descripcion") & ""
'   Response.Write "--" & rst_in2("material") & "<br>"
'rst_in2.movenext
'wend%>
    <tr>
       <td colspan="4" align="center"><img src="img/tasas.gif" width="661" height="118"><br>
      <br></td>
    </tr>
    <tr>
	   <td colspan="2" align="center"></td>
	   <td width="27%" align="right" class="Estilo3">Fecha de Pago:</td>
	   <td width="35%" align="center">
	   <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><%= WeekDayName(WeekDay(Actual)) & ", " & Day(Actual) & " " & MonthName(Month(Actual)) & " de " & Year(Actual) %></font>
      </td>
	</tr>
    <tr>
	   <td colspan="4" align="center"><br>
	   <table width="100%" border="0">
		  <tr>
			<td width="26%" class="Estilo3">Nombre:</td>
			<td width="74%" class="Estilo2"><% Response.Write "" & session("empresa") & ""%></td>
		  </tr>
		  <tr>	   

		  <tr>
		    <td colspan="4"><br>
					<table align=center width=100% cellpadding=4 cellspacing=2 id="contenido" border="0">
					<tr>
					<td colspan="2" align="center" bgcolor="#CCCCCC" class="Estilo1">Tasa o Certificaci&oacute;n</td>
					</tr>
					</table>
					<table align=center width=100% cellpadding=0 cellspacing=0 border="0">
					<tr>
					<td>&nbsp;</td>
					</tr>
					<tr align="center">
					<td align="CENTER" class="Estilo3">
					Seleccione el Codigo de Cliente con el que desea pagar:<br><br>
					  <select name="rubro">
					  		<%	rst_in2.movefirst
								while not rst_in2.EOF %>
								<option value="<%= rst_in2("id")%>"><%= rst_in2("impuesto")%></option>								
							<%	rst_in2.movenext
								wend
							%>
					  </select><br><br><br>
					</td>
					</tr>					
					</table>
			</td>
		  </tr>
		  <tr>
		    <td colspan="4" align="center">
			<hr color="#CCCCCC">
			<br>
			<input type="image" name="Generar" value="Generar" src="img/btnGenerar.gif">
			</td>
		  </tr>		  
        </table>
	   </td>
	</tr>	
    <tr>
       <td colspan="4" align="center"><br><br><img src="img/lista.gif"></td>
    </tr>
    <tr>
       <td colspan="2" align="left"><font size="1" face="Verdana, Arial, Helvetica, sans-serif">
	   Elaborado por<br>
	   Oficina de Inform&aacute;tica y <br>
      GDPC Servicios Tecnol&oacute;gicos</font></td>
	   <td colspan="2" align="right"><img src="img/avedt.gif"></td>
    </tr>			
</table>
</form>
 </body>

</html>