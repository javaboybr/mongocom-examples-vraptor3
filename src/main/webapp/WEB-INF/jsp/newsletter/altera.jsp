<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sistema de cadastro Newsletter</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <body>
        <div>Alteraçao</div>
        <form action="../salva">
            <fieldset>
                <legend>Editar registro</legend>
                <input type="hidden" id="id" name="newsletter.id" value="${newsletter.id}"/>
                <label for="nome">Nome:</label>
                <input id="nome" type="text" name="newsletter.nome" value="${newsletter.nome}"/>
                <label for="email">Email</label>
                <input id="email" type="email" name="newsletter.email" value="${newsletter.email}"/>
                <button type="submit">Enviar</button>
            </fieldset>
        </form>
    </body>
</html>
