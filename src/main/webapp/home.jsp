<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
	<head>
	    <script
			src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>
		<link rel="icon" href="assets/img/basic/favicon.ico" type="image/x-icon">
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
			rel="stylesheet">
		<title>GesTech</title>
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
	<%
  		if (session.getAttribute("Login") == null)
    	{	
  			%><body onload="errore()"></body></html><%
    	}
  		else	
  		{
    		%><body class="light">
    		
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
								<a href="cambiapassword.jsp" class="list-group-item list-group-item-action"><i
									class="icon icon-lock black-text s-18"></i> <span class="cambiapass">Cambia Password</span></a>
							</div>
						</div>
					</div>
				</div>
				<ul class="sidebar-menu">
				<li class="treeview"><a href="home.jsp"> <i
							class="icon icon-home light-blue-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Home/Avvisi</span>
					</a></li>
						<li class="treeview"><a href="ricerca.jsp"> <i
							class="icon icon-account_box red-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Tutte le risorse</span>
					</a></li>
						<li class="treeview"><a href="profilo&cv.jsp"> <i
							class="icon icon-add_box light-green-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Aggiungi risorsa</span>
					</a></li>
					<li class="treeview"><a href="nuovoutente.jsp"> <i
							class="icon icon-add_box light-green-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Aggiungi nuovo utente</span>
					</a></li>
					<li class="treeview"><a href="index.jsp"> <i
							class="icon icon-exit_to_app purple-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Esci</span>
					</a></li>
				</ul>
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
							<h1 class="nav-title text-white">Home</h1>
						</div>
					</div>
				</div>
				<!--Top Menu Start -->

			</div>

		</div>
	</div>
		<div class="page avviso">
			<div class="page has-sidebar-left">
				<div class="pos-f-t">
				<input id="titolo" name="titolo" placeholder="Inserisci Titolo" form="form" type="text">
				<textarea name="avviso" id="avviso" form="form" placeholder="Inserire l'avviso"></textarea>
					<form method="post" action="Servlet" id="form">
						<input class="etisp" type="checkbox" name="admin" value="admin">
  						<label class="nomeeti">Admin</label>
  						<input type="checkbox" name="recruiter" value="recruiter">
  						<label>Recruiter</label>
  						<input type="checkbox" name="commerciale" value="commerciale">
  						<label>Commerciale</label>
  						<input type="checkbox" name="dipendente" value="dipendente">
  						<label>Dipendente</label>
  						<input type="checkbox" name="tutti" value="tutti">
  						<label>Tutti</label>
						<input type="hidden" name="Servlet" value="registra_avviso">
				  		<input type="submit">
					</form>
					
					
					<div class="collapse" id="navbarToggleExternalContent">
						<div class="bg-dark pt-2 pb-2 pl-4 pr-2">
							<div class="search-bar">
								<input
									class="transparent s-24 text-white b-0 font-weight-lighter w-128 height-50"
									type="text" placeholder="start typing...">
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	<script scr="./js/app.js"></script>
	</body>
</html>
<%}%>