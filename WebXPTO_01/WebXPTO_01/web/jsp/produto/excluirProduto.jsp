<%-- 
    Document   : excluirUsuario
    Created on : 31/08/2017, 09:57:18
    Author     : ProfAlexandre
--%>

<%@page import="backendxpto.bean.Produto"%>
<%@page import="backendxpto.control.ProdutoControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Produto pr = new Produto(id,"","",0,0,0);
    ProdutoControl prCont = new ProdutoControl();
    pr = prCont.excluiProduto(pr);
    String cbusca = request.getParameter("CBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarProduto.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>