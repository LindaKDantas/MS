<%@page import="com.mycompany.memorias.Models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title> Memória Cadastrada! </title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body>
        <%Usuario u = (Usuario) request.getSession().getAttribute("usuario_logado");%>
        <div class="page-wrap">
              <nav id="nav">
                <ul>
                    <li><a href="menu.jsp" title="Menu Inicial" class="active"><span class="icon fa-home"></span></a></li>
                    
                    <li><a href="galeria.jsp" title="Galeria de Fotos"><span class="icon fa-camera-retro"></span></a></li>
                    <li><a href="Perfil.jsp" title="Meu Perfil"><span class="icon fa-file-text-o"></span></a></li>
                     <li><a href="menu.jsp" title="Sair" class="active"><span class="icon fa-sign-out-alt"></span></a></li>  
                </ul>
            </nav>
            
            <section id="edit" align="center">
                <li><a title="Memoria Adicionada"><span class="icon fa-check"></span></a></li>
                <div id="Descricao">
                <h3> Memória adicionada com sucesso.</h3>
                <p>Continue inserindo memórias em sua página ou então, volte ao seu perfil.</p>
                </div>
                
                <div id="Botões de navegação">
                    <ul class="actions">
                        <li><a href="Perfil.jsp" class="button">Voltar ao Perfil</a></li>
                        <li><a href="createMemory.jsp" class="button">Criar outra memória</a></li>
                        </ul>
                </div>
            </section>
                
                 <section id="contact">
                    <!-- Social -->
                    <div class="social column">
                        <h3>Siga-me nas redes sociais</h3>
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
            
        </body>
</html>