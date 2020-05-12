<%-- 
    Document   : list
    Created on : May 11, 2020, 8:49:07 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Cliente"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes - Listagem</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/header.jspf"%>
        <h1>Clientes</h1>
        <h3><a href="add.jsp">Cadastrar clientes</a></h3>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
            </tr>
            <%for (Cliente cliente: Db.getClientes()) {%>
            <tr>
                <td><%= cliente.getNome()%></td>
                <td><%= cliente.getCpf()%></td>
                <td><%= cliente.getRg()%></td>
                <td><%= cliente.getEmail()%></td>
                <td><%= cliente.getTelefone()%></td>
                <td><%= cliente.getEndereco()%></td>
                <td>
                    <%int index = Db.getClientes().indexOf(cliente); %>
                    <a href="set.jsp?index=<%=index%>">Alterar</a>
                    <a href="remove.jsp?index=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
