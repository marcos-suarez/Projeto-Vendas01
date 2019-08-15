
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Usuario"%>
<%@page import="backendxpto.control.UsuarioControl"%>

<%
    String login = request.getParameter("LOGIN");
    Usuario  usu = new Usuario(0,login,"");
    UsuarioControl usucont = new UsuarioControl();
    List<Usuario> usus = usucont.ListaUsuario(usu);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + usu.getLogin()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Login">Login</th>
                  <th data-field="Senha">Senha</th>
                  <th data-field="Status">Status</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usus.isEmpty())) { %>    
                <tbody>
                    <% for (Usuario listaUsuario : usus) { %>
                        <tr>
                            <td><%=listaUsuario.getIdUsu()%></td>
                            <td><%=listaUsuario.getLogin()%></td>
                            <td><%=listaUsuario.getSenha()%></td>
                            <td><%=listaUsuario.getStatus()%></td>
                            <td><%=listaUsuario.getTipo()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirUsuario.jsp?<%=url + listaUsuario.getIdUsu()%>">Excluir</a></td>
                                <td><a href="alterarUsuario.jsp?<%=url + listaUsuario.getIdUsu()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>