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
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"rel="stylesheet">
	
	

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
					</h2></b> <br> <br>
				<h5>
					<p class="index">E-mail</p>
				</h5>
				<br>
				<p class="index">
					<input type="text" name="email" placeholder="error@mail.com">
				</p>
				<br> <br>
				<h5>
					<p class="index">Password</p>
					</h2>
					<br>
					<p class="index">
						<input type="password" name="password" placeholder="**********">
					</p>
					<br> <br>
					<h5>
						<p class="index">
							<input type=checkbox value="recupera_password"><u>Recupera
								Password</u>
						</p>
						</p>
						<br> <br> <br> <input type="hidden" name="Servlet"
							value="login"> <input type="submit" value="ACCEDI">
						<br> <br> <br>
			</form>
		</div>
		<br> <br> <font color="red"><h2>Utente non
				trovato</h2></font>
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
<link rel="icon" href="assets/img/basic/favicon.ico" type="image/x-icon">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
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
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>

<link rel="stylesheet" href="app.css">
<script type="text/javascript" src="javascript.js"></script>
<style>
.loader {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: #F5F8FA;
	z-index: 9998;
	text-align: center;
}

.plane-container {
	position: absolute;
	top: 50%;
	left: 50%;
}
</style>

</head>

<body class="light" onload="ricerca()">

	<div id="app">
		<aside class="main-sidebar fixed offcanvas shadow"
			data-toggle='offcanvas'>
			<section class="sidebar">
				<div class="mt-3 mb-3 ml-3">
					<img src="Immagini/logo.png" alt="">
				</div>
				<div class="relative">
					<div class="user-panel p-3 light mb-2">
						<div>
							<div class="float-left image">
								<img class="user_avatar" src="Immagini/u2.png" alt="User Image">
							</div>
							<div class="float-left info">
								<h6 class="font-weight-light mt-2 mb-1">Giovanna Rossi</h6>
								<a href="#"> Recruiter</a>
							</div>
						</div>
						<div class="clearfix"></div>
						<div id="userSettingsCollapse">
							<div class="list-group mt-3 shadow">
								<a href="#" class="list-group-item list-group-item-action"><i
									class="mr-2 icon-security text-purple"></i>Cambia Password</a>
							</div>
						</div>
					</div>
				</div>
				<ul class="sidebar-menu">
					<li class="treeview"><a href="#"><i
							class="icon icon-account_box light-green-text s-18"></i>Risorse<i
							class="icon icon-angle-left s-18 pull-right"></i></a>
						<ul class="treeview-menu">
							<li><a href="registra.jsp"><i class="icon icon-user"></i>Tutte
									le risorse</a></li>
							<li><a href="nuova_risorsa.html"><i
									class="icon icon-add"></i>Aggiungi risorsa</a></li>
						</ul></li>
					<li class="treeview"><a href="index.jsp"> <i
							class="icon icon-exit_to_app purple-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Esci</span>
					</a></li>
			</section>
		</aside>
		<!--Sidebar End-->
		<div class="page has-sidebar-left">
			<div class="pos-f-t">
				<div class="collapse" id="navbarToggleExternalContent">
					<div class="bg-dark pt-2 pb-2 pl-4 pr-2">
						<div class="search-bar">
							<input
								class="transparent s-24 text-white b-0 font-weight-lighter w-128 height-50"
								type="text" placeholder="start typing...">
						</div>
						<a href="#" data-toggle="collapse"
							data-target="#navbarToggleExternalContent" aria-expanded="false"
							aria-label="Toggle navigation"
							class="paper-nav-toggle paper-nav-white active "><i></i></a>
					</div>
				</div>
			</div>
			<div
				class="navbar navbar-expand d-flex navbar-dark justify-content-between bd-navbar blue accent-3 shadow">
				<div class="relative">
					<div class="d-flex">
						<div class="d-none d-md-block">
							<h1 class="nav-title text-white">Risorse</h1>
						</div>
					</div>
				</div>
				<!--Top Menu Start -->

			</div>

		</div>
	</div>
	<div class="page  has-sidebar-left height-full">
		<header class="blue accent-3 relative">
			<div class="container-fluid text-white">
				<div class="row p-t-b-10 "></div>
				<div class="row justify-content-between">
					<ul class="nav nav-material nav-material-white responsive-tab"
						id="v-pills-tab" role="tablist">
						<li><a class="nav-link active" id="v-pills-all-tab"
							data-toggle="pill" href="#v-pills-all" role="tab"
							aria-controls="v-pills-all"><i class="icon icon-user"></i>Tutte
								le risorse</a></li>
						<li class="float-right"><a class="nav-link"
							href="profilo&cv.jsp"><i class="icon icon-plus-circle"></i>
								Aggiungi risorsa</a></li>
					</ul>
				</div>
			</div>
		</header>
		<div class="table-responsive">
			<form>
				<table id="prova" class="table table-striped table-hover r-0">
					<thead>
						<tr class="no-b">
							<th style="width: 30px">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" id="checkedAll"
										class="custom-control-input"><label
										class="custom-control-label" for="checkedAll"></label>
								</div>
							</th>
							<th>NOME E COGNOME</th>
							<th>TELEFONO</th>
							<th>VALUTAZIONE</th>
							<th>RUOLO</th>
							<th></th>
						</tr>
					</thead>
				</table>
			</form>
			<nav class="my-3" aria-label="Page navigation">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#">Indietro</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Avanti</a>
					</li>
				</ul>
			</nav>
		</div>
		<!-- table-responsive -->


		<a href="profilo&cv.jsp"
			class="btn-fab btn-fab-md fab-right fab-right-bottom-fixed shadow btn-primary"><i
			class="icon-add"></i></a>


		<!--         <div class="conteiner head"> -->
		<!--             <div class="row header"> -->
		<!--             	<div class="col-md-1"> -->
		<!--                 	<div id="hormenu">div che contiene il menu -->
		<!--             			<ul> lista principale: definisce il menu nella sua interezza -->
		<!--                 			<li> -->
		<!-- 			                	<img src="Immagini/trattini.png" width=120% height=80%> -->
		<!-- 			                	<ul class="ordine"> -->
		<!-- 			                		<br> -->
		<!-- 			                        <li class="ordine"> -->
		<!--                     					<p class="categorie">Modulo Presenze</p> -->
		<!--                     				</li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!-- 			                        	<a href="bustepaga.jsp"><p class="categorie">Buste Paga</p></a> -->
		<!--                     				</li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!-- 			                        	<a href="certificazione_unica.jsp"><p class="categorie">Certificazione Unica</p></a> -->
		<!--                     				</li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!--                     					<p class="categorie">Commesse</p> -->
		<!-- 			                        </li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!--                     					<p class="categorie">Certificazioni</p> -->
		<!-- 			                        </li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!--                     					<p class="categorie">Corso Sicurezza</p>	 -->
		<!-- 			                        </li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!--                     					<p class="categorie">Visita Medica</p> -->
		<!-- 			                        </li><br> -->
		<!-- 			                        <li class="ordine"> -->
		<!-- 			                        	<a href="ricerca.jsp"><p class="categorie">Profilo & CV</p></a> -->
		<!-- 			                        </li> -->
		<!--                     			</ul> -->
		<!-- 			                </li> -->
		<!-- 			    		</ul> -->
		<!-- 			    	</div> -->
		<!--                 </div> -->
		<!--                 <div class="col-md-8 offset-1 logo"><p class="home">Logo</p></div> -->
		<div class="page has-sidebar-left">
			<div class="pos-f-t">
				<div class="collapse" id="navbarToggleExternalContent">
					<div class="bg-dark pt-2 pb-2 pl-4 pr-2">
						<div class="search-bar">
							<input
								class="transparent s-24 text-white b-0 font-weight-lighter w-128 height-50"
								type="text" placeholder="start typing...">
						</div>
						<a href="#" data-toggle="collapse"
							data-target="#navbarToggleExternalContent" aria-expanded="false"
							aria-label="Toggle navigation"
							class="paper-nav-toggle paper-nav-white active "><i></i></a>
					</div>
				</div>
			</div>

		</div>
		<!--             <div class="row categorie"> -->
		<!--             	<div class="col-md-3 offset-1 ricerca"> -->
		<!--             		<input id="ricerca" type="text"> -->
		<!--             		<button id="filtro" onclick="cerca()">Cerca</button> -->
		<!--             	</div> -->
		<!-- <!--             	<div class="col-md-1 offset-7"><a href="profilo&cv.jsp"><button class="add">+</button></a></div> -->
		<!--            	</div> -->
		<div class="row categorie">
			<div id="curriculum" class="col-md-6 offset-1">
				<br>
			</div>
			<br> <br>
		</div>
	</div>
	<script scr="./js/app.js"></script>
	<!-- page  has-sidebar-left height-full -->
</body>



</html>
<%}%>