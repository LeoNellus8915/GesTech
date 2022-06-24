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
<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
	
	

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
	<script type="text/javascript" src="js//jquery-3.5.1.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
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
								<h6 class="font-weight-light mt-2 mb-1"><%String utente = (String)session.getAttribute("Utente"); out.println(utente);%></h6>
								<a href="#"><%String ruolo = (String)session.getAttribute("Ruolo"); out.println(ruolo);%></a>
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
						<li class="treeview"><a href="ricerca.jsp"> <i
							class="icon icon-account_box light-green-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Tutte le risorse</span>
					</a></li>
						<li class="treeview"><a href="profilo&cv.jsp"> <i
							class="icon icon-add"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Aggiungi risorsa</span>
					</a></li>
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
							<th class="titolotabella">NOME E COGNOME</th>
							<th class="titolotabella">TELEFONO</th>
							<th class="titolotabella">VALUTAZIONE</th>
							<th class="titolotabella">RUOLO</th>
							<th class="titolotabella">AZIONI</th>
						</tr>
					</thead>
				</table>
		</div>
		<!-- table-responsive -->


		<a href="profilo&cv.jsp"
			class="btn-fab btn-fab-md fab-right fab-right-bottom-fixed shadow btn-primary"><i
			class="icon-add"></i></a>
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
	<script scr="./js/app.js"></script>
	</body>
</html>
<%}%>