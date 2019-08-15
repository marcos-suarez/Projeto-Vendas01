<%@page import="backendxpto.control.ProdutoControl"%>
<%@page import="backendxpto.bean.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String q = request.getParameter("QUANTIDADE");
    int qtd = Integer.parseInt(q);
    String v = request.getParameter("VALOR");
    Float valor = Float.parseFloat(v);
    String p = request.getParameter("PESO");
    Float peso = Float.parseFloat(p);
    String cbusca = request.getParameter("CBUSCA");
    
    Produto prod = new Produto(id,nome,tipo, qtd, valor, peso);
    ProdutoControl prodCont = new ProdutoControl();
    prod = prodCont.alteraProduto(prod);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarProduto.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>