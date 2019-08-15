<%@page import="backendxpto.bean.Estoque"%>
<%@page import="backendxpto.control.EstoqueControl"%>
<%@page import="backendxpto.bean.Produto"%>
<%@page import="backendxpto.control.ProdutoControl"%>
<%@page import="backendxpto.control.ClienteControl"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ClienteControl cliCont = new ClienteControl();
    Cliente cli = new Cliente(0,"","","","",0,"");
    List<Cliente> clientes = cliCont.ListaCliente(cli);

    ProdutoControl prodCont = new ProdutoControl();
    Produto prodEnt = new Produto(0,"","",0,0,0);
    List<Produto> prod = prodCont.ListaProduto(prodEnt);
    
    EstoqueControl estCont = new EstoqueControl();
    Estoque estEnt = new Estoque(0,"",0,0);
    List<Estoque> est = estCont.ListaEstoque(estEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PEDIDO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PEDIDO
        <img src="order.png" alt="Pedido" height="60" width="60" align="right"/></h1><hr/>
        <form name="inserirPedido" action="validaInserirPedido.jsp" method="post">
         <table>
                    <tr>
                        <td>Nome do Cliente:</td>
                        <td>
                            <select NAME ="ID_CLIENTE" class="browser-default">
                                <% for (Cliente cl : clientes) { %>
                                    <option value="<%=cl.getId()%>"><%=cl.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Nome do Produto:</td>
                        <td>
                            <select NAME="ID_PRODUTO" class="browser-default">
                                <% for (Produto p : prod) { %>
                                    <option value="<%=p.getId_p()%>"><%=p.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Nome do Estoque:</td>
                        <td>
                            <select NAME="ID_ESTOQUE" class="browser-default">
                                <% for (Estoque e : est) { %>
                                    <option value="<%=e.getId_e()%>"><%=e.getNome_estoque()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Data (AAAA-MM-DD):</td>
                        <td><input type="text" name="DATA" value=""></td>
                    </tr>
                        <tr>
                        <td>Valor do Pedido:</td>
                        <td><input type="text" name="VALOR" value=""></td>
                    </tr>
                    
                </table>    
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
