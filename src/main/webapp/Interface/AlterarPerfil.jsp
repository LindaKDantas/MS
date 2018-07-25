<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title> Alteração no Perfil </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
    <body>
        <div class="page-wrap">
				<nav id="nav">	
                    <ul>
						<li><a href="menu.html" ><span class="icon fa-home"></span></a></li>
						<li><a href="galeria.html"><span class="icon fa-camera-retro"></span></a></li>
						<li><a href="generic.html"class="active"><span class="icon fa-file-text-o"></span></a></li>
					</ul>
				</nav>
            
            <section id="perfil">
                   
                <div id="edit" align="center">
                <h2>Alterando Informações pessoais</h2>
                <h5>Lembre-se, o único campo obrigatório é o nome.</h5>
                <h5>Para realizar alterações é necessário preencher o campo senha ao final da página.</h5>
                <p><br><br><br></p>
                <div class="field ">
                    <label for="name">Nome</label>
                    <input name="name" id="name" type="text" placeholder="Seu novo nome">
                </div>
                <div class="field ">
                    <label for="name">Senha(nova)</label>
                    <input name="name" id="name" type="password" placeholder="*********">
                </div>
                <div class="field ">
                    <label for="nickname">Apelido</label>
                    <input name="name" id="name" type="text" placeholder="Algo que aparecerá ao lado do seu nome">
                </div>
                <div class="field half first">
                    <label for="descriptionM">Descrição Pessoal</label>
                    <textarea name="descriptionM" id="descriptionM" type="text" placeholder="Diga-nos quem você é."></textarea>
                </div>
                <div class="field ">
                    <label for="nasc">Nascimento</label>
                    <input name="name" id="name" type="date" placeholder="dd/MM/aaaa">
                </div>
                <p><br><br></p>
                <div class="field ">
                    <label for="name">Senha Atual</label>
                    <input name="name" id="name" type="password" placeholder="*********"><p><br></p>
                    <center><a href="AlteracoesPerfilConcluidas.jsp"> <input type="button" value="alterar"> </a></center>
                </div>
                </div>
            </section>
            
            
        </div>