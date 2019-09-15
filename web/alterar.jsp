
<%@page import="br.com.fatecpg.musica.Db"%>
<%@page import="br.com.fatecpg.musica.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Dados dados = new Dados(null, null, null);
    if(request.getParameter("index")!=null){
        int index = Integer.parseInt(request.getParameter("index"));
        dados = Db.getDados().get(index);
    }
    
    if(request.getParameter("cancel") != null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("set") != null){
        int index = Integer.parseInt(request.getParameter("index"));
        String musica = request.getParameter("musica");
        String banda = request.getParameter("banda");
        String disco = request.getParameter("disco");
        Dados c = new Dados(musica, banda, disco);
        Db.getDados().set(index, c);
        response.sendRedirect("index.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Web-Contatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Alterar Contato</h2>
         <form>
            Índice:<br/>
            <%= request.getParameter("index")%></br>
            <input type="hidden" name="index"
                   value="<%=request.getParameter("index")%>"/>
            Musica:<br/>
            <input type="text" name="musica"
                   value="<%=dados.getMusica()%>"/><br/>
            Banda:<br/>
            <input type="text" name="banda"
                    value="<%=dados.getBanda()%>"/><br/>
            Disco:<br/>
            <input type="text" name="disco"
                   value="<%=dados.getDisco()%>"/><br/><br/>
            
            <input type="submit" name="set" value="Alterar"/>
            <input type="submit" name="cancel" value="Cancelar"/>
        </form>
    </body>
</html>
