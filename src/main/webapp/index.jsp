<html>
    <head>
        <title>GesTech</title>
        <link rel="stylesheet" href="style.css">
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
			
		<link rel="stylesheet" href="app.css">
		<script type="text/javascript" src="javascript.js"></script>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link
			href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
			rel="stylesheet">
     	<style>
	        .loader
	        {
	            position: fixed;
	            left: 0;
	            top: 0;
	            width: 100%;
	            height: 100%;
	            background-color: #F5F8FA;
	            z-index: 9998;
	            text-align: center;
	        }
	        
	        .plane-container
	        {
	            position: absolute;
	            top: 50%;
	            left: 50%;
	        }
    	</style>
    </head>
    
    <body id="body" class="light loaded">
    	<script>
	    	var email = document.getElementById("body");
	        email.addEventListener("keypress", function(event)
	        {
	        	if (event.key === "Enter")
	            {
	            	 login();
	            }
	        });
        </script>
        <div id="primary" class="blue4 p-t-b-100 height-full responsive-phone">
	        <div class="container">
	            <div class="row">
	            	<div class="col-lg-2"></div>
	            	<div class="col-lg-8 p-t-100">
	            	    <div class="logo_cover">
	            	    <img src="Immagini/logo_cover.png">
	            	    </div>
	            		<div class="text-white">
	                		<p class="s-18 p-t-b-20 font-weight-lighter">Inserisci le credenziali per accedere al sistema</p>
	                	</div>
	            		<div class="col-lg-2"></div>
                       	<div class="row">
                            <div class="col-lg-6">
                                <div class="form-group has-icon"><i class="icon-envelope-o"></i>
                                    <input type="text" id="email" class="form-control form-control-lg no-b" name="email" placeholder="error@mail.com" required pattern="[^@\s]+@[^@\s]+\.[^@\s]+" title="Esempio error@mail.com">
                                    
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group has-icon"><i class="icon-user-secret"></i>
                                    <input type="password" id="password" name="password" class="form-control form-control-lg no-b" placeholder="**********">
                                    
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <input type="submit" onclick="login()" class="btn btn-success btn-lg btn-block marbot" value="Accedi">
                                <p class="forget-pass text-white">Hai dimenticato il nome utente o la password?</p>
                            </div>
                        </div>
                	</div>
            	</div>
        	</div>
    	</div>
    </body>
</html>