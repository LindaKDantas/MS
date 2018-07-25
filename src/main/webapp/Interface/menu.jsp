<%@page import="com.mycompany.memorias.Models.Usuario"%>
<%@page import="java.io.FileReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title> Memórias Soltas </title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body>
        <%@page import="javax.servlet.http.*"%>
        <%@page import="javax.script.*"%>
        <%Usuario u = (Usuario) request.getSession().getAttribute("usuario_logado");%>
        
        <div class="page-wrap">

            <!-- Nav -->
            <nav id="nav">
                <ul>
                    <li><a href="menu.jsp" title="Menu Inicial" class="active"><span class="icon fa-home"></span></a></li>
                    <li><a href="galeria.jsp" title="Galeria de Fotos"><span class="icon fa-camera-retro"></span></a></li>
                    <li><a href="Perfil.jsp" title="Meu Perfil"><span class="icon fa-file-text-o"></span></a></li>
                </ul>
            </nav>

            <!-- Main -->
            <section id="main">
                <!-- Banner -->
                <section id="banner">
                    <div class="inner">
                        <h1>Seja bem-vindo ao Memórias Soltas</h1>
                        <p>  A plataforma online destinada a salvar relatos pessoais, sejam atuais ou antigos, para serem acessados posteriormente e assim compartilhados.<br>
                            Disponibilizamos de um banco de imagens que aceita inclusive fotos.<br>
                            Você se cadastra, e já pode começar a usar.<br> Simples, rápido, prático e gratuito.</p>
                        <ul class="actions">
                            <li><a href="#login" class="button" id="buttonLogin">Entrar</a></li>
                            <li><a href="cadastro.jsp" class="button">Cadastrar-se</a></li>
                        </ul>
                    </div>
                </section>

                <!-- Nos Contate -->
                <section id="contact">
                    <!-- Social -->
                    <div class="social column">
                        <h3>Sobre a desenvolvedora</h3>
                        <p><b>Linda Dantas:</b></br>
                            Uma garota, 17 anos, estudante do Ensino Médio Técnico no Instituto Federal de Ciência e Tecnologia - IFAM.</br>
                            Desenvolvedora e idealizadora do site Memórias Soltas. O fiz porque acredito que há algo bom o suficiente para ser escrito e protegido.<br>
                            Quem sabe compartilhado? <i>Depende de você.</i>
                        </p>
                        <h3>Siga-me nas redes sociais</h3>
                        <ul class="icons">
                            <li><a href="https://www.facebook.com/linda.dasilvadantas?ref=bookmarks" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                             <li><a href="https://www.instagram.com/stou_linda/?hl=pt-br" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                        </ul>
                    </div>

                    <!-- Form -->
                    <div class="column">
                        <h3>Entre em contato conosco.</h3><br>
                        <form action="#" method="post">
                            <div class="field half first">
                                <label for="name">Nome</label>
                                <input name="name" id="name" type="text" placeholder="Seu nome">
                            </div>
                            <div class="field half">
                                <label for="email">Email</label>
                                <input name="email" id="email" type="email" placeholder="seuemail@hotmail.com">
                            </div>
                            <div class="field">
                                <label for="message">Mensagem</label>
                                <textarea name="message" id="message" rows="6" placeholder="Sua mensagem."></textarea>
                            </div>
                            <ul class="actions">
                                <li><input value="Enviar Mensagem" class="button" type="submit"></li>
                            </ul>
                        </form>
                    </div>
                </section>
                
                <section align="center"id="login">
                    <h3><br><br><br>Efetuar Login</h3>

                    <form action="/Memorias/LoginUsuario" method="post">
                        <div class="field half first">
                            <label for="emailLogin">Email</label>
                            <input name="emailLogin" id="emailEfet" type="email" placeholder="email.exemplo@gmail.com">
                        </div>
                        <div class="field half first">
                            <label for="senhaLogin">Senha</label>
                            <input name="senhaLogin" id="senhaEfet" type="password" placeholder="********">
                        </div>
                        <div class="field half first">
                            <input value="Logar" id="buttonLogin" class="button" type="submit">
                        </div>

                    </form>
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