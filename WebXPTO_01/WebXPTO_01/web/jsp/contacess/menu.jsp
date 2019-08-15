<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Usuario"%>
<%@page import="backendxpto.control.UsuarioControl"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usu = new Usuario(0,login,senha);
    UsuarioControl usucont = new UsuarioControl();
    usu = usucont.validaLogin(usu);
    session.setAttribute("UsuarioLogado",usu);
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <style>
        
        .btn {
            background-color: #00004d;
        }
        
        .btn:hover {
            background-color: #0d47a1;
        }
        
        .btn:focus {
            background-color: #00004d;
        }
        
        .dropdown-button.btn:active {
           background-color: #0d47a1;
             
        }
        
        .dropdown-content {
            background-color: #0d47a1;
        }
        
        .dropdown-content:focus {
            color: white;
        }
       
        .dropdown-content li>a {
            color:white;
            text-shadow: 5px 5px 5px rbga(0,0,0,0.5);
            box-shadow: 5px 5px 5px rgba(0,0,0,0.5);
        }
        
        .dropdown-content li>a:hover {
            background-color: #e6f2ff;
            color: black;
        }
      
        
    </style>
    <body>
        <% if (!usu.getStatus().equals("")) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Controle de Acesso</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>CLIENTE</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>PRODUTO</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>ESTOQUE</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown7'>PEDIDO</a>
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> Inserir Usuário </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> Consultar Usuario</a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> Consultar Usuário</a></li>
                </ul>
            <% } %>
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> Inserir Pessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> Consultar Pessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> Consultar Pessoa </a></li>
                </ul>
            <% } %>
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> Inserir UsuarioPessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> Consultar UsuarioPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuarioPessoa.jsp"> Consultar UsuarioPessoa </a></li>
                </ul>
            <% } %>
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown4 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../cliente/inserirCliente.jsp"> Inserir Cliente </a></li>
                    <li><a href="../cliente/consultarCliente.jsp"> Consultar Cliente </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../cliente/consultarCliente.jsp"> Consultar Cliente </a></li>
                </ul>
            <% } %>
             <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown5 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../produto/inserirProduto.jsp"> Inserir Produto </a></li>
                    <li><a href="../produto/consultarProduto.jsp"> Consultar Produto </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../produto/consultarProduto.jsp"> Consultar Produto </a></li>
                </ul>
            <% } %>
            
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../estoque/inserirEstoque.jsp"> Inserir Estoque </a></li>
                    <li><a href="../estoque/consultarEstoque.jsp"> Consultar Estoque </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../estoque/consultarEstoque.jsp"> Consultar Estoque </a></li>
                </ul>
            <% } %>
            
            <% if (usu.getTipo().equals("ADM")) { %>
                <!-- Dropdown7 Structure -->
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../pedido/inserirPedido.jsp"> Inserir Pedido </a></li>
                    <li><a href="../pedido/consultarPedido.jsp"> Consultar Pedido </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../pedido/consultarPedido.jsp"> Consultar Pedido </a></li>
                </ul>
            <% } %>
            
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>