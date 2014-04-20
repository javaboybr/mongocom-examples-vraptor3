<%@ page language="java" contentType="text/html; charset=US-ASCII"
         pageEncoding="US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
        <title>Sistema de cadastro Newsletter</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <table class="style-table">
            <tr><td>ID</td><td>Nome</td><td>Email</td><td></td><td></td></tr>
            <c:forEach items="${newsletterList}" var="newsletter1">
                <tr><td>${newsletter1.idIncremental}</td><td>${newsletter1.nome}</td><td>${newsletter1.email}</td><td><a href="altera/${newsletter1.id}">editar</a></td><td><a href="remove/${newsletter1.id}">remove</a></td></tr>
            </c:forEach>
        </table>
    </body>
</html>