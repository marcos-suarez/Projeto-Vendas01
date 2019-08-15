<%-- 
    Document   : alterarPedido
    Created on : 14-Jun-2019, 22:37:04
    Author     : marcos augusto
--%>

<%@page import="backendxpto.bean.Estoque"%>
<%@page import="backendxpto.control.EstoqueControl"%>
<%@page import="backendxpto.control.PedidoControl"%>
<%@page import="backendxpto.bean.Pedido"%>
<%@page import="backendxpto.bean.Produto"%>
<%@page import="backendxpto.control.ProdutoControl"%>
<%@page import="java.util.List"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="backendxpto.control.ClienteControl"%>
<%
    ClienteControl cliCont = new ClienteControl();
    Cliente cli = new Cliente(0,"","","","",0,"");
    List<Cliente> clientes = cliCont.ListaCliente(cli);

    ProdutoControl prodCont = new ProdutoControl();
    Produto prod = new Produto(0,"","",0,0,0);
    List<Produto> produtos = prodCont.ListaProduto(prod);
    
    EstoqueControl estCont = new EstoqueControl();
    Estoque est = new Estoque(0,"",0,0);
    List<Estoque> estoques = estCont.ListaEstoque(est);
    
    
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pedido ped = new Pedido(id,0,0,0,"",0);
    PedidoControl pedCont = new PedidoControl();
    ped = pedCont.buscaPedido(ped);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - PEDIDO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR PEDIDO</h1>
        <form name="alterarPedido" action="validaAlterarPedido.jsp" method="post">
            <table>
                <tr>
                    <td>Cliente:</td>
                        <td>
                            <select NAME="ID_CLIENTE" class="browser-default">
                                <% for (Cliente cl : clientes) { %>
                                    <% if( cl.getId() == ped.getIdPed() ) { %>
                                        <option selected value="<%=cl.getId()%>"><%=cl.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=cl.getId()%>"><%=cl.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Produto:</td>
                        <td>
                            <select NAME ="ID_PRODUTO" class="browser-default">
                                <% for (Produto pr : produtos) { %>
                                    <% if( pr.getId_p() == ped.getIdProd() ) { %>
                                        <option selected value="<%=pr.getId_p()%>"><%=pr.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=pr.getId_p()%>"><%=pr.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Estoque:</td>
                        <td>
                            <select NAME ="ID_ESTOQUE" class="browser-default">
                                <% for (Estoque e : estoques) { %>
                                    <% if( e.getId_e() == ped.getIdEst()) { %>
                                        <option selected value="<%=e.getId_e()%>"><%=e.getNome_estoque()%></option>
                                    <% } else { %>
                                        <option value="<%=e.getId_e()%>"><%=e.getNome_estoque()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Data:</td>
                        <td><input type="text" name="DATA" value="<%=ped.getData()%>"></td>

                    </tr>
                    <tr>
                        <td>Valor:</td>
                        <td><input type="text" name="VALOR_PEDIDO" value="<%=ped.getValorPed()%>"></td>
                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=ped.getIdPed()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>