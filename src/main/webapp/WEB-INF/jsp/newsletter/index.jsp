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
        <div>Cadastro de Emails - Newsletter</div>
        <form action="adiciona">
            <fieldset>
                <legend>Adicionar email</legend>
                <label for="nome">Nome:</label>
                <input id="nome" type="text" name="newsletter.nome"/>
                <label for="email">Email</label>
                <input id="email" type="email" name="newsletter.email"/>
                <button type="submit">Enviar</button>
            </fieldset>
        </form>
    </body>
</html>
