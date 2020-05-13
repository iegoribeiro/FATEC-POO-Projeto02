<%-- 
    Document   : remove
    Created on : May 11, 2020, 9:47:16 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Cliente"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/header.jspf" %>        
<%@include file="../WEB-INF/jspf/menu.jspf" %>
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
        <link href="<%= request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
        <title>Remover Cliente</title>
    </head>
    <body>
        <div class="container">
            <div class="shadow-lg p-2 m-5 bg-light rounded">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <center><h1>Remover Cliente</h1></center>
                    
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
                        
                        <hr class="mb-4">
                        <div class="text-right mb-3">
                            <input class="btn btn-outline-secondary" type="submit" name="remove" value="Remover">
                            <a class="btn btn-outline-secondary" href="list.jsp">Voltar</a>
                        </div>
                        
                    </form>
                </div>
            </div>
                    
            <footer>
                <%@include file="../WEB-INF/jspf/rodape.jspf" %>
            </footer>
        </div>
                
    </body>
</html>
