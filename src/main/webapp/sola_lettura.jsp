<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<link rel="stylesheet" href="app.css">
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
    		%><body class="light" onload="stampa_profilo_lettura()">
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
							class="icon icon-add_box light-green-text s-18"> <input type="hidden" name="Servlet"
								value="logout">
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
                                    <h4 class="p-t-10"> <span id="nome_cognome"></span></h4>
                                    <h5 class="p-t-10"> <span id="ruolo"></span></h5>
                                </div>
                                    <input type="hidden" id="id" name="id">
									<a onclick="scarica()" class="btn btn-success  mt-3">Scarica CV</a> 
									<a onclick="genera_cv()" class="btn btn-success  mt-3">Genera CV</a> 
									<a href="stampa_profilo.jsp" class="btn btn-success giallo mt-3">Modifica</a> 
									<a href="#" class="btn btn-success rosso  mt-3" onclick="elimina()">Elimina</a>

									<div class="mt-5">
                                    <ul class="social social list-inline">
                                        <li class="list-inline-item"><a id="profilo_linkedin" class="grey-text"><i class="icon-linkedin"></i></a></li>
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
                                    <div class="col-md-6">
                                        <div class="p-4">
                                            <h4 class="text-black">Email</h4>
                                           <h5 class="p-t-10"> <span id="email"></span></h5>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="p-4">
                                            <h4 class="text-black">Recapito</h4>
                                            <h5 class="p-t-10"> <span id="recapito"></span></h5>
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
                                            <h5 class="text-black">Città</h5>
                                           <h5 class="p-t-10"><span id="citta_di_allocazione"></span></h5>
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
                                            <h5 class="text-black">Competenza Principale</h5>
                                            <h5 class="p-t-10"><span id="competenza_principale"></span></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>                             
                        </div> <!-- fine campi stretti -->
                      </div>                      
                        
                        <div class="p5 b-b bordo"> <!-- inizio campi larghi --> 
                                <div class="pl-4 mt-4">
                                    <h5>Colloquio</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h5 class="text-black">Data Colloquio:</h5>
                                            <h5 class="p-t-10"><span id="data_colloquio"></span></h5>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Anno Colloquio:</h4>
                                            <h5 class="p-t-10"><span id="anno_colloquio"></span></h5>
                                        </div>
                                    </div>   
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Esito Colloquio:</h4>
                                            <h5 class="p-t-10"><span id="esito_colloquio"></span></h5>
                                        </div>
                                    </div>                                                         
                                </div>
                            </div>
                                   <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Fonte Reperimento</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="p-4">
                                            <h4 class="text-black">Fonte Reperimento: </h4>
                                           <h5 class="p-t-10"><span id="fonte_reperimento"></span></h5>
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
                                           <h5 class="p-t-10"><span id="costo_giornaliero"></span></h5>
                                        </div>
                                     </div>
                                    <div class="col-md-6">
                                        <div class="p-4">
                                            <h4 class="text-black">Possibilità Lavorativa:</h4>
                                            <h5 class="p-t-10"><span id="possibilita_lavorativa"></span></h5>
                                        </div>
                                     </div> 
                                </div>   
                              </div>
                              
                              <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Skill-Tech</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Skill</h4>
                                            <h5 class="p-t-10"><span id="skill"></span></h5>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech 1</h4>
                                            <h5 class="p-t-10"><span id="tech_1"></span></h5>
                                        </div>
                                     </div> 
                                     <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech 2</h4>
                                            <h5 class="p-t-10"><span id="tech_2"></span></h5>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech 3</h4>
                                            <h5 class="p-t-10"><span id="tech_3"></span></h5>
                                        </div>
                                     </div> 
                                     <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech 4</h4>
                                            <h5 class="p-t-10"><span id="tech_4"></span></h5>
                                        </div>
                                     </div> 
                                     <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Tech campo libero</h4>
                                            <h5 class="p-t-10"><span id="tech_campo_libero"></span></h5>
                                        </div>
                                     </div> 
                                </div>   
                              </div>
                              
                              <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Lingua</h5>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Lingua 1</h4>
                                            <h5 class="p-t-10"><span id="lingua_1"></span></h5>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Lingua 2</h4>
                                            <h5 class="p-t-10"><span id="lingua_2"></span></h5>
                                        </div>
                                     </div> 
                                     <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Lingua 3</h4>
                                            <h5 class="p-t-10"><span id="lingua_3"></span></h5>
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
                                            <h5 class="p-t-10"><span id="competenze_totali"></span></h5>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Certificazioni: </h4>
                                            <h5 class="p-t-10"><span id="certificazioni"></span></h5>
                                        </div>
                                     </div> 
                                     <div class="col-md-4">
                                        <div class="p-4">
                                            <h4 class="text-black">Seniority: </h4>
                                            <h5 class="p-t-10"><span id="seniority"></span></h5>
                                        </div>
                                     </div>
                                     </div>
                                     </div>
                                     
                                     <div class="p5 b-b"> 
                                <div class="pl-4 mt-4">
                                    <h5>Commenti</h5>
                                </div>
                                     <div class="row">
								<div id="commento" class="col-md-6 offset-1">
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
       
        
       <div type="hidden" id="scarica_cv"></div>         
	</body>
</html>
<%}%> 