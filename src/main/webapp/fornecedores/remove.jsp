<%-- 
    Document   : remove
    Created on : May 11, 2020, 10:22:37 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Fornecedor"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Remover Fornecedor</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2><a href="list.jsp">Fornecedor</a></h2>
        <h3>Remover Fornecedor?</h3>
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
            <br/><br/>
            <input type="submit" name="remove" value="Remover">
            <button><a href="list.jsp">Voltar</a></button>
        </form>
    </body>
</html>
