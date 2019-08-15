<%-- 
    Document   : validaAlterarPedido
    Created on : 14-Jun-2019, 22:58:09
    Author     : marcos augusto
--%>

<%@page import="backendxpto.control.PedidoControl"%>
<%@page import="backendxpto.bean.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idCliente = Integer.parseInt(request.getParameter("ID_CLIENTE"));
    int idProduto = Integer.parseInt(request.getParameter("ID_PRODUTO"));
    int idEstoque = Integer.parseInt(request.getParameter("ID_ESTOQUE"));
    String data = request.getParameter("DATA");
    Float valor = Float.parseFloat(request.getParameter("VALOR_PEDIDO"));
    String pbusca = request.getParameter("PBUSCA");
    Pedido ped = new Pedido(id,idCliente,idProduto,idEstoque,data,valor);
    PedidoControl pedcont = new PedidoControl();
    ped = pedcont.alteraPedido(ped);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPedido.jsp?NUMERO_PEDIDO=" + pbusca;
    response.sendRedirect(url);
%>    
    
    