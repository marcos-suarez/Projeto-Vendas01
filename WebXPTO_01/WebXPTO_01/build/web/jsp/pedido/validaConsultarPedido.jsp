<%-- 
    Document   : validaConsultarPedido
    Created on : 14-Jun-2019, 22:10:18
    Author     : marcos augusto
--%>

<%@page import="backendxpto.bean.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="backendxpto.control.PedidoControl"%>
<%@page import="backendxpto.bean.Pedido"%>
<%
    
    
    String n = request.getParameter("NUMERO_PEDIDO");
    int nume = Integer.parseInt(n);
    
    Pedido ped = new Pedido(nume,0,0,0,"",0);
    PedidoControl pedcont = new PedidoControl();
    List <Pedido> pedidos = pedcont.ListaPedido(ped);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + ped.getIdPed() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA DE PEDIDOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdPedido">IdPedido</th>
                  <th data-field="IdCli">IdCliente</th>
                  <th data-field="IdProd">IdProduto</th>
                  <th data-field="IdProd">IdEstoque</th>
                  <th data-field="Data">Data</th>
                  <th data-field="Valor">Valor</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pedidos.isEmpty())) { %>    
                <tbody>
                    <% for (Pedido listaPedido : pedidos) { %>
                        <tr>
                            <td><%=listaPedido.getIdPed()%></td>
                            <td><%=listaPedido.getIdCli()%></td>
                            <td><%=listaPedido.getIdProd()%></td>
                            <td><%=listaPedido.getIdEst()%></td>
                            <td><%=listaPedido.getData()%></td>
                            <td><%=listaPedido.getValorPed()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPedido.jsp?<%=url + listaPedido.getIdPed()%>">Excluir</a></td>
                                <td><a href="alterarPedido.jsp?<%=url + listaPedido.getIdPed()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>