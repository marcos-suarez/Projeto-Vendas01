<%-- 
    Document   : validaConsultarEstoque
    Created on : 25/08/2017, 19:54:19
    Author     : ProfAlexandre
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Estoque"%>
<%@page import="backendxpto.control.EstoqueControl"%>
<%@page import="backendxpto.bean.Usuario"%>

<%
    String nome = request.getParameter("NOME");    
    Estoque  estoque = new Estoque(0,nome,0,0);
    EstoqueControl estoquecont = new EstoqueControl();
    List<Estoque> estoquee = estoquecont.ListaEstoque(estoque);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CEBUSCA=" + estoque.getNome_estoque()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ESTOQUE</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome do Estoque</th>
                  <th data-field="Aluguel">Aluguel</th>
                  <th data-field="Contas">Contas</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(estoquee.isEmpty())) { %>    
                <tbody>
                    <% for (Estoque listaEstoque : estoquee) { %>
                        <tr>
                            <td><%=listaEstoque.getId_e()%></td>
                            <td><%=listaEstoque.getNome_estoque()%></td>
                            <td><%=listaEstoque.getVal_aluguel()%></td>
                            <td><%=listaEstoque.getTot_contas()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirEstoque.jsp?<%=url + listaEstoque.getId_e()%>">Excluir</a></td>
                                <td><a href="alterarEstoque.jsp?<%=url + listaEstoque.getId_e()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>