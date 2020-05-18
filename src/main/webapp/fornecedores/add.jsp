<%-- 
    Document   : add
    Created on : May 16, 2020, 9:42:17 PM
    Author     : thifany_gomes
--%>

<%@page import="poo.projeto2.Fornecedor"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/header.jspf" %>        
<%@include file="../WEB-INF/jspf/menu.jspf" %>
<!DOCTYPE html>
<%
    String error = null;
    if (request.getParameter("add") != null) {
        String nome = request.getParameter("nome");
        String razaoSocial = request.getParameter("razaoSocial");
        String cnpj = request.getParameter("cnpj");
        String email = request.getParameter("email");
        String tel = request.getParameter("telefone");
        String end = request.getParameter("endereco");
        if (nome.isEmpty()) {
            error = "Nome não pode ser nulo";
        } else if (razaoSocial.isEmpty()) {
            error = "Razão Social não pode ser nulo";
        } else if (cnpj.isEmpty()) {
            error = "CNPJ não pode ser nulo";
        } else if (email.isEmpty()) {
            error = "E-mail não pode ser nulo";
        } else if (tel.isEmpty()) {
            error = "Telefone não pode ser nulo";
        } else if (end.isEmpty()) {
            error = "Endereço não pode ser nulo";
        } else {
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
        <link href="<%= request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
        <title>Cadastrar Fornecedor</title>
    </head>
    <body>
        <div class="container">
            <div class="shadow-lg p-2 m-5 bg-light rounded">
                <div class="col-lg-8 col-md-10 mx-auto">
                    <center><h1>Cadastrar Fornecedor</h1></center>
                        <% if (error != null) {%>
                    <div style="color:red"><%=error%></div>
                    <% }%>
                    <form method="post">
                        <div class="marginEntradaDados">
                            <label><b> Nome </b></label><br/>
                            <input type="text" name="nome" class="form-control" placeholder="Nome" required/>
                        </div>
                        <div class="marginEntradaDados">
                            <label><b> Razão Social </b></label><br/>
                            <input type="text" name="razaoSocial" class="form-control" placeholder="Razão Social" required/>
                        </div>
                        <div class="marginEntradaDados">
                            <label><b> CNPJ </b></label><br/>
                            <input type="text" name="cnpj" class="form-control" placeholder="00.000.000/0001-00" required/>
                        </div>
                        <div class="marginEntradaDados">
                            <label><b> E-mail </b></label><br/>
                            <input type="text" name="email" class="form-control" placeholder="empresa@empresa.com" required/>
                        </div>
                        <div class="marginEntradaDados">
                            <label><b> Telefone </b></label><br/>
                            <input type="text" name="telefone" class="form-control" placeholder="(99)99999-9999" required/>
                        </div>
                        <div class="marginEntradaDados">
                            <label><b> Endereço </b></label><br/>
                            <input type="text" name="endereco" class="form-control" placeholder="Logradouro, nº. XX - Bairro, Cidade/XX" required/>
                        </div>
                        <hr class="mb-4">
                        <div class="text-right mb-3">
                            <input  class="btn btn-outline-secondary" type="submit" name="add" value="Adicionar">
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