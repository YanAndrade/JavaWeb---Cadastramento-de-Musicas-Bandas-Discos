<%-- 
    Document   : excluir
    Created on : Sep 15, 2019, 10:10:53 AM
    Author     : guilherme
--%>

<%@page import="br.com.fatecpg.musica.Db"%>
<%@page import="br.com.fatecpg.musica.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Dados contato = new Dados(null,null,null);
    if(request.getParameter("index") !=null){
        int index = Integer.parseInt(request.getParameter("index"));
        contato = Db.getDados().get(index);
    }
    if(request.getParameter("cancel") !=null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("remove") !=null){
        int index = Integer.parseInt(request.getParameter("index"));
        Db.getDados().remove(index);
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir - WebBandas</title>
    </head>
    <body>
        <h1>Bandas</h1>
        <h2>Excluir Bandas</h2>
        <form>
            Indice<br/><b><%= request.getParameter("index") %></b><br/>
            <input type="hidden" name="index" value="<%= request.getParameter("index") %>"/>
            <input type="submit" name="remove" value="Excluir"/>
            <input type="submit" name="cancel" value="Cancelar"/>
        </form>
    </body>
</html>