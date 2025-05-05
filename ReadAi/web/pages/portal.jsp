<%-- 
    Document   : portal
    Created on : 5 de mai. de 2025, 08:56:57
    Author     : morat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
      
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Painel - ReadIA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../Estilo/portal.css">
   </head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3 col-lg-2 sidebar d-flex flex-column p-3">
            <div class="brand">readai</div>
            <ul class="nav flex-column mb-auto">
                <li class="nav-item"><a class="nav-link" href="#">Início</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Montar lista</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Provas anteriores</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Treine para o Enem</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Listas compartilhadas</a></li>
            </ul>
            <hr>
            <div>
                <a class="d-block mb-2" href="#">Minha conta</a>
                <a class="d-block" href="#">Sair</a>
            </div>
        </div>

        <!-- Conteúdo principal -->
        <div class="col-md-9 col-lg-10 p-4">
            <h2>Oi, Danilo :)</h2>
            

            <div class="row mt-4">
                <div class="col-md-4 mb-4">
                    <div class="card card-custom h-100">
                        <div class="card-body">
                            <h5 class="card-title">Crie listas de exercícios com questões oficiais</h5>
                            <a href="#" class="btn btn-outline-primary mt-3 w-100">Montar minha lista</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card card-custom h-100">
                        <div class="card-body">
                            <h5 class="card-title">Responda provas anteriores e simule de concursos ou vestibulares</h5>
                            <a href="#" class="btn btn-outline-primary mt-3 w-100">Ver provas anteriores</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card card-custom h-100">
                        <div class="card-body">
                            <h5 class="card-title">Com foco em escrita e redação</h5>
                            <a href="#" class="btn btn-outline-primary mt-3 w-100">Treinar para vestibular e concursos</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

    
