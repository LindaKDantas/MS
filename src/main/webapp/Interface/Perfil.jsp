<%@page import="java.util.Base64"%>
<%@page import="com.mycompany.memorias.Models.Usuario"%>
<%@page import="com.mycompany.memorias.Models.Memorias"%>
<%@page import="com.mycompany.memorias.DAO.MemoriaDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>Seu Perfil</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body>
        <%Usuario u = (Usuario) request.getSession().getAttribute("usuario_logado");%>
        <%List<Memorias> memorias = MemoriaDAO.listarPorID(u.getEmail());%>
        <div class="page-wrap">

            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="menu.jsp" title="Menu Inicial"><span class="icon fa-home"></span></a></li>
                    <li><a href="galeria.jsp" title="Galeria de Fotos"><span class="icon fa-camera-retro"></span></a></li>
                    <li><a href="Perfil.jsp" title="Meu Perfil" class="active"><span class="icon fa-file-text-o"></span></a></li>
                    <li><a href="menu.jsp" title="Sair" class="active"><span class="icon fa-sign-out-alt"></span></a></li>
                </ul>
            </nav>

            <!-- Main -->
            <section id="main">

                <!-- Header -->
                <header id="header">
                    <div><%=u.getNome()%></div>
                </header>

                <!-- Section -->
                <section>
                    <div class="inner">
                        <header>
                            <h1>Quem sou eu?</h1>
                        </header>

                        <p> Meu nome é Linda Karoline Dantas, mas ninguém me chama de Karoline; <br>
                            Por hora eu só quero conseguir entregar meu projeto sem ter de cortar os pulsos para isso.
                            Não costumo desistir então, vamos em frente.<br>
                            <a class="button" href="AlterarPerfil.jsp">Alterar Informações</a></p>

                        <header>
                            <h1>Memórias<h4></h4></h1><br></header>
                        <section class="columns double">
                            <%if (memorias.size() > 0) {
                                    for (Memorias m : memorias) {%>
                            <div class="column">
                                <%request.getSession().setAttribute("memoria", m);%>
                                <span class="image left special"><img src="data:image/jpg;base64,<%=Base64.getEncoder().encodeToString(m.getFoto())%>" alt="Infancia" /></span>
                                <h3><%=m.getNome()%></h3>
                                <p><%=m.getDescricao()%></p>
                                <center><p><a href="edit.jsp" class="button">Editar</a></p></center>
                            </div>
                            <%}%>
                            <%}%>
                            <div align="middle" class="column">
                                <middle><a align="center" class="button" href="createMemory.jsp">Adicionar nova Memória</a></middle>
                            </div>


                        </section>
                    </div>
                </section>

                <!-- Contact -->
                <section id="contact">
                    <!-- Social -->
                    <div class="social column">
                        <h3>Siga nossas redes sociais</h3>
                        <ul class="icons">
                            <li><a href="https://www.facebook.com/linda.dasilvadantas?ref=bookmarks" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                             <li><a href="https://www.instagram.com/stou_linda/?hl=pt-br" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                        </ul>
                    </div>

                    <!-- Form -->
                    <div class="column">
                        <h3>Alguma dúvida ou Reclamação?<br>Entre em contato conosco.</h3>
                        <form action="#" method="post">
                            <div class="field half first">
                                <label for="name">Nome</label>
                                <input name="name" id="name" type="text" placeholder="Name">
                            </div>
                            <div class="field half">
                                <label for="email">Email</label>
                                <input name="email" id="email" type="email" placeholder="Email">
                            </div>
                            <div class="field">
                                <label for="message">Mensagem</label>
                                <textarea name="message" id="message" rows="6" placeholder="Message"></textarea>
                            </div>
                            <ul class="actions">
                                <li><input value="Enviar Mensagem" class="button" type="submit"></li>
                            </ul>
                        </form>
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

    </body>
</html>