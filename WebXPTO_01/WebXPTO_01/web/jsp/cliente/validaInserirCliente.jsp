<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="backendxpto.control.ClienteControl"%>

<%
    int tempof = Integer.parseInt(request.getParameter("TEMPO_FIDELIDADE"));
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String datan = request.getParameter("DATA_NASCIMENTO");
    String cidade = request.getParameter("CIDADE");      
    String contato = request.getParameter("CONTATO");
   
    Cliente cliente = new Cliente(0, nome, cpf , datan, cidade, tempof, contato);
    ClienteControl clientecont = new ClienteControl();
    cliente = clientecont.insereCliente(cliente);
    // REDIRECIONA PARA A PAG NOMEC.JSP
    String url = "inserirCliente.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=nome%> <BR>
        <%=cpf%>  <BR>
        <%=datan%>   <BR>
        <%=cidade%>  <BR>  
        <%=tempof%> <BR>
        <%=contato%>  <BR>
    </BODY>
</HTML>
