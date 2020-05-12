<%-- 
    Document   : list
    Created on : May 11, 2020, 8:49:13 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Fornecedor"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores Listagem</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h1>Fornecedores</h1>
        <h3><a href="add.jsp">Cadastrar Fornecedor</a></h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
            </tr>
            <%for (Fornecedor fornecedor: Db.getFornecedores()) {%>
            <tr>
                <td><%= fornecedor.getNome()%></td>
                <td><%= fornecedor.getRazaoSocial()%></td>
                <td><%= fornecedor.getCnpj()%></td>
                <td><%= fornecedor.getEmail()%></td>
                <td><%= fornecedor.getTelefone()%></td>
                <td><%= fornecedor.getEndereco()%></td>
                <td>
                    <%int index = Db.getFornecedores().indexOf(fornecedor); %>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
