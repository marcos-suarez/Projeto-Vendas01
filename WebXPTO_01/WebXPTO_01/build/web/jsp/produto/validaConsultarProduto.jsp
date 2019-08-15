<%@page import="backendxpto.control.ProdutoControl"%>
<%@page import="backendxpto.bean.Produto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Usuario"%>

<%
    String nome = request.getParameter("NOME");
    Produto pr = new Produto(0, nome,"",0,0,0);
    ProdutoControl prcont = new ProdutoControl();
    List<Produto> produtos = prcont.ListaProduto(pr);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CBUSCA=" + pr.getNome() + "&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA DE PRODUTOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="ID">Id</th>
                  <th data-field="NOME_PRODUTO">Nome do Produto</th>
                  <th data-field="TIPO">Tipo</th>
                  <th data-field="QUANTIDADE">Quantidade</th>
                  <th data-field="VALOR">Valor</th>
                  <th data-field="PESO">Peso</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(produtos.isEmpty())) { %>    
                <tbody>
                    <% for (Produto listaProdutos : produtos) { %>
                        <tr>
                            <td><%=listaProdutos.getId_p()%></td>
                            <td><%=listaProdutos.getNome()%></td>
                            <td><%=listaProdutos.getTipo()%></td>
                            <td><%=listaProdutos.getQtd()%></td>
                            <td><%=listaProdutos.getValor()%></td>
                            <td><%=listaProdutos.getPeso()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirProduto.jsp?<%=url + listaProdutos.getId_p()%>">Excluir</a></td>
                                <td ><a href="alterarProduto.jsp?<%=url + listaProdutos.getId_p()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>