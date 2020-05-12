<%-- 
    Document   : set
    Created on : May 11, 2020, 10:22:45 PM
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
        if (request.getParameter("set") != null) {
            String nome = request.getParameter("nome");
            String razaoSocial = request.getParameter("razaoSocial");
            String cnpj = request.getParameter("cnpj");
            String email = request.getParameter("email");
            String tel = request.getParameter("telefone");
            String end = request.getParameter("endereco");
             if(nome.isEmpty()) error = "Nome não pode ser nulo";
                else if(email.isEmpty()) error = "Razão Social não pode ser nulo";
                else if(razaoSocial.isEmpty()) error = "CNPJ não pode ser nulo";
                else if(cnpj.isEmpty()) error = "RG não pode ser nulo";
                else if(email.isEmpty()) error = "E-mail não pode ser nulo";
                else if(tel.isEmpty()) error = "Telefone não pode ser nulo";
                else if(end.isEmpty()) error = "Endereço não pode ser nulo";
                else {
                        Fornecedor editFornecedor = new Fornecedor();
                        editFornecedor.setAttributes(nome, razaoSocial, cnpj, email, tel, end);
                        Db.getFornecedores().set(index, editFornecedor);
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
        <title>Alterar Fornecedor</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h2><a href="list.jsp">Fornecedores</a></h2>
        <h3>Alterar Fornecedor</h3>
        <% if (error != null) {%>
        <div style="color:red"><%=error%></div>
        <% }%>
        <form method="post">
            Nome:<br/>
            <input type="text" name="nome" value="<%= fornecedor.getNome()%>"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaoSocial" value="<%= fornecedor.getRazaoSocial()%>"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpj" value="<%= fornecedor.getCnpj()%>"/><br/>
            E-mail:<br/>
            <input type="email" name="email" value="<%= fornecedor.getEmail()%>"/><br/>
            Telefone:<br/>
            <input type="tel" name="telefone" value="<%= fornecedor.getTelefone()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%= fornecedor.getEndereco()%>"/><br/><br/>
            
            
            <input type="submit" name="set" value="Alterar">
            <button><a href="list.jsp">Voltar</a></button>
        </form>
    </body>
</html>
