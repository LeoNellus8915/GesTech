<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	pageEncoding="ISO-8859-1"%>
<html>
	<head>
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

	<%
  		if (session.getAttribute("Login") == null)
    	{	
  			%><body onload="errore()"></body></html><%
    	}
  		else	
  		{
    		%><body class="light" onload="menu_cascata()">
    		
    		<div id="loader" class="loader">
        <div class="plane-container">
            <div class="preloader-wrapper small active">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                </div>
                </div>
                </div>
    		
	<div id="app">
		<aside class="main-sidebar fixed offcanvas shadow"
			data-toggle='offcanvas'>
			<section class="sidebar">
				<div class="mt-3 mb-3 ml-3">
					<a href="home.jsp">
					<input type="image" src="Immagini/logo.png" alt="">
					</a>
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
						</i> <span>Tutti i Canadidati</span>
					</a></li>
						<li class="treeview"><a href="profilo&cv.jsp"> <i
							class="icon icon-add_box light-green-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Aggiungi Candidato</span>
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
							<h1 class="nav-title text-white">Aggiungi Candidato</h1>
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
						<li><a class="nav-link" id="v-pills-all-tab"
							data-toggle="pill" href="ricerca.jsp" role="tab"
							aria-controls="v-pills-all"><i class="icon icon-user"></i>Tutti i Candidati</a></li>
						<li class="float-right"><a class="nav-link active"
							href="profilo&cv.jsp"><i class="icon icon-plus-circle"></i>
								Aggiungi Candidato</a></li>
					</ul>
				</div>
			</div>
		</header>






		<div class="container-fluid animatedParent animateOnce">
			<div class="row my-3">
				<div class="col-md-12">
					<form method="post" action="Servlet" name="profilo" enctype ="multipart/form-data">
						<div class="card no-b  no-r">
							<div class="card-body">
								<h5 class="card-title">Anagrafica</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-6 m-0">
												<label for="nome_congnome" class="col-form-label s-12">NOME
													E COGNOME</label> <input id="nome_cognome" name="nome_cognome"
													placeholder="Inserisci Nome e Cognome"
													class="form-control r-0 light s-12 " type="text">
											</div>
											<div class="form-group col-6 m-0">
												<label for="recapito" class="col-form-label s-12">RECAPITO</label>
												<input id="recapito" name="recapito"
													placeholder="Inserisci Recapito"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-6 m-0">
												<label for="email" class="col-form-label s-12">EMAIL</label>
												<input id="email" name="email" placeholder="Inserisci Email"
													class="form-control r-0 light s-12 datePicker"
													data-time-picker="false" data-format-date='Y/m/d'
													type="text">
											</div>
											<div class="form-group col-6 m-0">
												<label for="email" class="col-form-label s-12">PROFILO LINKEDIN</label>
												<input id="profilo_linkedin" name="profilo_linkedin" placeholder="Linkedin URL"
													class="form-control r-0 light s-12 datePicker"
													data-time-picker="false" data-format-date='Y/m/d'
													type="text">
											</div>
											<div class="form-group col-6 m-0">
												<label for="citta_di_allocazione"
													class="col-form-label s-12">CITTA'</label> <input
													id="citta_di_allocazione" name="citta_di_allocazione"
													placeholder="Inserisci Citt?? di Allocazione"
													class="form-control r-0 light s-12 datePicker"
													data-time-picker="false" data-format-date='Y/m/d'
													type="text">
											</div>
											<div class="form-group col-6 m-0">
											<label for="citta_di_allocazione"
													class="col-form-label s-12">CARICA CV</label><br>
         					<input type="file" name="nomeFile" enctype="multipart/form-data">
         				</form>
         </div>
										</div>
									</div>
									
      </form>
<!-- 									<div class="col-md-3 offset-md-1"> -->
<!-- 										<input type="hidden" id="file" name="file" /> -->
<!-- 										<div class="dropzone dropzone-file-area pt-4 pb-4" -->
<!-- 											id="fileUpload"> -->
<!-- 											<div class="dz-default dz-message"> -->
<!-- 												<div>Carica qui il CV</div> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
								</div>
								<!-- Fine row -->
							</div>
							<!-- Fine Card -->
							
							<hr>

							<div class="card-body">
								<h5 class="card-title">Colloquio</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-4 m-0">
												<label for="data_colloquio" class="col-form-label s-12"><i
													class="icon-calendar mr-2"></i>DATA COLLOQUIO</label> <input
													id="data_colloquio" name="data_colloquio"
													placeholder="Inserisci Data Colloquio"
													class="form-control r-0 light s-12 datePicker"
													data-time-picker="false" data-format-date='Y/m/d'
													type="text">
											</div>
											<div class="form-group col-4 m-0">
												<label for="anno_colloquio" class="col-form-label s-12">ANNO
													COLLOQUIO</label> <input id="anno_colloquio"
													name="anno_colloquio" placeholder="Inserisci Anno
													Colloquio" class="form-control r-0 light s-12 date-picker"
													type="text">
											</div>
											<div class="form-group col-4 m-0">
												<label for="esito_colloquio" class="col-form-label s-12">ESITO COLLOQUIO</label> 
												<select name="esito_colloquio" id="esito_colloquio" class="form-control r-0 light s-12 date-picker"></select>
											</div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->
								<hr>
								<h5 class="card-title">Candidatura</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-4 m-0">
												<label for="fonte_reperimento" class="col-form-label s-12">FONTE
													REPERIMENTO</label> <input id="fonte_reperimento"
													name="fonte_reperimento"
													placeholder="Inserisci Fonte Reperimento"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
											<div class="form-group col-4 m-0">
												<label for="ruolo_profilo" class="col-form-label s-12">RUOLO</label>
												<select name="ruolo_profilo" id="ruolo_profilo" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="competenza_principale" class="col-form-label s-12">COMPETENZA PRINCIPALE</label>
												<input id="competenza_principale" name="competenza_principale" placeholder="Insersci Competenza Principale"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->
								<hr>
								<h5 class="card-title">Costo Impiego</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-6 m-0">
												<label for="costo_giornaliero" class="col-form-label s-12">COSTO
													GIORNALIERO</label> <input id="costo_giornaliero"
													name="costo_giornaliero"
													placeholder="Insersci Costo Giornaliero"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
											<div class="form-group col-6 m-0">
												<label for="possibilita_lavorativa"
													class="col-form-label s-12">POSSIBILITA' LAVORATIVA</label>
												<input id="possibilita_lavorativa"
													name="possibilita_lavorativa"
													placeholder="Insersci Possibilit?? Lavorativa"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->

								<hr>

								<h5 class="card-title">Skill/Tech</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-4 m-0">
												<label for="skill_1" class="col-form-label s-12">SKILL1</label>
												<select name="skill_1" id="skill_1" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="skill_2" class="col-form-label s-12">SKILL2</label>
												<select name="skill_2" id="skill_2" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="skill_3" class="col-form-label s-12">SKILL3</label>
												<select name="skill_3" id="skill_3" class="form-control r-0 light s-12 date-picker"></select>
											</div>

											<div class="form-group col-4 m-0">
												<label for="skill_4" class="col-form-label s-12">SKILL4</label>
												<select name="skill_4" id="skill_4" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="skill_5" class="col-form-label s-12">SKILL5</label>
												<select name="skill_5" id="skill_5" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="skill_campo_libero" class="col-form-label s-12">SKILL
													(campo libero)</label> <input id="skill_campo_libero"
													name="skill_campo_libero"
													placeholder="Insersci Skill Campo Libero"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->

								<hr>

								<h5 class="card-title">Lingua</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-4 m-0">
												<label for="lingua_1" class="col-form-label s-12">LINGUA 1</label> 
													<select name="lingua_1" id="lingua_1" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="lingua_2" class="col-form-label s-12">LINGUA 2</label>
												<select name="lingua_2" id="lingua_2" class="form-control r-0 light s-12 date-picker"></select>
											</div>
											<div class="form-group col-4 m-0">
												<label for="lingua_3" class="col-form-label s-12">LINGUA 3</label> 
												<select name="lingua_3" id="lingua_3" class="form-control r-0 light s-12 date-picker"></select>
											</div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->


								<hr>

								<h5 class="card-title">Info Extra</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-4 m-0">
												<label for="competenze_totali" class="col-form-label s-12">COMPETENZE
													TOTALI</label> <input id="competenze_totali"
													name="competenze_totali"
													placeholder="Insersci Competenze Totali"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
											<div class="form-group col-4 m-0">
												<label for="certificazioni" class="col-form-label s-12">CERTIFICAZIONI</label>
												<input id="certificazioni" name="certificazioni"
													placeholder="Insersci Certificazioni"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
											<div class="form-group col-4 m-0">
												<label for="seniority" class="col-form-label s-12">SENIORITY</label>
												<select name="seniority" id="seniority" class="form-control r-0 light s-12 date-picker"></select>
											</div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->


								<hr>

								<h5 class="card-title">Impressioni</h5>
								<div class="form-row">
									<div class="col-md-12">
										<div class="form-row">
											<div class="form-group col-12 m-0">
												<label for="commento" class="col-form-label s-12">COMMENTO</label>
												<input id="commento" name="commento"
													placeholder="Insersci Commento"
													class="form-control r-0 light s-12 date-picker" type="text">
											</div>
											<div id="commenti" class="col-md-6 offset-1"></div>
										</div>
									</div>
								</div>
								<!-- Fine Row -->


								<hr>

								<div class="card-body">
									<input type="hidden" name="Servlet" value="profilo">
									<input type="submit" value="SALVA">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
		<a href="ricerca.jsp"
			class="btn-fab btn-fab-md fab-right fab-right-bottom-fixed shadow btn-primary chiudiruota"><i
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
		
	</body>
</html>
<%}%>