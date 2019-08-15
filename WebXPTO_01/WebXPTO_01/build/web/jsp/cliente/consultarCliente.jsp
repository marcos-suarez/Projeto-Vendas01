<%-- 
    Document   : consultaEstoque
    Created on : 25/08/2017, 19:48:39
    Author     : ProfAlexandre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CLIENTE</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CLIENTE
       <img src="../lupa.png" alt="Lupa" height="60" width="60" align="right"/></h1><hr/>
       <form name="consultarCliente" action="validaConsultarCliente.jsp" method="post">
           NOME <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
