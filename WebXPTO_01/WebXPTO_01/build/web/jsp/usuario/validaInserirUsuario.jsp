<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Usuario"%>
<%@page import="backendxpto.control.UsuarioControl"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");
    Usuario usu = new Usuario(0,login,senha,status,tipo);
    UsuarioControl usucont = new UsuarioControl();
    usu = usucont.insereUsuario(usu);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirUsuario.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=login%>  <BR>
        <%=senha%>  <BR>
        <%=status%> <BR>
        <%=tipo%>   <BR>
    </BODY>
</HTML>
