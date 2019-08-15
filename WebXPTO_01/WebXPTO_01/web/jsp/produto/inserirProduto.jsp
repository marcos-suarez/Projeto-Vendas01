<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PRODUTO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PRODUTO
            <img src="product.png" alt="Produto" height="60"width="60" align="right"/></h1><hr/>
        
       <form name="inserirProduto" action="validaInserirProduto.jsp" method="post">
            
            
            Nome: <input type="text" name="NOME" value=""> <br>
            Tipo: <input type="text" name="TIPO" value=""> <br>
            Quantidade: <input type="text" name="QUANTIDADE" value=""> <br>
            Valor: <input type="text" name="VALOR" value=""> <br>
            Peso: <input type="text" name="PESO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
