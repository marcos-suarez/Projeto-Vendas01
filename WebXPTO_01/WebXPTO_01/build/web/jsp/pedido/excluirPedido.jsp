<%-- 
    Document   : excluirPedido
    Created on : 14-Jun-2019, 23:03:13
    Author     : marcos augusto
--%>

<%@page import="backendxpto.control.PedidoControl"%>
<%@page import="backendxpto.bean.Pedido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pedido ped = new Pedido(id,0,0,0,"",0);
    PedidoControl pedCont = new PedidoControl();
    ped = pedCont.excluiPedido(ped);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPedido.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>
