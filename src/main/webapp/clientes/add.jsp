<%-- 
    Document   : add
    Created on : May 11, 2020, 9:34:40 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Cliente"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String error = null;
    if(request.getParameter("add") != null) {
        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String email = request.getParameter("email");
        String tel = request.getParameter("telefone");
        String end = request.getParameter("endereco");
        if(nome.isEmpty()) error = "Nome não pode ser nulo";
            else if(email.isEmpty()) error = "E-mail não pode ser nulo";
            else if(cpf.isEmpty()) error = "CPF não pode ser nulo";
            else if(rg.isEmpty()) error = "RG não pode ser nulo";
            else if(email.isEmpty()) error = "E-mail não pode ser nulo";
            else if(tel.isEmpty()) error = "Telefone não pode ser nulo";
            else if(end.isEmpty()) error = "Endereço não pode ser nulo";
            else {
                Cliente cliente = new Cliente();
                cliente.setAttributes(nome, cpf, rg, email, tel, end);
                Db.getClientes().add(cliente);
                response.sendRedirect("list.jsp");
            }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Cadastrar Cliente</h3>
        <% if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            CPF:<br/>
            <input type="text" name="cpf"/><br/>
            RG:<br/>
            <input type="text" name="rg"/><br/>
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
