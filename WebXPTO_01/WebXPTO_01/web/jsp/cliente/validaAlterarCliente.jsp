<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="backendxpto.control.ClienteControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String datanasc = request.getParameter("DATA_NASCIMENTO");
    String cidade = request.getParameter("CIDADE");
    String tf = request.getParameter("TEMPO_FIDELIDADE");
    int tempofid = Integer.parseInt(tf);
    String contato = request.getParameter("CONTATO");
    String cbusca = request.getParameter("CBUSCA");

    Cliente cli = new Cliente(id,nome,cpf,datanasc,cidade,tempofid,contato);
    ClienteControl clienteCont = new ClienteControl();
    cli = clienteCont.alteraCliente(cli);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCliente.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>