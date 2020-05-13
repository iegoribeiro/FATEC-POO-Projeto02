<%-- 
    Document   : list
    Created on : May 11, 2020, 8:49:07 PM
    Author     : iego_
--%>

<%@page import="poo.projeto2.Cliente"%>
<%@page import="poo.projeto2.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../WEB-INF/jspf/header.jspf" %>        
<%@include file="../WEB-INF/jspf/menu.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath() %>/css/style.css" rel="stylesheet" type="text/css" />
        <title>Clientes - Listagem</title>
    </head>
    <body>
        
        <div class="container">
            <center><h1 class="mt-5 mb-5">Cadastrar Cliente</h1></center>

            <div class="row">
                <table class="table table-bordered table-hover">
                    <tr class="thead-light">
                        <th scope="col">Nome</th>
                        <th scope="col">CPF</th>
                        <th scope="col">RG</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Endereço</th>
                        <th scope="col">Ações</th>                        
                    </tr>
                    <%for (Cliente cliente: Db.getClientes()) {%>
                    <tr>
                        <td scope="row"><%= cliente.getNome()%></td>
                        <td scope="row"><%= cliente.getCpf()%></td>
                        <td scope="row"><%= cliente.getRg()%></td>
                        <td scope="row"><%= cliente.getEmail()%></td>
                        <td scope="row"><%= cliente.getTelefone()%></td>
                        <td scope="row"><%= cliente.getEndereco()%></td>
                        <td scope="row">
                            <%int index = Db.getClientes().indexOf(cliente); %>
                            <a href="set.jsp?index=<%=index%>">Alterar</a>
                            <a href="remove.jsp?index=<%=index%>">Excluir</a>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </div>

            <hr class="mb-4">
            <div class="text-right mb-3">
                <a class="btn btn-outline-secondary" href="add.jsp">Cadastrar cliente</a>
            </div>

        </div>
        
        <footer>
            <%@include file="../WEB-INF/jspf/rodape.jspf" %>
        </footer>
    </body>
</html>
