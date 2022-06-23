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
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
			integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
			crossorigin="anonymous">
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
			integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
			integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
			crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>
			
		<link rel="stylesheet" href="style.css">
		<script type="text/javascript" src="javascript.js"></script>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link
			href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
			rel="stylesheet">
	</head>

	<body onload="stampa_profilo()">

	<!-- Stampa profilo: fatta quella con utenza admin che consente la modifica dei valori
	quando andrà sviluppata l'intefaccia per user normali andranno nascosti i campi senza value e 
	impedito l'inserimento/modifica dei campi (disabled)  -->

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
			<div class="row justify-content-center">
				<div class="col-md-9">
					<p class="utente">
						<a href="home.jsp">Home</a> > <a href="ricerca.jsp">Profilo & CV</a> > <span id="nome_cognome"></span> <!-- Home > Ricerca > Nome&Cognome -->
					</p>
				</div>
			</div>
			<br> <br>
			<form method="post" action="Servlet">
				<div class="row categorie">
					<div id="" class="col-md-12">
						<div class="card">
							<div class="card-header">
								<div class="row">
										<div class="col-md-8">
											<h4>Anagrafica</h4>
										</div>
										<div class="col-md-2">
											<button onclick="scarica()">Scarica Cv</button>
										</div>
										<div class="col-md-2">
											<button onclick="genera_cv()">Genera Cv</button>
										</div>
									</div>
								
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md-4">
											Nome: <input type="text" id="nome" name="nome" style="width: 150px !important;">
										</div>
										<div class="col-md-4">
											Cognome: <input type="text" id="cognome" name="cognome" style="width: 150px !important;">
										</div>
										
										<div class="col-md-4">
											Numero Telefono: <input type="text" id="numeroTelefono" name="recapito" style="width: 120px !important;">
										</div>
										<div class="col-md-6">
											Email: <input type="text" id="email" name="email" style="width: 150px !important;">
										</div>
										<div class="col-md-6">
											Città: <input type="text" id="citta" name="citta_allocazione" style="width: 150px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						
						<div class="card">
							<div class="card-header">
								<h4>Posizione</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md-6">
											Ruolo: <input type="text" id="ruolo" name="ruolo" style="width: 200px !important;">
										</div>
										<div class="col-md-6">
											Competenza Principale: <input type="text" id="competenza_principale" name="competenza_principale" style="width: 200px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						
						<div class="card">
							<div class="card-header">
								<h4>Colloquio</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md-4">
											Data Colloquio: <input type="text" id="data_colloquio" name="data_colloquio" style="width: 150px !important;">
										</div>
										<div class="col-md-4">
											Anno Colloquio: <input type="text" id="anno_colloquio" name="anno_colloquio" style="width: 150px !important;">
										</div>
										<div class="col-md-4">
											Esito Colloquio: <input type="text" id="esito_colloquio" name="esito_colloquio" style="width: 120px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						<div class="card">
							<div class="card-header">
								<h4>Candidatura</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md">
											Fonte Reperimento: <input type="text" id="fonte_reperimento" name="fonte_reperimento" style="width: 150px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						<div class="card">
							<div class="card-header">
								<h4>Costo-Impiego</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md-6">
											Costo Giornaliero: <input type="text" id="costo_giornaliero" name="costo_giornaliero" style="width: 200px !important;">
										</div>
										<div class="col-md-6">
											Possibilità Lavorativa: <input type="text" id="possibilita_lavorativa" name="possibilita_lavorativa" style="width: 200px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						<div class="card">
							<div class="card-header">
								<h4>Skill-Tech</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md-4">
											Skill: <input type="text" id="skill" name="skill" style="width: 200px !important;">
										</div>
										<div class="col-md-4">
											Tech: <input type="text" id="tech" name="tech1" style="width: 200px !important;">
										</div>
										<div class="col-md-4">
											Tech2: <input type="text" id="tech_2" name="tech2" style="width: 200px !important;">
										</div>
										<div class="col-md-4">
											Tech3: <input type="text" id="tech_3" name="tech3" style="width: 200px !important;">
										</div>
										<div class="col-md-4">
											Tech4: <input type="text" id="tech_4" name="tech4" style="width: 200px !important;">
										</div>
										<div class="col-md-4">
											Tech(Campo Libero): <input type="text" id="tech_campo_libero" name="tech_campo_libero" style="width: 200px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						<div class="card">
							<div class="card-header">
								<h4>Lingua</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md id="div_lingua_1">
											Lingua1: <input type="text" id="lingua_1" name="lingua1" style="width: 200px !important;">
										</div>
										<div class="col-md id="div_lingua_2">
											Lingua2: <input type="text" id="lingua_2" name="lingua2" style="width: 200px !important;">
										</div>
										<div class="col-md id="div_lingua_3">
											Lingua3: <input type="text" id="lingua_3" name="lingua3" style="width: 200px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->
						</div> <!-- Fine Card -->
						
						<div class="card">
							<div class="card-header">
								<h4>Info Extra</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md">
											Competenze Totali: <input type="text" id="competenze_totali" name="competenze_totali" style="width: 200px !important;">
										</div>
										<div class="col-md">
											Certificazioni: <input type="text" id="certificazioni" name="certificazioni" style="width: 200px !important;">
										</div>
										<div class="col-md">
											Seniority: <input type="text" id="seniority" name="seniority" style="width: 200px !important;">
										</div>
									</div> <!-- Fine Row -->
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->	
						</div> <!-- Fine Card -->

						<div class="card">
							<div class="card-header">
								<h4>Commenti</h4>
							</div>
							<div class="card-body">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											Impressioni: <input type="text" id="impressioni" name="impressioni" style="width: 150px !important;">
										</div>
									</div> <!-- Fine Row -->
										<div class="row">
           									<div id="commenti" class="col-md-6 offset-1"><br></div>
            								<br><br>
           								</div>
								</div> <!-- Fine Container -->
							</div> <!-- Fine Card Body-->	
						</div> <!-- Fine Card -->
									
						<div class="col-md-12" style="text-align: center;">
										<br> <input type="hidden" name="Servlet"
											value="aggiorna_cv"> <input type="submit"
											value="SALVA" style="padding: 5px 25px 5px 25px;"> <br>
										<br>
									</div>

								</div>
								<!-- Fine Column -->
							</div>
							<!-- Fine Row Categorie --></form>
			<br> <br>
		</div> <!-- Fine Container Head -->
		<br><br><br>
		<div type="hidden" id="scarica_cv"></div>
	</body>
</html>
<%}%>