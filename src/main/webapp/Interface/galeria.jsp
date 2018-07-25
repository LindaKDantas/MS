<%@page import="java.util.Base64"%>
<%@page import="com.mycompany.memorias.DAO.MemoriaDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.memorias.Models.Memorias"%>
<%@page import="com.mycompany.memorias.Models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>Postagens de Memórias</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
        <link rel="stylesheet" href="assets/css/newcss.css" />
    </head>
    <body>
        <%Usuario u = (Usuario) request.getSession().getAttribute("usuario_logado");%>
        <div class="page-wrap">

            <!-- Nav -->
              <nav id="nav">
                <ul>
                    <li><a href="menu.jsp" title="Menu Inicial" class="active"><span class="icon fa-home"></span></a></li>
                    <li><a href="galeria.jsp" title="Galeria de Fotos"><span class="icon fa-camera-retro"></span></a></li>
                    <li><a href="Perfil.jsp" title="Meu Perfil"><span class="icon fa-file-text-o"></span></a></li>
                     <li><a href="menu.jsp" title="Sair" class="active"><span class="icon fa-sign-out-alt"></span></a></li>  
                     <li><a href="/Memorias/LoginUsuario" title="Sair" class="active"><span class="icon fa-sign-out-alt"></span></a></li>

                </ul>
            </nav>

            <!-- Main -->
            <section id="main">

                <!-- Header -->
                <header id="header">
                    <div>Clique nas figuras vê-las ampliadas.</div>
                </header>

                <!-- Gallery -->
                <section id="memory">

                    <!-- Photo Galleries -->
                    <div class="gallery">

                        <!-- Filters -->
                        <header>
                            <h1>Memórias</h1>
                            <h4>Pesquise pelo nome:</h4>
                            <h4>Procure por memórias específicas, </h4>
                            <form method="get" action="">
                                <input name="pesquisa" id="searching" type="search" placeholder="Procurar">
                            </form>
                        
                        </header>

                        <div class="content">

                            <%List<Memorias> memorias = MemoriaDAO.listarPorID(u.getEmail());
                                if (request.getParameter("pesquisa") == null) {
                                    memorias = MemoriaDAO.pesquisarPorNome("");
                                } else {
                                    String pesquisa = request.getParameter("pesquisa");
                                    memorias = MemoriaDAO.pesquisarPorNome(pesquisa);
                                }
                                if (memorias.size() > 0) {
                                    for (Memorias m : memorias) {%>
                            <div class="media all people">
                                <a href="data:image/jpg;base64,<%=Base64.getEncoder().encodeToString(m.getFoto())%>">
                                    <img src="data:image/jpg;base64,<%=Base64.getEncoder().encodeToString(m.getFoto())%>" alt="" title="<%=m.getNome()%>" />
                                </a>
                            </div>
                            <%}%>
                            <%}%>
                        </div>
                        <!--Pagination -->
                        <nav class="my-4 pt-2">
                            <ul class="pagination pagination-circle pg-dark-grey mb-0" id="pg-link">

                                <!--First-->
                                <li id="first-item" class="page-item disabled clearfix d-none d-md-block"><a class="page-link">Primeiro</a></li>

                                <!--Arrow left-->
                                <li id="previous" class="page-item disabled">
                                    <a class="page-link" aria-label="Anterior">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Anterior</span>
                                    </a>
                                </li>

                                <!--Arrow right-->
                                <li id="next" class="page-item">
                                    <a class="page-link" aria-label="Próximo">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Próximo</span>
                                    </a>
                                </li>

                                <!--Last-->
                                <li id="last-item" class="page-item clearfix d-none d-md-block"><a class="page-link">Último</a></li>

                            </ul>
                        </nav>
                        <!--/Pagination -->
                </section>

                <!-- Contact -->
                <section id="contact">
                    <!-- Social -->
                    <div class="social column">
                        <h3>Siga-me nas redes sociais</h3>
                        <ul class="icons">
                            <li><a href="https://www.facebook.com/linda.dasilvadantas?ref=bookmarks" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                            <li><a href="https://www.instagram.com/stou_linda/?hl=pt-br" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                        </ul>
                    </div>

                </section>

            </section>
        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.poptrox.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/paginacao.js"></script>

    </body>
</html>