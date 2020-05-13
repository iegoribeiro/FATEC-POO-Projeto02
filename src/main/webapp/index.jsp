<%-- 
    Document   : index
    Created on : May 11, 2020, 8:04:33 PM
    Author     : iego_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jspf/headerIndex.jspf" %>        
<%@include file="/WEB-INF/jspf/menu.jspf" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 02 - POO</title>
        <header class="masthead" style="background-image: url('home-bg.jpg')">
            <div class="overlay"></div>
            <div class="container">
              <div class="row">
                <div class="col-lg-8 col-md-10 mx-auto">
                  <div class="site-heading">
                    <h1>Controle de Cadastros</h1>
                    <span class="subheading">TP02 - Programação Orientada Objetos</span>
                  </div>
                </div>
              </div>
            </div>
      </header>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-12 mx-auto">
                    <center><label><img src="avatar.png" width=100 height=80></label></center>
                    <center><label>Giovanni Santos Dangelo</label></center>
                </div>
                <div class="col-lg-2 col-md-12 mx-auto">
                    <center><label><img src="avatar.png" width=100 height=80></label></center>
                    <center><label>Iego Aguiar Ribeiro</label></center>
                </div>
                <div class="col-lg-2 col-md-12 mx-auto">
                    <center><label><img src="avatar.png" width=100 height=80></label></center>
                    <center><label>Rodrigo Vieira Lopes</label></center>
                </div>
                <div class="col-lg-2 col-md-12 mx-auto">
                    <center><label><img src="avatar.png" width=100 height=80></label></center>
                    <center><label>Thifany Adelli de Holanda Campos</label></center>
                </div>
            </div>   
        </div>
        <footer>
          <%@include file="/WEB-INF/jspf/rodape.jspf" %>
        </footer>
    </body>
</html>
