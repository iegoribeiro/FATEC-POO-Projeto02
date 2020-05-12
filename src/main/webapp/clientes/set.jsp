<%-- 
    Document   : set
    Created on : May 11, 2020, 9:59:23 PM
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
        if (request.getParameter("set") != null) {
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
                        Cliente editCliente = new Cliente();
                        editCliente.setAttributes(nome, cpf, rg, email, tel, end);
                        Db.getClientes().set(index, editCliente);
                        response.sendRedirect("list.jsp");
                }
        }
        
    } catch (Exception e) {
        error = "Índice inválido";
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2><a href="list.jsp">Clientes</a></h2>
        <h3>Alterar Clientes</h3>
        <% if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%= cliente.getNome()%>"/><br/>
            CPF:<br/>
            <input type="text" name="cpf" value="<%= cliente.getCpf()%>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%= cliente.getRg()%>"/><br/>
            E-mail:<br/>
            <input type="email" name="email" value="<%= cliente.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone" value="<%= cliente.getTelefone()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%= cliente.getEndereco()%>"/><br/><br/>
            
            
            <input type="submit" name="set" value="Alterar">
            <button><a href="list.jsp">Voltar</a></button>
        </form>
    </body>
</html>
