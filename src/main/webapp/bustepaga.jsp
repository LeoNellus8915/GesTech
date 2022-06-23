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

    <body onload="bustepaga()">
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
            <div class="row justify-content-center"><div class="col-md-9"><p class="utente"><a href="home.jsp">Home</a> > Buste Paga</p></div></div>
            <br><br>
            <div class="row justify-content-center" style="text-align: center; padding: 10 65 0 65;">
                <div onclick="invio('Gennaio', 'gennaio_pdf')" class="col-lg-2 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Gennaio" class="categorie buste">Gennaio</p>
                    <p id="1" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Febbraio', 'febbraio_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Febbraio" class="categorie buste">Febbraio</p>
                    <p id="2" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Marzo', 'marzo_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Marzo" class="categorie buste">Marzo</p>
                    <p id="3" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Aprile', 'aprile_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Aprile" class="categorie buste">Aprile</p>
                    <p id="4" class="categorie">&nbsp</p><br>
                </div>
            </div>
            <br><br>
            <div class="row justify-content-center" style="text-align: center; padding: 10 65 0 65;">
                <div onclick="invio('Maggio', 'maggio_pdf')" class="col-lg-2 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Maggio" class="categorie buste">Maggio</p>
                    <p id="5" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Giugno', 'giugno_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Giugno" class="categorie buste">Giugno</p>
                    <p id="6" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Luglio', 'luglio_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Luglio" class="categorie buste">Luglio</p>
                    <p id="7" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Agosto', 'agosto_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Agosto" class="categorie buste">Agosto</p>
                    <p id="8" class="categorie">&nbsp</p><br>
                </div>
            </div>
            <br><br>
            <div class="row justify-content-center" style="text-align: center; padding: 10 65 0 65;">
                <div onclick="invio('Settembre', 'settembre_pdf')" class="col-lg-2 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Settembre" class="categorie buste">Settembre</p>
                    <p id="9" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Ottobre', 'ottobre_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Ottobre" class="categorie buste">Ottobre</p>
                    <p id="10" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Novembre', 'novembre_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Novembre" class="categorie buste">Novembre</p>
                    <p id="11" class="categorie">&nbsp</p><br>
                </div>
                <div onclick="invio('Dicembre', 'dicembre_pdf')" class="col-lg-2 offset-1 categorie">
                    <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                    <p id="Dicembre" class="categorie buste">Dicembre</p>
                    <p id="12" class="categorie">&nbsp</p><br>
                </div>
            </div>
        </div>
        <br><br>
        <a href="PDF/Gennaio.pdf" id="gennaio_pdf" download="Gennaio" hidden></a>
        <a href="PDF/Febbraio.pdf" id="febbraio_pdf" download="Febbraio" hidden></a>
        <a href="PDF/Marzo.pdf" id="marzo_pdf" download="Marzo" hidden></a>
        <a href="PDF/Aprile.pdf" id="aprile_pdf" download="Aprile" hidden></a>
        <a href="PDF/Maggio.pdf" id="maggio_pdf" download="Maggio" hidden></a>
        <a href="PDF/Giugno.pdf" id="giugno_pdf" download="Giugno" hidden></a>
        <a href="PDF/Luglio.pdf" id="luglio_pdf" download="Luglio" hidden></a>
        <a href="PDF/Agosto.pdf" id="agosto_pdf" download="Agosto" hidden></a>
        <a href="PDF/Settembre.pdf" id="settembre_pdf" download="Settembre" hidden></a>
        <a href="PDF/Ottobre.pdf" id="ottobre_pdf" download="Ottobre" hidden></a>
        <a href="PDF/Novembre.pdf" id="novembre_pdf" download="Novembre" hidden></a>
        <a href="PDF/Dicembre.pdf" id="dicembre_pdf" download="Dicembre" hidden></a>
    </body>
</html>
<%}%>