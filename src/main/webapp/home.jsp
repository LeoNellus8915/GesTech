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
	        <title>Unico</title>
	        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	        <link rel="stylesheet" href="style.css">
	        <link rel="preconnect" href="https://fonts.googleapis.com">
	        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
	    </head>
	
	    <body>
	        <div class="conteiner head">
	            <div class="row header">
	            	<div class="col-lg-1 col-md-1">
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
	                <div class="col-lg-8 col-md-8 offset-1 logo"><p class="home">Logo</p></div>
	                <div class="col-lg-2 col-md-2" style="text-align: right; margin-top: 1%">
	                    <form method="post" action="Servlet">
	                    	<input type="hidden" name="Servlet" value="logout">
	                    	<button class="esci">Esci</button>
	                    </form>
	                </div>
	            </div>
	            <br>
	            <div class="row justify-content-center"><div class="col-lg-9 col-md-9"><p class="utente">Home > <%String x = (String)session.getAttribute("Utente"); out.println(x);%></p></div></div>
	            <br><br>
	            <div class="row justify-content-center" style="text-align: center; padding: 10 65 0 65;">
	                <div class="col-lg-2 col-md-2 categorie">
	                    <img src="Immagini/a.svg"><br><br><br>
	                    <p class="categorie">Modulo Presenze</p>
	                </div>
	                <div class="col-lg-2 col-md-2 offset-1 categorie"><a href="bustepaga.jsp">
	                    <img src="Immagini/b.svg" style="margin-left: 10%"><br><br><br>
	                    <p class="categorie">Buste Paga</p>
	                </a></div>
	                <div class="col-lg-2 col-md-2 offset-1 categorie"><a href="certificazione_unica.jsp">
	                    <img src="Immagini/c.svg"><br><br><br>
	                    <p class="categorie">Certificazione Unica</p>
	                </a></div>
	                <div class="col-lg-2 col-md-2 offset-1 categorie">
	                    <img src="Immagini/d.svg"><br><br><br>
	                    <p class="categorie">Commesse</p>
	                </div>
	            </div>
	            <br><br>
	            <div class="row justify-content-center" style="text-align: center; padding: 10 65 0 65;">
	                <div class="col-lg-2 col-md-2 categorie">
	                    <img src="Immagini/e.svg"><br><br><br>
	                    <p class="categorie">Certificazioni</p>
	                </div>
	                <div class="col-lg-2 col-md-2 offset-1 categorie">
	                    <img src="Immagini/f.svg"><br><br><br>
	                    <p class="categorie">Corso Sicurezza</p>
	                </div>
	                <div class="col-lg-2 col-md-2 offset-1 categorie">
	                    <img src="Immagini/g.svg" style="margin-top: 7%"><br><br><br>
	                    <p class="categorie" style="margin-left: 2%">Visita Medica</p>
	                </div>
	                <div class="col-lg-2 col-md-2 offset-1 categorie"><a href="ricerca.jsp">
	                    <img src="Immagini/h.svg" style="margin-top: 7%"><br><br><br>
	                    <p class="categorie" style="margin-right: 2%">Profilo & CV</p>
	                </a></div>
	            </div>
	        </div>
	        <br><br>
	    </body>
	</html>
<%}%>