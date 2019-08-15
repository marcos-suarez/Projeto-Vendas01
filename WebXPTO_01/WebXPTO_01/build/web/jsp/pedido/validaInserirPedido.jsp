<%-- 
    Document   : validaInserirPedido
    Created on : 14-Jun-2019, 20:54:11
    Author     : marcos augusto
--%>

<%@page import="backendxpto.control.PedidoControl"%>
<%@page import="backendxpto.bean.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.UsuarioPessoa"%>
<%@page import="backendxpto.control.UsuarioPessoaControl"%>

<%
    int idCliente = Integer.parseInt(request.getParameter("ID_CLIENTE"));
    int idProduto = Integer.parseInt(request.getParameter("ID_PRODUTO"));
    int idEstoque = Integer.parseInt(request.getParameter("ID_ESTOQUE"));
    String data = request.getParameter("DATA");
    float valor = Float.parseFloat(request.getParameter("VALOR"));
    
    Pedido ped = new Pedido(0,idCliente,idProduto,idEstoque,data,valor);
    PedidoControl pedcont = new PedidoControl();
    ped = pedcont.inserirPedido(ped);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPedido.jsp";
    response.sendRedirect(url);

%>