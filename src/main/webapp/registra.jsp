<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>Unico</title>
        <link rel="stylesheet" href="style.css">
        <script type="text/javascript" src="javascript.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
    </head>

	<%
  		if (session.getAttribute("Login") == null)
    	{	
  			%><body onload="errore()"><%
    	}
  		else	
  		{
    		%><body class="light" onload="menu_cascata_ruolo()"><%
  		}
	%>
        <center>
            <div>
                <h1>logo</h1>
            </div>

            <div class="bianco" style="width: 30%;">
                <form method="POST" action="Servlet">
                    <br>
                    <b><h2><p class="index">Aggiungi Utente</p></h2></b>
                    <br><br>
                    <h5><p class="index">Nome e Cognome</p></h2><br>
                    <p class="index"><input type="text" id="nome_cognome" name="nome_cognome" placeholder="Mario Rossi" required=""></p><br><br>
                    <h5><p class="index">Ruolo</p></h2><br>
                    <select name="ruolo" id="ruolo" class="cascata"></select>
                    <h5><p class="index">E-mail</p></h5><br>
                    <p class="index"><input type="text" name="email" placeholder="error@mail.com" required pattern="[^@\s]+@[^@\s]+\.[^@\s]+" title="Esempio error@mail.com"></p><br><br>
                    <h5><p class="index">Password</p></h2><br>
                    <p class="index"><input type="password" id="password" name="password" placeholder="**********" min="6" max="20" required=""></p><br><br>
                    <h5><p class="index">Conferma Password</p></h5><br>
                    <p class="index"><input type="password" id="password2" name="password2" placeholder="**********" min="6" max="20" required="" onblur="controlla()"></p><br><br><br><br>
                    <input type="hidden" name="Servlet" value="register">
                    <input type="submit" value="AGGIUNGI">
                    <br><br><br>
                </form>
            </div>
        </center>
    </body>
</html>