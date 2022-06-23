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
	<link
		href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
		rel="stylesheet">
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</head>

<body>
	<center>
		<div>
			<h1>logo</h1>
		</div>

		<div class="bianco" style="width: 30%;">
			<form method="POST" action="Servlet">
				<br> <b><h2>
						<p class="index">Accedi</p>
					</h2></b> <br>
				<br>
				<h5>
					<p class="index">E-mail</p>
				</h5>
				<br>
				<p class="index">
					<input type="text" name="email" placeholder="error@mail.com">
				</p>
				<br>
				<br>
				<h5>
					<p class="index">Password</p>
					</h2>
					<br>
					<p class="index">
						<input type="password" name="password" placeholder="**********">
					</p>
					<br>
					<br>
					<h5>
						<p class="index">
							<input type=checkbox value="recupera_password"><u>Recupera
								Password</u>
						</p>
						</p>
						<br>
						<br>
						<br> <input type="hidden" name="Servlet" value="login">
						<input type="submit" value="ACCEDI"> <br>
						<br>
						<br>
			</form>
		</div>
		<br>
		<br> <font color="red"><h2>Utente non trovato</h2></font>
	</center>
</body>
</html>
<%
    }
  	else
  	{
	%>
<html>
<head>
<title>Unico</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="javascript.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body onload="menu_cascata()">
	<div class="conteiner head">
		<div class="row header">
			<div class="col-md-1">
				<div id="hormenu">
					<!-- div che contiene il menu -->
					<ul>
						<!-- lista principale: definisce il menu nella sua interezza -->
						<li><img src="Immagini/trattini.png" width=120% height=80%>
							<ul class="ordine">
								<br>
								<li class="ordine">
									<p class="categorie">Modulo Presenze</p>
								</li>
								<br>
								<li class="ordine"><a href="bustepaga.jsp"><p
											class="categorie">Buste Paga</p></a></li>
								<br>
								<li class="ordine"><a href="certificazione_unica.jsp"><p
											class="categorie">Certificazione Unica</p></a></li>
								<br>
								<li class="ordine">
									<p class="categorie">Commesse</p>
								</li>
								<br>
								<li class="ordine">
									<p class="categorie">Certificazioni</p>
								</li>
								<br>
								<li class="ordine">
									<p class="categorie">Corso Sicurezza</p>
								</li>
								<br>
								<li class="ordine">
									<p class="categorie">Visita Medica</p>
								</li>
								<br>
								<li class="ordine"><a href="profilo&cv.jsp"><p
											class="categorie">Profilo & CV</p></a></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="col-md-8 offset-1 logo">
				<p class="home">Logo</p>
			</div>
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
					<a href="home.jsp">Home</a> > Profilo & CV
				</p>
			</div>
		</div>
		<br>
		<br>

		<div class="row bianco">
			<div class="col-md-12 pad">
				<b><h2>
						<p style="text-align: center">Salva</p>
					</h2></b>
			</div>
		</div>

		<!--ANAGRAFICA-->
		<form method="post" action="Servlet" name="profilo">
			<div class="row grigio">
				<div class="col-md-4 pad">
					<h5>
						<p>Nome</p>
					</h5>
					<input class="profilo" type="text" name="nome">
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Cognome</p>
					</h5>
					<input class="profilo" type="text" name="cognome">
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Recapito</p>
					</h5>
					<input class="profilo" type="text" name="recapito">
				</div>
				<div class="col-md-6 pad">
					<h5>
						<p>Email</p>
					</h5>
					<input class="profilo" type="text" name="email">
				</div>
				<div class="col-md-6 pad">
					<h5>
						<p>Città di allocazione</p>
					</h5>
					<input class="profilo" type="text" name="citta_allocazione">
				</div>
			</div>

			<!--POSIZIONE-->
			<div class="row bianco">
				<div class="col-md-6 pad">
					<h5>
						<p>Ruolo</p>
					</h5>
					<input class="profilo" type="text" name="ruolo">
				</div>
				<div class="col-md-6 pad">
					<h5>
						<p>Competenza principale</p>
					</h5>
					<input class="profilo" type="text" name="competenza_principale">
				</div>
			</div>

			<!--COLLOQUIO-->

			<div class="row grigio">
				<div class="col-md-4 pad">
					<h5>
						<p>Data Colloquio</p>
					</h5>
					<input class="profilo" type="date" name="data_colloquio">
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Anno Colloquio</p>
					</h5>
					<input class="profilo" type="number" name="anno_colloquio">
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Esito Colloquio</p>
					</h5>
					<input class="profilo" type="text" name="esito_colloquio">
				</div>
			</div>

			<!--CANDIDATURA-->

			<div class="row bianco">
				<div class="col-md-12 pad margin">
					<h5>
						<p>Fonte reperimento</p>
					</h5>
					<input class="profilo" type="text" name="fonte_reperimento">
				</div>
			</div>

			<!--COSTO-IMPIEGO-->

			<div class="row grigio">
				<div class="col-md-6 pad">
					<h5>
						<p>Costo Giornaliero</p>
					</h5>
					<input class="profilo" type="number" name="costo_giornaliero"
						step=0.01>
				</div>
				<div class="col-md-6 pad">
					<h5>
						<p>Possibilità Lavorativa</p>
					</h5>
					<input class="profilo" type="text" id="possibilita_lavorativa" name="possibilita_lavorativa">
				</div>
			</div>

			<!--SKILL-TECH-->
			<div class="row bianco">
				<div class="col-md-9 offset-1 pad">
					<h5>
						<p>Skill</p>
					</h5>
					<select name="skill" id="skill" class="cascata"></select>
				</div>

				<div class="col-md-9 offset-1 pad">
					<h5>
						<p>Tech</p>
					</h5>
					<select name="tech1" id="input_tech1" class="cascata"></select>
				</div>
				<div class="col-md-1">
					<p class="profilo"
						onclick="add('tech2', 'input_tech1', 'Add_tech2', 'Rem_tech2')">+</p>
				</div>

				<div id="tech2" class="col-md-9 offset-1 pad" style="display: none">
					<h5>
						<p>Tech2</p>
					</h5>
					<select name="tech2" id="input_tech2" class="cascata"></select>
				</div>
				<div id="Rem_tech2" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="remove('input_tech2', 'tech2', 'Rem_tech2', 'Add_tech2')">-</p>
				</div>
				<div id="Add_tech2" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="add('tech3', 'input_tech2', 'Add_tech3', 'Rem_tech3')">+</p>
				</div>

				<div id="tech3" class="col-md-9 offset-1 pad" style="display: none">
					<h5>
						<p>Tech3</p>
					</h5>
					<select name="tech3" id="input_tech3" class="cascata"></select>
				</div>
				<div id="Rem_tech3" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="remove('input_tech3', 'tech3', 'Add_tech3', 'Rem_tech3')">-</p>
				</div>
				<div id="Add_tech3" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="add('tech4', 'input_tech3', 'Add_tech4', 'Rem_tech4')">+</p>
				</div>

				<div id="tech4" class="col-md-9 offset-1 pad" style="display: none">
					<h5>
						<p>Tech4</p>
					</h5>
					<select name="tech4" id="input_tech4" class="cascata"></select>
				</div>
				<div id="Rem_tech4" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="remove('input_tech4', 'tech4', 'Add_tech4', 'Rem_tech4')">-</p>
				</div>
				<div id="Add_tech4" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="add('tech_campo_libero', 'input_tech4', '', 'Rem_tech_campo_libero')">+</p>
				</div>

				<div id="tech5" class="col-md-9 offset-1 pad" style="display: none">
					<h5>
						<p>Tech(Campo Libero)</p>
					</h5>
					<input class="profilo" type="text" id="input_tech_campo_libero" name="tech_campo_libero">
				</div>
				<div id="Rem_tech_campo_libero" class="col-md-1" style="display: none">
					<p class="profilo"
						onclick="remove('input_tech_campo_libero', 'tech_campo_libero','', 'Rem_tech_campo_libero')">-</p>
				</div>
			</div>

			<!--LINGUA-->

			<div class="row grigio">
				<div class="col-md-4 pad">
					<h5>
						<p>Lingua1</p>
					</h5>
					<select name="lingua1" id="lingua1" class="cascata"></select>
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Lingua2</p>
					</h5>
					<select name="lingua2" id="lingua2" class="cascata"></select>
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Lingua3</p>
					</h5>
					<select name="lingua3" id="lingua3" class="cascata"></select>
				</div>
			</div>

			<!--INFO EXTRA-->

			<div class="row bianco">
				<div class="col-md-4 pad">
					<h5>
						<p>Competenze Totali</p>
					</h5>
					<input class="profilo" type="text" name="competenze_totali">
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Certificazioni</p>
					</h5>
					<input class="profilo" type="text" name="certificazioni">
				</div>
				<div class="col-md-4 pad">
					<h5>
						<p>Seniority</p>
					</h5>
					<select name="seniority" id="seniority" class="cascata"></select>
				</div>
			</div>

			<!--COMMENTI-->

			<div class="row grigio">
				<div class="col-md-12 pad">
					<h5>
						<p>Impressioni</p>
					</h5>
					<input class="profilo" type="text" name="impressioni">
				</div>
				<div class="col-md-12" style="text-align: center;">
					<br> <input type="hidden" name="Servlet" value="profilo">
					<input type="submit" value="SALVA"
						style="padding: 5px 25px 5px 25px;"> <br>
					<br>
				</div>
			</div>

		</form>
	</div>
	<!--container-->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>

<%}%>