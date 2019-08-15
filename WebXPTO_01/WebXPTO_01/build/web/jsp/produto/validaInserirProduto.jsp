<%@page import="backendxpto.control.ProdutoControl"%>
<%@page import="backendxpto.bean.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String qt = request.getParameter("QUANTIDADE");
    int qtd = Integer.parseInt(qt);
    String v = request.getParameter("VALOR");
    float valor = Float.parseFloat(v);
    String p = request.getParameter("PESO");
    float peso = Float.parseFloat(p);
 
    Produto pr = new Produto(0,nome,tipo,qtd,valor,peso);
    ProdutoControl prcont = new ProdutoControl();
    pr = prcont.insereProduto(pr);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirProduto.jsp";
    response.sendRedirect(url);
%>

