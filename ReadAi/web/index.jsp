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
    <header>
        <div class="header-container">
            <!-- Logo e Nome ReadAi -->
            <a href="#" class="logo">
                <h1>ReadAI</h1>
            </a>

            <!-- Barra de Navegação -->
            <nav>
                <!-- Dropdown de Vestibulares -->
                <div class="dropdown">
                    <button class="dropdown-button">Vestibulares</button>
                    <div class="dropdown-content">
                        <a href="#">Enem</a>
                        <a href="#">FUVEST</a>
                        <a href="#">UNICAMP</a>
                        <a href="#">UNESP</a>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <main>
        <!-- Conteúdo Principal -->
        <section class="boas-vindas">
    <div class="conteudo">
        <img src="imagem/img_main.jpg" alt="Imagem de boas-vindas" class="imagem">
        <div class="texto">
           <h2>Bem-vindo à Plataforma ReadIA</h2>
            <p>Escolha um vestibular e comece a estudar agora mesmo!</p>
            <div>
                <a href="#" class="botao_entra">Entrar</a>
                <a href="pages/cadastro.jsp" class="botao_cadastro">Cadastrar</a>
            </div>
        </div>
    </div>
</section>
    </main>
            
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
   
</html>
