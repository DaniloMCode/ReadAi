 function mostrarForm(formId) {
            const cadastroForm = document.getElementById('cadastro-form');
            const loginForm = document.getElementById('login-form');
            const cadastroTab = document.getElementById('cadastro-tab');
            const loginTab = document.getElementById('login-tab');
            const formTitle = document.querySelector('.text-center h2'); // Seleciona o título h2

            cadastroForm.classList.remove('active');
            loginForm.classList.remove('active');
            cadastroTab.classList.remove('active');
            loginTab.classList.remove('active');

            if (formId === 'cadastro') {
                cadastroForm.classList.add('active');
                cadastroTab.classList.add('active');
                formTitle.textContent = 'Crie aqui sua conta ReadIA'; // Atualiza o título
            } else if (formId === 'login') {
                loginForm.classList.add('active');
                loginTab.classList.add('active');
                formTitle.textContent = 'Entre na sua conta ReadIA'; // Atualiza o título
            }
        }

        // Inicialmente mostrar o formulário de cadastro
        mostrarForm('cadastro');
