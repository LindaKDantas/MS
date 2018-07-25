<%@page import="java.util.Base64"%>
<%@page import="com.mycompany.memorias.Models.Memorias"%>
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
        <div class="page-wrap">
            <nav id="nav">	
                <ul>
                    <li><a href="menu.jsp" title="Menu Inicial" ><span class="icon fa-home"></span></a></li>
                    <li><a href="galeria.jsp" title="Galeria"><span class="icon fa-camera-retro"></span></a></li>
                    <li><a href="perfil.jsp" title="Perfil"class="active"><span class="icon fa-file-text-o"></span></a></li>
            </nav>

            <section id="edit">
                <%Memorias m = (Memorias) request.getSession().getAttribute("memoria");%>
                
                <div align="center"><h5 align="center"><span class="image left special"><img src="data:image/jpg;base64,<%=Base64.getEncoder().encodeToString(m.getFoto())%>" height="260" width="" alt=""><br>
                            <label id="ImagemM">Imagem atual:</label></div>
                <h4  align="left">

                            <form action="/Memorias/EditarMemoria" method="post" enctype="multipart/form-data">
                            <div class="field half first">
                                <label for="nameM">Nome da memória</label>
                                <input name="nameM" id="nameM" type="text" placeholder="Ex: A viagem a França. " value="<%=m.getNome()%>">
                            </div>

                            <div class="field half first">
                                <label for="descriptionM">Descrição: </label>
                                <h6>Conte a sua memória em detalhes, as falas, as vestimentas tudo o que desejar  <br>
                                </h6></label>
                                <textarea name="descriptionM" id="descriptionM" type="text" placeholder="Ex: Eu e Aramis fomos a França hoje, como é um local maravilhoso."> <%=m.getDescricao()%></textarea>
                            </div>

                            <div class="field half first">
                                <label for="dataM">Data da Memória</label>
                                <input name="dataM" id="dataM" type="text" placeholder="dd/MM/yyyy" value="<%=m.getDataDoFato()%>"></input>
                            </div>

                            <div class="field half first">
                                <label for="quemM">"Quem estava lá? <br></label>
                                <input name="quemM" id="quemM" type="text" placeholder="Ex: Artus,Porthos e Aramis." value="<%=m.getUsuarios()%>">
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
                            </div>

                            <div>
                                <input type="submit" value="atualizar" href="Perfil.jsp">
                            </div>

                        </form>

                </h4>

            </section>
        </div>
    </body>

</html>