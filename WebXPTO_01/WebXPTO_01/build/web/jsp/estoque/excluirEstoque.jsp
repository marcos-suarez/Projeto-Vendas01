 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Estoque"%>
<%@page import="backendxpto.control.EstoqueControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Estoque estoque = new Estoque(id,"",0,0);
    EstoqueControl estoqueCont = new EstoqueControl();
    estoque = estoqueCont.excluiEstoque(estoque);
    String cebusca = request.getParameter("CEBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarEstoque.jsp?NOME=" + cebusca;
    response.sendRedirect(url);
%>