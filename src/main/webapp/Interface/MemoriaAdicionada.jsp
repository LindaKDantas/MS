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
        <div class="page-wrap">
            <nav id="nav" padding:200px>	
                <ul>
                    <li><a href="menu.jsp" title="Menu Inicial" ><span class="icon fa-home"></span></a></li>
                    <li><a href="galeria.jsp" title="Galeria"><span class="icon fa-camera-retro"></span></a></li>
                    <li><a href="perfil.jsp" title="Perfil"class="active"><span class="icon fa-file-text-o"></span></a></li>
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
            
        </body>
</html>