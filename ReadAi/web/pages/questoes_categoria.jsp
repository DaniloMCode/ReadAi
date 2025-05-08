<%-- 
    Document   : questoes_categoria
    Created on : 8 de mai. de 2025, 17:38:33
    Author     : morat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Estilo/questoes_categoria.css">

        <title>JSP Page</title>
    </head>
    <body>
      <div class="container">
  <div class="row g-3 align-items-center">
    <div class="col-md-3">
      <label for="disciplina" class="form-label">Disciplina*</label>
      <select class="form-select" id="disciplina">
        <option selected>Português (28593)</option>
        <option value="1">Matemática</option>
        <option value="2">História</option>
        <option value="3">Geografia</option>
      </select>
    </div>
    <div class="col-md-3">
      <label for="instituicao" class="form-label">Instituição</label>
      <select class="form-select" id="instituicao">
        <option selected>Todas Instituições</option>
        <option value="1">Universidade A</option>
        <option value="2">Instituto B</option>
      </select>
    </div>
    <div class="col-md-2">
      <label for="ano" class="form-label">Ano</label>
      <select class="form-select" id="ano">
        <option selected>Todos Anos</option>
        <option value="2024">2024</option>
        <option value="2023">2023</option>
      </select>
    </div>
    <div class="col-md-3">
      <label for="dificuldade" class="form-label">Dificuldade</label>
      <div class="input-group">
        <select class="form-select" id="dificuldade">
          <option selected>Fácil, Médio, Difícil</option>
          <option value="facil">Fácil</option>
          <option value="medio">Médio</option>
          <option value="dificil">Difícil</option>
        </select>
        <button class="btn btn-outline-secondary" type="button" id="button-addon2">
          <i class="bi bi-funnel-fill"></i>
        </button>
      </div>
    </div>
  </div>

  <div class="row mt-3 g-3 align-items-center">
    <div class="col-md-6">
      <label for="procurarPor" class="form-label">Procurar por</label>
      <input type="text" class="form-control" id="procurarPor" placeholder="Digite um trecho da questão">
    </div>
    <div class="col-md-4">
      <label for="filtrosAvancados" class="form-label">Filtros avançados</label>
      <div class="input-group">
        <select class="form-select" id="filtrosAvancados">
          <option selected>Nenhum selecionado</option>
          <option value="assunto">Assunto</option>
          <option value="banca">Banca</option>
        </select>
        <button class="btn btn-outline-secondary" type="button" id="button-addon3">
          <i class="bi bi-bookmark-fill"></i>
        </button>
      </div>
    </div>
    <div class="col-md-2 d-flex align-items-end">
      <button type="button" class="btn btn-primary me-2" id="mostrarPesquisaAvancada">
        <i class="bi bi-filter-circle-fill"></i> Mostrar pesquisa avançada
      </button>
      <button type="button" class="btn btn-success">
        <i class="bi bi-search"></i> Buscar questões
      </button>
    </div>
  </div>

  <div class="card advanced-search-card shadow" id="advancedSearchCard">
    <div class="card-header">
      Filtros de Pesquisa Avançada
      <button type="button" class="btn-close float-end" id="closeAdvancedSearch"></button>
    </div>
    <div class="card-body">
      <div class="mb-3">
        <label for="assuntoAvancado" class="form-label">Assunto</label>
        <input type="text" class="form-control" id="assuntoAvancado" placeholder="Digite o assunto">
      </div>
      <div class="mb-3">
        <label for="bancaAvancada" class="form-label">Banca</label>
        <input type="text" class="form-control" id="bancaAvancado" placeholder="Digite a banca">
      </div>
      <button type="button" class="btn btn-primary">Filtrar</button>
    </div>
  </div>

  <div class="overlay" id="overlay"></div>
</div>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<script>
  const mostrarPesquisaAvancadaBtn = document.getElementById('mostrarPesquisaAvancada');
  const advancedSearchCard = document.getElementById('advancedSearchCard');
  const closeAdvancedSearchBtn = document.getElementById('closeAdvancedSearch');
  const overlay = document.getElementById('overlay');

  mostrarPesquisaAvancadaBtn.addEventListener('click', () => {
    advancedSearchCard.classList.add('active');
    overlay.classList.add('active');
  });

  closeAdvancedSearchBtn.addEventListener('click', () => {
    advancedSearchCard.classList.remove('active');
    overlay.classList.remove('active');
  });

  overlay.addEventListener('click', () => {
    advancedSearchCard.classList.remove('active');
    overlay.classList.remove('active');
  });
</script>
    </body>
</html>
