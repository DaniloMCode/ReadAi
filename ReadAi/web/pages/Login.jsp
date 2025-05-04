<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Entrar - ReadIA</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="../Estilo/styleCadLog.css"
        
    </head>
    <body>
        <main>
            <div class="container">
                <div class="text-center mb-4">
                   
                    <h2>Entre na sua conta ReadIA</h2>
                </div>

                <ul class="nav nav-tabs justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" id="login-tab" onclick="mostrarForm('login')">Entrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="cadastro-tab" onclick="mostrarForm('cadastro')">Criar conta</a>
                    </li>
                </ul>

                <form id="login-form" class="active" action="/loginServlet" method="post">
                    <div class="form-group">
                        <label for="login-email">E-mail</label>
                        <input type="email" class="form-control" id="login-email" name="email" placeholder="Digite seu e-mail">
                    </div>
                    <div class="form-group">
                        <label for="login-senha">Senha</label>
                        <input type="password" class="form-control" id="login-senha" name="senha" placeholder="Digite sua senha">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Entrar</button>
                </form>

             <form id="cadastro-form" class="active">
            <div class="form-group">
                <label for="cadastro-nome">Seu nome</label>
                <input type="text" class="form-control" id="cadastro-nome">
            </div>
            <div class="form-group">
                <label for="cadastro-sobrenome">Seu sobrenome</label>
                <input type="text" class="form-control" id="cadastro-sobrenome">
            </div>
            <div class="form-group">
                <label for="cadastro-telefone">Telefone</label>
                <input type="tel" class="form-control" id="cadastro-telefone">
            </div>
            <div class="form-group">
                <label for="cadastro-cpf">CPF</label>
                <input type="text" class="form-control" id="cadastro-cpf">
            </div>
            <div class="form-group">
                <label for="cadastro-email">E-mail</label>
                <input type="email" class="form-control" id="cadastro-email">
            </div>
            <div class="form-group">
                <label for="cadastro-confirmarEmail">Confirmar e-mail</label>
                <input type="email" class="form-control" id="cadastro-confirmarEmail">
            </div>
            <div class="form-group">
                <label for="cadastro-senha">Senha</label>
                <input type="password" class="form-control" id="cadastro-senha">
            </div>
            <div class="form-group">
                <label for="cadastro-confirmarSenha">Confirmar senha</label>
                <input type="password" class="form-control" id="cadastro-confirmarSenha">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Criar conta</button>
        </form>
</div>
</main>

<script>
    function mostrarForm(formId) {
        const cadastroForm = document.getElementById('cadastro-form');
        const loginForm = document.getElementById('login-form');
        const cadastroTab = document.getElementById('cadastro-tab');
        const loginTab = document.getElementById('login-tab');

        cadastroForm.classList.remove('active');
        loginForm.classList.remove('active');
        cadastroTab.classList.remove('active');
        loginTab.classList.remove('active');

        if (formId === 'cadastro') {
            cadastroForm.classList.add('active');
            cadastroTab.classList.add('active');
        } else if (formId === 'login') {
            loginForm.classList.add('active');
            loginTab.classList.add('active');
        }
    }

    // Inicialmente mostrar o formulário de login
    mostrarForm('login');
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>