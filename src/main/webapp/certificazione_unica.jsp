<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  	if (session.getAttribute("Login") == null)
    {
    	%><html>
    <head>
        <title>Unico</title>
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
    </head>

    <body>
        <center>
            <div>
                <h1>logo</h1>
            </div>

            <div class="bianco" style="width: 30%;">
                <form method="POST" action="Servlet">
                    <br>
                    <b><h2><p class="index">Accedi</p></h2></b>
                    <br><br>
                    <h5><p class="index">E-mail</p></h5><br>
                    <p class="index"><input type="text" name="email" placeholder="error@mail.com"></p><br><br>
                    <h5><p class="index">Password</p></h2><br>
                    <p class="index"><input type="password" name="password" placeholder="**********"></p><br><br>
                    <h5><p class="index"><input type=checkbox value="recupera_password"><u>Recupera Password</u></p></p><br><br><br>
                    <input type="hidden" name="Servlet" value="login">
                    <input type="submit" value="ACCEDI">
                    <br><br><br>
                </form>
            </div>
            <br><br>
            <font color="red"><h2>Utente non trovato</h2></font>
        </center>
    </body>
</html><%
    }
  	else
  	{
	%>
<html>
    <head>
        <title>home</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script type="text/javascript" src="javascript.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
    </head>

    <body onload="certificazione_unica()">
        <div class="conteiner head">
            <div class="row header">
            	<div class="col-md-1">
                	<div id="hormenu"><!-- div che contiene il menu -->
            			<ul> <!-- lista principale: definisce il menu nella sua interezza -->
                			<li>
			                	<img src="Immagini/trattini.png" width=120% height=80%>
			                	<ul class="ordine">
			                		<br>
			                        <li class="ordine">
                    					<p class="categorie">Modulo Presenze</p>
                    				</li><br>
			                        <li class="ordine">
			                        	<a href="bustepaga.jsp"><p class="categorie">Buste Paga</p></a>
                    				</li><br>
			                        <li class="ordine">
			                        	<a href="certificazione_unica.jsp"><p class="categorie">Certificazione Unica</p></a>
                    				</li><br>
			                        <li class="ordine">
                    					<p class="categorie">Commesse</p>
			                        </li><br>
			                        <li class="ordine">
                    					<p class="categorie">Certificazioni</p>
			                        </li><br>
			                        <li class="ordine">
                    					<p class="categorie">Corso Sicurezza</p>	
			                        </li><br>
			                        <li class="ordine">
                    					<p class="categorie">Visita Medica</p>
			                        </li><br>
			                        <li class="ordine">
			                        	<a href="ricerca.jsp"><p class="categorie">Profilo & CV</p></a>
			                        </li>
                    			</ul>
			                </li>
			    		</ul>
			    	</div>
                </div>
                <div class="col-md-8 offset-1 logo"><p class="home">Logo</p></div>
                <div class="col-md-2" style="text-align: right; margin-top: 1%">
                    <form method="post" action="Servlet">
                    	<input type="hidden" name="Servlet" value="logout">
                    	<button class="esci">Esci</button>
                    </form>
                </div>
            </div>
            <br>
            <div class="row justify-content-center"><div class="col-md-9"><p class="utente"><a href="home.jsp">Home</a> > Certificazione Unica</p></div></div>
            <br><br>
            <div class="row justify-content-center" style="text-align: center; padding: 10 65 0 65;">
                <div onclick="invio2('2019', '2019_pdf')" class="col-lg-2 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="2019" class="categorie buste">2019</p>
                    <p id="1" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio2('2020', '2020_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="2020" class="categorie buste">2020</p>
                    <p id="2" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio2('2021', '2021_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="2021" class="categorie buste">2021</p>
                    <p id="3" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio2('2022', '2022_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="2022" class="categorie buste">2022</p>
                    <p id="4" class="categorie">&nbsp</p><br>
                </div>
            </div>
            <br><br>
        </div>
        <br><br>
        <a href="PDF/2019.pdf" id="2019_pdf" download="2019" hidden></a>
        <a href="PDF/2020.pdf" id="2020_pdf" download="2020" hidden></a>
        <a href="PDF/2021.pdf" id="2021_pdf" download="2021" hidden></a>
        <a href="PDF/2022.pdf" id="2022_pdf" download="2022" hidden></a>
    </body>
</html>
<%}%>