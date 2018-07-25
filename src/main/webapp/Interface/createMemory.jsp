<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title> Criando Memórias </title>
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


            <section id="edit"> 
                <div align="center"><h3>Criando uma memória</h3>
                    <div align="center">       

                        <form action="/Memorias/AdicionaMemoria" method="post" enctype="multipart/form-data">
                            <div class="field half first">
                                <label for="nameM">Nome da memória</label>
                                <input name="nameM" id="nameM" type="text" placeholder="Ex: A viagem a França. ">
                            </div>

                            <div class="field half first">
                                <label for="descriptionM">Descrição: </label>
                                <h6>Conte a sua memória em detalhes, as falas, as vestimentas tudo o que desejar <br>
                                </h6></label>
                                <textarea name="descriptionM" id="descriptionM" type="text" placeholder="Ex: Eu e Aramis fomos a França hoje, como é um local maravilhoso."></textarea>
                            </div>

                            <div class="field half first">
                                <label for="dataM">Data da Memória</label>
                                <input name="dataM" id="dataM" type="text" placeholder="dd/MM/yyyy"></input>
                            </div>

                            <div class="field half first">
                                <label for="quemM">"Quem estava lá? <br></label>
                                <input name="quemM" id="quemM" type="text" placeholder="Ex: Artus,Porthos e Aramis.">
                            </div>

                            <div>
                                <fieldset>
                                    <legend>A visualização está disponivel:</legend>
                                    <input type="checkbox" name="option" value="1" />Apenas para mim.<br />
                                    <input type="checkbox" name="option" value="0" />Para todos.<br /><br/>

                                </fieldset>
                                <fieldset>
                                    <legend>A memória pertence a:</legend>
                                    <input type="checkbox" name="option1" value="P" />Uma pessoa. <br />
                                    <input type="checkbox" name="option1" value="G" />Um grupo.<br />
                                </fieldset>
                            </div>
                            <div class="field half first">
                                <input type="file" name="Imagem da Memória" id="Imagem da Memória"><br>
                                 <li><a href="https://www.instagram.com/stou_linda/?hl=pt-br" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                            </div>

                            <div>
                                <input type="submit" value="Criar" name="acao" href="Perfil.jsp">
                            </div>

                        </form>
                    </div>
                </div>
            </section>
        </div>
    </body>
</html>