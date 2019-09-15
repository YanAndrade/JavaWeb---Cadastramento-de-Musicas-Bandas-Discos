<%-- 
    Document   : listadiscos
    Created on : Sep 15, 2019, 11:49:37 AM
    Author     : guilherme
--%>

<%@page import="br.com.fatecpg.musica.Db"%>
<%@page import="br.com.fatecpg.musica.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice - WebContatos</title>
    </head>
    <body>
        <%@include file="/WEB-INF/home.jspf"%>
        <h1>WebContatos</h1>
        <h2>Índice</h2>
        <h3><a href="incluir.jsp">Adicionar Contato </a></h3>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Discos</th>
                <th>Comandos</th>
            </tr>
            <%for(Dados c: Db.getDados()){%>
            <tr>
                <td><%= Db.getDados().indexOf(c)%></td>
                <td><%= c.getDisco()%></td>
                <td>
                    <a href="alterar.jsp?index=<%=Db.getDados().indexOf(c) %>">Alterar</a>
                    <a href="excluir.jsp?index=<%=Db.getDados().indexOf(c) %>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>