<%-- 
    Document   : remove
    Created on : May 11, 2020, 10:22:37 PM
    Author     : giovanni
--%>

<%@page import="poo.projeto2.Fornecedor"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/header.jspf" %>        
<%@include file="../WEB-INF/jspf/menu.jspf" %>
<!DOCTYPE html>
<%
    String error = null;
    Fornecedor fornecedor = null;
    int index = -1;
    try {
        index = Integer.parseInt(request.getParameter("index"));
        fornecedor = Db.getFornecedores().get(index);
        if (request.getParameter("remove") != null) {
            Db.getFornecedores().remove(index);
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
        <title>Remover Fornecedor</title>
    </head>
    <body>
        <div class="container">
            <div class="shadow-lg p-2 m-5 bg-light rounded">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <center><h1>Remover Fornecedor</h1></center>
                    
                    <% if (error != null) {%>
                    <div style="color:red"><%=error%></div>
                    <% }%>
                    
                    <form method="post">
                        Nome:<br/>
                        <b><%= fornecedor.getNome() %></b><br/>
                        Razão Social:<br/>
                        <b><%= fornecedor.getRazaoSocial()%></b><br/>
                        CNPJ:<br/>
                        <b><%= fornecedor.getCnpj()%></b><br/>    
                        E-mail:<br/>
                        <b><%= fornecedor.getEmail()%></b><br/>
                        Telefone:<br/>
                        <b><%= fornecedor.getTelefone()%></b><br/>
                        Endereço:<br/>
                        <b><%= fornecedor.getEndereco()%></b><br/><br/>
                        
                        <hr class="mb-4">
                        <div class="text-right mb-3">
                            <input class="btn btn-outline-secondary" type="submit" name="remove" value="Remover">
                            <a class="btn btn-outline-secondary" href="list.jsp">Voltar</a>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
