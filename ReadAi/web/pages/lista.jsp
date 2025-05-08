<%-- 
    Document   : lista
    Created on : 5 de mai. de 2025, 21:45:39
    Author     : morat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="../Estilo/portal.css">
    <link rel="stylesheet" href="../Estilo/sideBar.css">

        <title>JSP Page</title>
        
        <style>
        .central-box {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%; /* Ensure it takes full height of its container */
        }
    </style>
    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
          
                <%@ include file="/WEB-INF/jspf/menu.jspf" %>
           
            <div class="col-md-9">
                <div class="central-box">
                    <img src="imagens/livro-oculos.png" alt="Livro com óculos" class="ilustracao">
                    <p class="texto-principal">
                        Crie sua primeira<br>
                        <strong>lista de exercícios personalizada</strong><br>
                        para começar a estudar!
                    </p>
                    <a href="criarLista.jsp" class="btn-principal">
                        <i class="fas fa-list-ul"></i> Montar minha lista
                    </a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
   
</html>
