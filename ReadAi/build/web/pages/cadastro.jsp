<%-- 
    Document   : cadastro
    Created on : 26 de mar. de 2025, 14:50:06
    Author     : Guilherme
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Plataforma ReadAi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../Estilo/style.css">
        <link rel="stylesheet" href="../Estilo/formulario.css"
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&display=swap" rel="stylesheet">

    </head>
    <body>
        <%@include file="../WEB-INF/jspf/menu.jspf"%>
        <main>
        <!-- Conteúdo Principal -->
        <section class="boas-vindas">
    <div class="conteudo">
        <img src="../imagem/img_cadastro.png" alt="Imagem de boas-vindas" class="imagem">
        <div class="texto">
            <form class="formulario" action="/cadastroServlet" method="post">
                <label for="Nome">Nome</label>
                <input type="text" id="nome" name="nome" placeholder="Seu nome..." required><!-- comment -->
                
                <label for="Email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Seu email..." required>               
                
                
                <label for="Senha">Senha:</label>
                <input type="password" id="senha" name="senha" placeholder="Senha..." required>

                <label for="Date">Data de Nascimento:</label>
                <input type="date" id="date" name="date" placeholder="Sua data de aniversário..." required>

               <button type="submit" value="Cadastrar">Cadastrar</button>
            </form>
        </div>
    </div>
</section>
    </main>
        
    </body>
</html>
