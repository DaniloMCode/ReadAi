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
        
        
        
      // Item do menu clicado na sidebar fica visualmente destacado.  
        
        
        
        document.addEventListener('DOMContentLoaded', function() {
    const sidebarNav = document.getElementById('sidebarNav');
    const navLinks = sidebarNav.querySelectorAll('.nav-link');

    navLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            // Remover a classe 'active' de todos os itens da lista
            sidebarNav.querySelectorAll('.nav-item').forEach(item => {
                item.classList.remove('active');
            });

            // Adicionar a classe 'active' ao item da lista pai do link clicado
            this.parentNode.classList.add('active');

            // O navegador seguirá o href do link para a nova página
        });

        // Opcional: Adicionar a classe 'active' ao item correspondente à página atual ao carregar
        const currentPage = window.location.pathname.split('/').pop(); // Obtém o nome do arquivo da URL
        if (link.getAttribute('href') === currentPage) {
            link.parentNode.classList.add('active');
        }
    });
});
