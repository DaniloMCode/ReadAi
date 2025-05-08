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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <link rel="stylesheet" href="../Estilo/portal.css">
        <link rel="stylesheet" href="../Estilo/sideBar.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">

                <%@ include file="/WEB-INF/jspf/menu.jspf" %>

                <main class="col-md-9 col-lg-10 main-content">

                    <h2>Oi, Danilo :)</h2>

                    <div class="row mt-4">
                        <div class="col-md-4 mb-4">
                            <div class="card card-custom h-100">
                                <div class="card-body">
                                    <h5 class="card-title"><strong>Questões</strong></h5>
                                    <h5 class="card-title">Encontre mais de 50 mil questões em áreas de conhecimento diverso</h5>

                                    <a href="lista.jsp"class="btn btn-outline-primary mt-3 w-100">Responda</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="card card-custom h-100">
                                <div class="card-body">
                                   <h5 class="card-title"><strong>Provas</strong></h5>
                                    <h5 class="card-title">Faça provas de anos anteriores e chegue pertodo seu objetivo</h5>
                                    <a href="#" class="btn btn-outline-primary mt-3 w-100">Ver provas anteriores</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 mb-4">
                            <div class="card card-custom h-100">
                                <div class="card-body">
                                   <h5 class="card-title"><strong>Redação</strong></h5>
                                    <h5 class="card-title">Treine a comunicação escrita e transmita informações completas</h5>
                                    <a href="#" class="btn btn-outline-primary mt-3 w-100">Escrever a redação</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <h4><i class="bi bi-bar-chart-line me-2"></i> Minhas estatísticas <i class="bi bi-info-circle"></i></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="card shadow-sm border-0 rounded">
                                    <div class="card-body text-center">
                                        <h6 class="card-subtitle mb-2 text-muted">Questões no período</h6>
                                        <h2 class="card-title fw-bold">0</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="card shadow-sm border-0 rounded">
                                    <div class="card-body text-center">
                                        <h6 class="card-subtitle mb-2 text-muted">Tempo médio</h6>
                                        <h2 class="card-title fw-bold">0m 0s</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <div class="card shadow-sm border-0 rounded">
                                    <div class="card-body text-center">
                                        <h6 class="card-subtitle mb-2 text-muted">Taxa de acerto</h6>
                                        <h2 class="card-title fw-bold">0%</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-start">
                                <a href="#" class="text-decoration-none">Ver mais estatísticas</a>
                            </div>
                        </div>
                    </div>

                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <h4><i class="bi bi-bullseye me-2"></i> Minhas metas <i class="bi bi-info-circle"></i></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="card shadow-sm border-0 rounded">
                                    <div class="card-body text-center">
                                        <h6 class="card-subtitle mb-2 text-muted">Dias de estudos seguidos</h6>
                                        <h2 class="card-title fw-bold">0</h2>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 mb-3">
                                <div class="card shadow-sm border-0 rounded">
                                    <div class="card-body">
                                        <h6 class="card-subtitle mb-2 text-muted">Essa semana</h6>
                                        <div class="d-flex justify-content-around">
                                            <div class="text-center">
                                                <span class="fw-bold d-block">DOM</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                            <div class="text-center">
                                                <span class="fw-bold d-block">SEG</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                            <div class="text-center">
                                                <span class="fw-bold d-block">TER</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                            <div class="text-center">
                                                <span class="fw-bold d-block">QUA</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                            <div class="text-center">
                                                <span class="fw-bold d-block">QUI</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                            <div class="text-center">
                                                <span class="fw-bold d-block">SEX</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                            <div class="text-center">
                                                <span class="fw-bold d-block">SÁB</span>
                                                <i class="bi bi-fire" style="font-size: 1.5rem;"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </main>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="/Interatividade/InteracaoLogCad.js"></script>

    </body>
</html>