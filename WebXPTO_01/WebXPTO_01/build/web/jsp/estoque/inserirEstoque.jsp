<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - ESTOQUE</title>
    <body>
       <div class="container"/>
        <h1>INSERIR ESTOQUE
        <img src="stock.png" alt="Estoque" height="46" width="92" align="right"/></h1><hr/>
        <form name="inserirEstoque" action="validaInserirEstoque.jsp" method="post">
            Nome do Estoque: <input type="text" name="NOME_ESTOQUE" value=""> <br>
            Aluguel: <input type="text" name="ALUGUEL" value=""> <br>
            Contas: <input type="text" name="CONTAS" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
