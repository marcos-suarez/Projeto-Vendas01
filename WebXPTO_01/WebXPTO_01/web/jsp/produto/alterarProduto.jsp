<%@page import="backendxpto.control.ProdutoControl"%>
<%@page import="backendxpto.bean.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Produto pr = new Produto(id,"","",0,0,0);
    ProdutoControl prCont = new ProdutoControl();
    pr = prCont.buscaProduto(pr);
    String cbusca = request.getParameter("CBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PRODUTO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PRODUTO</h1>
        <form name="alterarProduto" action="validaAlterarProduto.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=pr.getNome()%>"> <br>
            Tipo: <input type="text" name="TIPO" value="<%=pr.getTipo()%>"> <br>
            Quantidade: <input type="text" name="QUANTIDADE" value="<%=pr.getQtd()%>"> <br>
            Valor: <input type="text" name="VALOR" value="<%=pr.getValor()%>"> <br>
            Peso: <input type="text" name="PESO" value="<%=pr.getPeso()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pr.getId_p()%>"> <br>
            <input type="HIDDEN" name="CBUSCA" value="<%=cbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>