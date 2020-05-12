<%-- 
    Document   : add
    Created on : May 11, 2020, 10:22:27 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Fornecedor"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") != null) {
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String tel = request.getParameter("telefone");
        String end = request.getParameter("endereco");
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
            else if(razaoSocial.isEmpty()) error = "Razão Social não pode ser nulo";
            else if(cnpj.isEmpty()) error = "CNPJ não pode ser nulo";
            else if(email.isEmpty()) error = "E-mail não pode ser nulo";
            else if(tel.isEmpty()) error = "Telefone não pode ser nulo";
            else if(end.isEmpty()) error = "Endereço não pode ser nulo";
            else {
                Fornecedor fornecedor = new Fornecedor();
                fornecedor.setAttributes(nome, razaoSocial, cnpj, email, tel, end);
                Db.getFornecedores().add(fornecedor);
                response.sendRedirect("list.jsp");
            }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Fornecedor</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Cadastrar Fornecedor</h3>
        <% if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaoSocial"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpj"/><br/>
            E-mail:<br/>
            <input type="email" name="email"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco"/><br/><br/>
            
            <input type="submit" name="add" value="Adicionar">
            <button><a href="list.jsp">Voltar</a></button>
        </form>
    </body>
</html>
