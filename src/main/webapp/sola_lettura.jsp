<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
if (session.getAttribute("Login") == null) {
%><html>
<head>
<title>Unico</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
	rel="stylesheet">
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
} else {
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>

<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="javascript.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
	rel="stylesheet">
<link rel="icon" href="assets/img/basic/favicon.ico" type="image/x-icon">
<title>RPCTech - Recruiting - Profilo</title>
<!-- CSS -->
<link rel="stylesheet" href="assets/css/app.css">
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


<body class="light" onload="stampa_profilo()">

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
								<h6 class="font-weight-light mt-2 mb-1">
									<%
									String x = (String) session.getAttribute("Utente");
									out.println(x);
									%>
								</h6>
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
					<li class="treeview"><a href="ricerca.jsp"> <i
							class="icon icon-account_box light-green-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Tutte le risorse</span>
					</a></li>
					<li class="treeview"><a href="profilo&cv.jsp"> <i
							class="icon icon-add"> <input type="hidden" name="Servlet"
								value="logout">
						</i> <span>Aggiungi risorsa</span>
					</a></li>
					<li class="treeview"><a href="index.jsp"> <i
							class="icon icon-exit_to_app purple-text s-18"> <input
								type="hidden" name="Servlet" value="logout">
						</i> <span>Esci</span>
					</a></li></ul>
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
							<h1 class="nav-title text-white">Dettaglio</h1>
						</div>
					</div>
				</div>
				<!--Top Menu Start -->

			</div>

		</div>
	</div>
 <div class="page">
    <form method="post" action="Servlet">
        <div class="page has-sidebar-left height-full">
            <div class="container-fluid relative animatedParent animateOnce p-lg-5">
                <div class="card no-b shadow no-r">
                    <div class="row no-gutters">
                        <div class="col-md-4 b-r">
                            <div class="text-center p-5 mt-5">
                                <div>
                                    <h4 class="p-t-10"> <input type="text" id="nome" name="nome"></h4>
                                    Ruolo
                                </div>
                                <a href="#" class="btn btn-success  mt-3">Scarica CV</a>
                                <a href="#" class="btn btn-success  mt-3">Genera CV</a>
                                <a href="#" class="btn btn-success  mt-3">Modifica</a>
                                <a href="#" class="btn btn-success  mt-3">Elimina</a>
                                <div class="mt-5">
                                    <ul class="social social list-inline">
                                        <li class="list-inline-item"><a href="#" class="grey-text"><i class="icon-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="p5 b-b">
                                <div class="pl-4 mt-4">
                                    <h5>Recapiti</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Email</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Recapito</h4>
                                            <span>064062735</span>
                                        </div>
                                    </div>                                
                                </div>
                            </div>
                           
                            <div class="p5 b-b">
                                <div class="pl-4 mt-4">
                                    <h5>Anagrafica</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Città</h4>
                                            <span>Roma</span>
                                        </div>
                                    </div>
                                    
                                  
                                </div>
                            </div>

                            <div class="p5 b-b">
                                <div class="pl-4 mt-4">
                                    <h5>Competenze</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="p-4">
                                            <h4 class="text-black">Competenze Principali</h4>
                                            <span>java</span>
                                        </div>
                                    </div>
                                </div>
                            </div>                             
                        </div> <!-- fine campi stretti -->
                      </div>                      
                        
                        <div class="p5 b-b"> <!-- inizio campi larghi --> 
                                <div class="pl-4 mt-4">
                                    <h5>Colloquio</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Data Colloquio:</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Anno Colloquio:</h4>
                                            <span>064062735</span>
                                        </div>
                                    </div>   
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Esito Colloquio:</h4>
                                            <span>064062735</span>
                                        </div>
                                    </div>                                                         
                                </div>
                            </div>
                                  <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Candidatura</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="p-4">
                                            <h4 class="text-black">Fonte Reperimento: </h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                </div>   
                              </div>
                               
                               <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Costo Impiego</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="p-4">
                                            <h4 class="text-black">Costo Giornaliero:</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                    <div class="col-md-6">
                                        <div class="p-4">
                                            <h4 class="text-black">Possibilità Lavorativa:</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div> 
                                </div>   
                              </div>
                              
                              <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Skill-Tech</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Skill</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                    <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div> 
                                     <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Skill1</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                    <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech1</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div> 
                                </div>   
                              </div>
                              
                              <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Lingua</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Lingua 1</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                    <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Lingua 2</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div> 
                                     <div class="col-md-3">
                                        <div class="p-4">
                                            <h4 class="text-black">Lingua 3</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                               </div>
                               </div>
                               
                              <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Info Extra</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Competenze Totali:</h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Certificazioni: </h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div> 
                                     <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Seniority: </h4>
                                            <span>paper_user@panel.com</span>
                                        </div>
                                     </div>
                                     </div>
                                     
                                     <div class="row">
								<div id="commenti" class="col-md-6 offset-1">
									<br>
								</div>
								<br>
								<br>
							</div>
                       </div>  
               </div>
             </div>
           </div>
         </form>
       </div>   
        <!-- Contenuto della pagina centrale -->
	<br>
	<!-- <div class="row justify-content-center">
		<div class="col-md-9">
			<p class="utente">
				<a href="home.jsp">Home</a> > <a href="ricerca.jsp">Profilo & CV</a>
				> <span id="nome_cognome"></span>
				<!-- Home > Ricerca > Nome&Cognome 
			</p>
		</div>
	</div> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<form method="post" action="Servlet"> -->
<!-- 		<div class="row categorie"> -->
<!-- 			<div id="" class="col-md-12"> -->
<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-md-12"> -->
<!-- 								<h4>Anagrafica</h4> -->
<!-- 							</div> -->

<!-- 						</div> -->

<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Nome: <input type="text" id="nome" name="nome" -->
<!-- 										style="width: 150px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Cognome: <input type="text" id="cognome" name="cognome" -->
<!-- 										style="width: 150px !important;" disabled> -->
<!-- 								</div> -->

<!-- 								<div class="col-md-4"> -->
<!-- 									Numero Telefono: <input type="text" id="numeroTelefono" -->
<!-- 										name="recapito" style="width: 120px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-6"> -->
<!-- 									Email: <input type="text" id="email" name="email" -->
<!-- 										style="width: 150px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-6"> -->
<!-- 									Città: <input type="text" id="citta" name="citta_allocazione" -->
<!-- 										style="width: 150px !important;" disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->


<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Posizione</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-6"> -->
<!-- 									Ruolo: <input type="text" id="ruolo" name="ruolo" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-6"> -->
<!-- 									Competenza Principale: <input type="text" -->
<!-- 										id="competenza_principale" name="competenza_principale" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->


<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Colloquio</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Data Colloquio: <input type="text" id="data_colloquio" -->
<!-- 										name="data_colloquio" style="width: 150px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Anno Colloquio: <input type="text" id="anno_colloquio" -->
<!-- 										name="anno_colloquio" style="width: 150px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Esito Colloquio: <input type="text" id="esito_colloquio" -->
<!-- 										name="esito_colloquio" style="width: 120px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->

<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Candidatura</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md"> -->
<!-- 									Fonte Reperimento: <input type="text" id="fonte_reperimento" -->
<!-- 										name="fonte_reperimento" style="width: 150px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
				<!-- Fine Card -->

<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Costo-Impiego</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-6"> -->
<!-- 									Costo Giornaliero: <input type="text" id="costo_giornaliero" -->
<!-- 										name="costo_giornaliero" style="width: 200px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-6"> -->
<!-- 									Possibilità Lavorativa: <input type="text" -->
<!-- 										id="possibilita_lavorativa" name="possibilita_lavorativa" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->

<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Skill-Tech</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Skill: <input type="text" id="skill" name="skill" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Tech: <input type="text" id="tech" name="tech1" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Tech2: <input type="text" id="tech_2" name="tech2" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Tech3: <input type="text" id="tech_3" name="tech3" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Tech4: <input type="text" id="tech_4" name="tech4" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md-4"> -->
<!-- 									Tech(Campo Libero): <input type="text" id="tech_campo_libero" -->
<!-- 										name="tech_campo_libero" style="width: 200px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->

<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Lingua</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md id="div_lingua_1"> -->
<!-- 									Lingua1: <input type="text" id="lingua_1" name="lingua1" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md id="div_lingua_2"> -->
<!-- 									Lingua2: <input type="text" id="lingua_2" name="lingua2" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md id="div_lingua_3"> -->
<!-- 									Lingua3: <input type="text" id="lingua_3" name="lingua3" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->

<!-- 				<div class="card"> -->
<!-- 					<div class="card-header"> -->
<!-- 						<h4>Info Extra</h4> -->
<!-- 					</div> -->
<!-- 					<div class="card-body"> -->
<!-- 						<div class="container"> -->
<!-- 							<div class="row"> -->
<!-- 								<div class="col-md"> -->
<!-- 									Competenze Totali: <input type="text" id="competenze_totali" -->
<!-- 										name="competenze_totali" style="width: 200px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md"> -->
<!-- 									Certificazioni: <input type="text" id="certificazioni" -->
<!-- 										name="certificazioni" style="width: 200px !important;" -->
<!-- 										disabled> -->
<!-- 								</div> -->
<!-- 								<div class="col-md"> -->
<!-- 									Seniority: <input type="text" id="seniority" name="seniority" -->
<!-- 										style="width: 200px !important;" disabled> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							Fine Row -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->
							<!-- Fine Row -->
<!-- 							<div class="row"> -->
<!-- 								<div id="commenti" class="col-md-6 offset-1"> -->
<!-- 									<br> -->
<!-- 								</div> -->
<!-- 								<br> -->
<!-- 								<br> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Fine Container -->
<!-- 					</div> -->
<!-- 					Fine Card Body -->
<!-- 				</div> -->
<!-- 				Fine Card -->

<!-- 			</div> -->
<!-- 			<!-- Fine Column -->
<!-- 		</div> -->
<!-- 		<!-- Fine Row Categorie --> 
<!-- 	</form> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	</div> -->
<!-- 	<!-- Fine Container Head -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<div type="hidden" id="scarica_cv"></div> -->
</body>
</html>
<%}%>