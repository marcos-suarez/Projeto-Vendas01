 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="backendxpto.control.ClienteControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cliente cli = new Cliente(id,"","","","",0,"");
    ClienteControl cliCont = new ClienteControl();
    cli = cliCont.excluiCliente(cli);
    String cebusca = request.getParameter("CEBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCliente.jsp?ITEM=" + cebusca;
    response.sendRedirect(url);
%>