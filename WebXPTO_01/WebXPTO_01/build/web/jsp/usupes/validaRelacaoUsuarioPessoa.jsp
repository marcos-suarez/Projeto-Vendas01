<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.UsuarioPessoa"%>
<%@page import="backendxpto.control.UsuarioPessoaControl"%>

<%
    int idUsuario = Integer.parseInt(request.getParameter("ID_USUARIO"));
    int idPessoa = Integer.parseInt(request.getParameter("ID_PESSOA"));
    String obs = request.getParameter("OBS");
    UsuarioPessoa usupes = new UsuarioPessoa(0,idPessoa,idUsuario,obs);
    UsuarioPessoaControl usupescont = new UsuarioPessoaControl();
    usupes = usupescont.inserirUsuarioPessoa(usupes);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoUsuarioPessoa.jsp";
    response.sendRedirect(url);

%>