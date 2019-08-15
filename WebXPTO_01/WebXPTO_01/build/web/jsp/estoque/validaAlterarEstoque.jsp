<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Estoque"%>
<%@page import="backendxpto.control.EstoqueControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME_ESTOQUE");
    String al = request.getParameter("ALUGUEL");
    Float aluguel = Float.parseFloat(al);
    String co = request.getParameter("CONTAS");
    Float contas = Float.parseFloat(co);
    String cebusca = request.getParameter("CEBUSCA");

    Estoque estoque = new Estoque(id,nome,aluguel,contas);
    EstoqueControl estoqueCont = new EstoqueControl();
    estoque = estoqueCont.alterarEstoque(estoque);
    // REDIRECIONA PARA A PAG ITEM.JSP
    String url = "validaConsultarEstoque.jsp?NOME=" + cebusca;
    response.sendRedirect(url);
%>