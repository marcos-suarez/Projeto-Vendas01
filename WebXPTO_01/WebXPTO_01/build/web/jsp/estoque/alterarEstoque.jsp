<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backendxpto.bean.Estoque"%>
<%--<%@page import="backendxpto.bean.PessoaFisica"%>--%>
<%@page import="backendxpto.control.EstoqueControl"%>
<%--<%@page import="backendxpto.control.PessoaFisicaControl"%>--%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Estoque estoque = new Estoque(id,"",0,0);
    EstoqueControl estoqueCont = new EstoqueControl();
    estoque = estoqueCont.buscaEstoque(estoque);
    String cebusca = request.getParameter("CEBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ESTOQUE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ESTOQUE</h1>
        <form name="alterarEstoque" action="validaAlterarEstoque.jsp" method="post">
            Nome do Estoque: <input type="text" name="NOME_ESTOQUE" value="<%=estoque.getNome_estoque()%>"> <br>
            Aluguel: <input type="text" name="ALUGUEL" value="<%=estoque.getVal_aluguel()%>"> <br>
            Contas: <input type="text" name="CONTAS" value="<%=estoque.getTot_contas()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=estoque.getId_e()%>"> <br>
            <input type="HIDDEN" name="CEBUSCA" value="<%=cebusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>