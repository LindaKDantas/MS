<%@page import="com.mycompany.memorias.Models.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title> Alterações Concluídas</title>
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
                    <h3> Alterações concluídas com sucesso.<br> Parabéns!</h3>
                    <p>Volte ao seu perfil, para ver como ficou!<br>
                    Caso não esteja feliz com o que mudou você pode modificar novamente no momento em que achar melhor!</p>
                </div>               
                <div id="Botões de navegação">
                    <a href="Perfil.jsp" class="button">Voltar ao Perfil</a></li>

                </div>
            </section>
            
        </body>
</html>