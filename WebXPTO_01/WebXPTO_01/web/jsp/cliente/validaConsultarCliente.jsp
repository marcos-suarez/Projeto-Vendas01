<%-- 
    Document   : validaConsultarEstoque
    Created on : 25/08/2017, 19:54:19
    Author     : ProfAlexandre
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="backendxpto.control.ClienteControl"%>
<%@page import="backendxpto.bean.Usuario"%>

<%
    String nome = request.getParameter("NOME");    
    Cliente  cli = new Cliente(0,nome,"","","",0,"");
    ClienteControl clicont = new ClienteControl();
    List<Cliente> client = clicont.ListaCliente(cli);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CBUSCA=" + cli.getNome()+ "&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CLIENTE</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="CPF">CPF</th>
                  <th data-field="Data_Nascimento">Data de nascimento</th>
                  <th data-field="Cidade">Cidade</th>
                  <th data-field="Tempo_Fidelidade">Tempo de Fidelidade</th>
                  <th data-field="Contato">Contato</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(client.isEmpty())) { %>    
                <tbody>
                    <% for (Cliente listaCliente : client) { %>
                        <tr>
                            <td><%=listaCliente.getId()%></td>
                            <td><%=listaCliente.getNome()%></td>
                            <td><%=listaCliente.getCpf()%></td>
                            <td><%=listaCliente.getData_nasc()%></td>
                            <td><%=listaCliente.getCidadeC()%></td>
                            <td><%=listaCliente.getTempoFid()%> mes(es)</td>
                            <td><%=listaCliente.getContato()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirCliente.jsp?<%=url + listaCliente.getId()%>">Excluir</a></td>
                                <td><a href="alterarCliente.jsp?<%=url + listaCliente.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>