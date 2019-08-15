<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backendxpto.bean.Cliente"%>
<%@page import="backendxpto.control.ClienteControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cliente cli = new Cliente(id,"","","","",0,"");
    ClienteControl cliCont = new ClienteControl();
    cli = cliCont.buscaCliente(cli);
    String cbusca = request.getParameter("CBUSCA");
    
    /*
    ClienteControl clientCont = new ClienteControl();
    Cliente cl = new Cliente(0,"","","","",0,"");
    List<Cliente> listaC = clientCont.ListaCliente(cl);*/
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CLIENTE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CLIENTE</h1>
        <form name="alterarCliente" action="validaAlterarCliente.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=cli.getNome()%>"> <br>
            CPF: <input type="text" name="CPF" value="<%=cli.getCpf()%>"> <br>
            Data de Nascimento: <input type="text" name="DATA_NASCIMENTO" value="<%=cli.getData_nasc()%>"> <br>
            Cidade: <input type="text" name="CIDADE" value="<%=cli.getCidadeC()%>"> <br>
            Tempo de Fidelidade(meses)  : <input type="text" name="TEMPO_FIDELIDADE" value="<%=cli.getTempoFid()%>"> <br>
            Contato: <input type="text" name="CONTATO" value="<%=cli.getContato()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=cli.getId()%>"> <br/>
            <input type="HIDDEN" name="CBUSCA" value="<%=cbusca%>"> <br/>
            <input type="submit" name="Enviar" value="OK"/>
        </form>
        </div>
    </body>
</html>