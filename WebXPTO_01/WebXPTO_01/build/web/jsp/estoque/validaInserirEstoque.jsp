<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Estoque"%>
<%@page import="backendxpto.control.EstoqueControl"%>

<%
    String al = request.getParameter("ALUGUEL");
    float aluguel = Float.parseFloat(al);
    String c = request.getParameter("CONTAS");
    float contas = Float.parseFloat(c);
    String nome = request.getParameter("NOME_ESTOQUE");
    
    Estoque estoque = new Estoque(0, nome, aluguel,contas);
    EstoqueControl estoquecont = new EstoqueControl();
    estoque = estoquecont.insereEstoque(estoque);

    // REDIRECIONA PARA A PAG NOMEC.JSP
    String url = "inserirEstoque.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=nome%> <BR>
        <%=aluguel%>  <BR>  
        <%=contas%> <BR>
    </BODY>
</HTML>
