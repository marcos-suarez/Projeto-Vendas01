<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <style>
    
    </style>
    <title>INSERIR - CLIENTE</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CLIENTE
            <img src="costumers.png" alt="Cliente" height="52" width="90" align="right"/></h1>
       <hr/>
        <form name="inserirCliente" action="validaInserirCliente.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            CPF: <input type="text" name="CPF" value=""> <br>
            Data de nascimento (AAAA-MM-DD): <input type="text" name="DATA_NASCIMENTO" value=""> <br>
            Cidade: <input type="text" name="CIDADE" value=""> <br>
            Tempo de fidelidade: <input type="text" name="TEMPO_FIDELIDADE" value=""> <br>
            Contato: <input type="text" name="CONTATO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
