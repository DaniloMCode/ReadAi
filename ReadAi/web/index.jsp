<%-- 
    Document   : index
    Created on : 16 de abr. de 2025, 16:34:49
    Author     : morat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Plataforma ReadAi</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&display=swap" rel="stylesheet">        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="Estilo/style.css">

    </head>
    <body>
        <!-- Cabeçalho -->
        <header class="bg-primary text-white py-3">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <a href="#" class="logo text-white text-decoration-none">
                            <h1>ReadAI</h1>
                        </a>
                    </div>

                    <div class="col-md-9 d-flex justify-content-end">
                        <nav class="navbar navbar-expand-md navbar-dark">
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Plano Escola</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Política de Privacidade</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Central de Ajuda</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Contato</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link btn btn-sm btn-info ml-md-2" href="pages/cadastro.jsp">Criar conta</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link btn btn-sm btn-info ml-md-2"href="pages/Login.jsp">Entrar</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <main class="bg-light py-5">
            <div class="container">


                <section class="boas-vindas">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <img src="imagem/img_main.jpg" alt="Imagem de boas-vindas" class="img-fluid rounded shadow-sm">
                        </div>
                        <div class="col-md-6 mt-4 mt-md-0">
                            <div class="texto">
                                <h2 class="mb-3">A plataforma para você treinar para o <span class="text-primary">Concurso</span> e <span class="text-primary">Vestibular</span></h2>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>    

        <footer class="bg-primary text-white py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center text-md-left">
                <div class="d-flex flex-column align-items-center align-items-md-start">
                    <img src="imagem/logo_pazzei_branco.png" alt="Logo Pazzei" height="30" class="mb-2">
                    <p class="mb-0">&copy; Pazzei 2025. Todos os direitos reservados.</p>
                    <p class="mb-0">
                        <a href="#" class="text-white">Política de privacidade</a> |
                        <a href="#" class="text-white">Termos de uso</a>
                    </p>
                </div>
            </div>
            <div class="col-md-6 text-center text-md-right">
                <div class="d-flex flex-column align-items-center align-items-md-end">
                    <nav class="nav flex-column align-items-center align-items-md-end mb-3">
                        <a class="nav-link text-white" href="#">Diferenciais</a>
                        <a class="nav-link text-white" href="#">Benefícios</a>
                        <a class="nav-link text-white" href="#">Planos</a>
                        <a class="nav-link text-white" href="#">Contato</a>
                    </nav>
                    <p class="text-center text-md-right mb-0">Desenvolvido por</p>
                    <p class="text-center text-md-right">Viptech - Smart Solutions</p>
                </div>
            </div>
        </div>
    </div>
</footer>
    </body>

</html>
