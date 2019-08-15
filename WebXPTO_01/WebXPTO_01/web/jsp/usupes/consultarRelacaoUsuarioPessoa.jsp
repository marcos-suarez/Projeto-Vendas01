<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - USUÁRIO - PESSOA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR USUÁRIO - PESSOA
           <img src="../lupa.png" alt="Lupa" height="60" width="60" align="right"/></h1><hr/>
       <form name="consultarUsuario" action="validaConsultarRelacaoUsuarioPessoa.jsp" method="post">
           Observação: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
