<%-- 
    Document   : consultarPedido
    Created on : 14-Jun-2019, 22:04:15
    Author     : marcos augusto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PEDIDO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PEDIDO
       <img src="../lupa.png" alt="Lupa" height="60" width="60" align="right"/></h1><hr/>
       <form name="consultarPedido" action="validaConsultarPedido.jsp" method="post">
           Número do Pedido: <input type="text" name ="NUMERO_PEDIDO" value="" required> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
