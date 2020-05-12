<%-- 
    Document   : remove
    Created on : May 11, 2020, 9:47:16 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Cliente"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    Cliente cliente = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        cliente = Db.getClientes().get(index);
        if (request.getParameter("remove") != null) {
            Db.getClientes().remove(index);
            response.sendRedirect("list.jsp");
        }
    } catch (Exception e) {
        error = "Índice inválido";
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover Cliente</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2><a href="list.jsp">Cliente</a></h2>
        <h3>Remover Cliente?</h3>
        <% if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <b><%= cliente.getNome() %></b><br/>
            CPF:<br/>
            <b><%= cliente.getCpf()%></b><br/>
            RG:<br/>
            <b><%= cliente.getRg()%></b><br/>          
            E-mail:<br/>
            <b><%= cliente.getEmail()%></b><br/>
            Telefone:<br/>
            <b><%= cliente.getTelefone()%></b><br/>
            Endereço:<br/>
            <b><%= cliente.getEndereco()%></b><br/><br/>
            <br/><br/>
            <input type="submit" name="remove" value="Remover">
            <button><a href="list.jsp">Voltar</a></button>
        </form>
    </body>
</html>
