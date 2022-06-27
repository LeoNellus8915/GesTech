function controlla()
{
	var e1 = document.getElementById("password").value;
	var e2 = document.getElementById("password2").value;
	if (e1 != e2) {
		alert('Le password non coincidono!');
	}
}
function bustepaga()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "lettura_mese, ");
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			date = risposta.split(", ");

			if (date[1] != "null")
				document.getElementById('Gennaio').style.color = "red";
			if (date[2] != "null")
				document.getElementById('Febbraio').style.color = "red";
			if (date[3] != "null")
				document.getElementById('Marzo').style.color = "red";
			if (date[4] != "null")
				document.getElementById('Aprile').style.color = "red";
			if (date[5] != "null")
				document.getElementById('Maggio').style.color = "red";
			if (date[6] != "null")
				document.getElementById('Giugno').style.color = "red";
			if (date[7] != "null")
				document.getElementById('Luglio').style.color = "red";
			if (date[8] != "null")
				document.getElementById('Agosto').style.color = "red";
			if (date[9] != "null")
				document.getElementById('Settembre').style.color = "red";
			if (date[10] != "null")
				document.getElementById('Ottobre').style.color = "red";
			if (date[11] != "null")
				document.getElementById('Novembre').style.color = "red";
			if (date[12] != "null")
				document.getElementById('Dicembre').style.color = "red";

			if (date[1] != "null")
				document.getElementById("1").innerHTML = date[1];
			if (date[2] != "null")
				document.getElementById("2").innerHTML = date[2];
			if (date[3] != "null")
				document.getElementById("3").innerHTML = date[3];
			if (date[4] != "null")
				document.getElementById("4").innerHTML = date[4];
			if (date[5] != "null")
				document.getElementById("5").innerHTML = date[5];
			if (date[6] != "null")
				document.getElementById("6").innerHTML = date[6];
			if (date[7] != "null")
				document.getElementById("7").innerHTML = date[7];
			if (date[8] != "null")
				document.getElementById("8").innerHTML = date[8];
			if (date[9] != "null")
				document.getElementById("9").innerHTML = date[9];
			if (date[10] != "null")
				document.getElementById("10").innerHTML = date[10];
			if (date[11] != "null")
				document.getElementById("11").innerHTML = date[11];
			if (date[12] != "null")
				document.getElementById("12").innerHTML = date[12];
		}
	}
}
async function invio(mese, pdf)
{
	var xhttp = new XMLHttpRequest();

	var mese_corrente = document.getElementById(mese);
	var conferma = null;
	var colore = window.getComputedStyle(mese_corrente).color;

	if (colore != "rgb(255, 0, 0)")
	{
		conferma = confirm("Stai scaricando il pdf del mese di " + mese + ". Verra segnato l'orario del download.");
		if (conferma == true)
		{
			document.getElementById(pdf).click();

			xhttp.open("POST", 'Servlet_Ricerca', true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("Servlet=" + "scrittura_mese," + mese);

			await sleep(1000);
			bustepaga();
		}
	}
	else
		document.getElementById(pdf).click();
}
function sleep(ms)
{
	return new Promise(resolve => setTimeout(resolve, ms));
}
function certificazione_unica()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "lettura_anno, ");
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			date = risposta.split(", ");

			if (date[1] != "null")
				document.getElementById('2019').style.color = "red";
			if (date[2] != "null")
				document.getElementById('2020').style.color = "red";
			if (date[3] != "null")
				document.getElementById('2021').style.color = "red";
			if (date[4] != "null")
				document.getElementById('2022').style.color = "red";

			if (date[1] != "null")
				document.getElementById("1").innerHTML = date[1];
			if (date[2] != "null")
				document.getElementById("2").innerHTML = date[2];
			if (date[3] != "null")
				document.getElementById("3").innerHTML = date[3];
			if (date[4] != "null")
				document.getElementById("4").innerHTML = date[4];
		}
	}
}
async function invio2(anno, pdf)
{
	var xhttp = new XMLHttpRequest();

	var anno_corrente = document.getElementById(anno);
	var conferma = null;
	var colore = window.getComputedStyle(anno_corrente).color;

	if (colore != "rgb(255, 0, 0)")
	{
		conferma = confirm("Stai scaricando il pdf dell'anno " + anno + ". Verra segnato l'orario del download.");
		if (conferma == true) {
			document.getElementById(pdf).click();

			xhttp.open("POST", 'Servlet_Ricerca', true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("Servlet=" + "scrittura_anno," + anno);
			await sleep(1000);
			certificazione_unica();
		}
	}
	else
		document.getElementById(pdf).click();
}
function add(div, controllo, bottone, remove)
{
	var dato = document.forms["profilo"][controllo].value;
	if ((document.getElementById(div).style.display == "none") && (dato != ""))
	{
		document.getElementById(div).removeAttribute('style');
		document.getElementById(remove).removeAttribute('style');
		if (document.getElementById(bottone) != null)
			document.getElementById(bottone).removeAttribute('style');
	}
}
function remove(input, div, piu, meno)
{
	document.getElementById(input).value = '';
	document.getElementById(div).style.display = 'none';
	document.getElementById(meno).style.display = 'none';
	if (document.getElementById(piu) != null)
		document.getElementById(piu).style.display = 'none';
}
function setStorage(id)
{
	localStorage.setItem("dato", id);
}

function ricerca()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "ricerca");

	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			profili = risposta.split(", ");
			var arrayRow = [];
			for (var c = 1; c < profili.length - 1; c++)
			{
				valori = profili[c].split(" ");
				var b1 = '<a href="sola_lettura.jsp" id='+valori[0]+' onclick="setStorage('+valori[0]+')"><i class="icon-eye mr-3"></i></a>';
				var b2 = '<a href="stampa_profilo.jsp" id='+valori[0]+' onclick="setStorage('+valori[0]+')"><i class="icon-pencil"></i></a>';
				/*var a1 = document.createElement('a');
				a1.href = "sola_lettura.jsp";
				a1.id = valori[0];
				a1.onclick = function()
				{
					localStorage.setItem("dato", this.id);
				}
				var i1 = document.createElement('i');
				i1.className = "icon-eye mr-3";
				a1.appendChild(i1);
				
				var a2 = document.createElement('a');
				a2.href = "stampa_profilo.jsp";
				a2.id = valori[0];
				a2.onclick = function()
				{
					localStorage.setItem("dato", this.id);
				}
				var i2 = document.createElement('i');
				i2.className = "icon-pencil";
				a2.appendChild(i2);*/
				arrayRow.push([
					 valori[0],valori[1] + " " + valori[2], valori[3],valori[4], valori[5],
					b1 +b2
				]);
			}
			$('#prova').DataTable({
				"data": arrayRow
			});
		}
	}
}


/*function ricerca()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "ricerca");

	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			profili = risposta.split(", ");
			for (var c = 1; c < profili.length - 1; c++)
			{
				const paragrafo = document.createElement("p");
				paragrafo.id = c;
				paragrafo.onclick = function()
				{
					window.open("stampa_profilo.jsp", "_self");
					localStorage.setItem("dato", this.id);
				}
				paragrafo.innerText = profili[c];
				document.getElementById("curriculum").appendChild(paragrafo);
			}
		}
	}
}*/
function stampa_profilo()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "stampa_profilo," + localStorage.getItem("dato"));
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_profilo = xhttp.responseText;
			profilo = risposta_profilo.split(", -");    // cambiano tutti i riferimenti pr modifica al Db
			alert(risposta_profilo);
			alert(profilo);
			document.getElementById("nome_cognome").innerHTML = profilo[1] + " " + profilo[2];  // Home > Ricerca > Nome&Cognome
			
			document.getElementById("nome").value =  profilo[1];
			document.getElementById("cognome").value =  profilo[2];
			document.getElementById("numeroTelefono").value =  profilo[3];  // Controllo se profilo[] è null, se lo è campo vuoto
			document.getElementById("email").value = profilo[4]
			document.getElementById("citta").value = profilo[5];            // profilo[4]!=="null"?profilo[4]:"";
			
			document.getElementById("ruolo").value = profilo[6];
			document.getElementById("competenza_principale").value = profilo[7];
			
			document.getElementById("data_colloquio").value = profilo[8];
			document.getElementById("anno_colloquio").value = profilo[9];
			document.getElementById("esito_colloquio").value = profilo[10];
			
			document.getElementById("fonte_reperimento").value = profilo[11];
			
			document.getElementById("costo_giornaliero").value = profilo[12];
			document.getElementById("possibilita_lavorativa").value = profilo[13];
			
			document.getElementById("skill").value = profilo[14];
			document.getElementById("tech_1").value = profilo[15];   // prima tech
			document.getElementById("tech_2").value = profilo[16];
			document.getElementById("tech_3").value = profilo[17];
			document.getElementById("tech_4").value = profilo[18];
			document.getElementById("tech_campo_libero").value = profilo[19];
			
			document.getElementById("lingua_1").value = profilo[20];
			document.getElementById("lingua_2").value = profilo[21];
			document.getElementById("lingua_3").value = profilo[22];
			
			document.getElementById("competenze_totali").value = profilo[23];
			document.getElementById("certificazioni").value = profilo[24];
			document.getElementById("seniority").value = profilo[25];
			
			/*for(var i=0; i < profilo.length; i++){
				console.log(profilo[i] + " " + i);
			}*/
			
			for(var i=27; i < profilo.length-1; i++){
			const paragrafo = document.createElement("p");
			paragrafo.id = i;
			paragrafo.innerText = profilo[i];
			document.getElementById("commenti").appendChild(paragrafo);
			}
			
			localStorage.setItem("nome_cognome", profilo[1] + "_" + profilo[2]);
			localStorage.setItem("array", profilo);
		}
	}
}
function stampa_profilo_lettura()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "stampa_profilo," + localStorage.getItem("dato"));
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_profilo = xhttp.responseText;
			profilo = risposta_profilo.split(", ");    // cambiano tutti i riferimenti pr modifica al Db
			
			
			document.getElementById("nome_cognome").innerHTML = profilo[1]// Home > Ricerca > Nome&Cognome
			
			document.getElementById("recapito").innerHTML =  profilo[2];  // Controllo se profilo[] è null, se lo è campo vuoto
			document.getElementById("email").innerHTML = profilo[3]
			document.getElementById("citta_di_allocazione").innerHTML = profilo[4];            // profilo[4]!=="null"?profilo[4]:"";
			
			document.getElementById("ruolo").innerHTML = profilo[5];
			document.getElementById("competenza_principale").innerHTML = profilo[6];
			
			document.getElementById("data_colloquio").innerHTML = profilo[7];
			document.getElementById("anno_colloquio").innerHTML = profilo[8];
			document.getElementById("esito_colloquio").innerHTML = profilo[9];
			
			document.getElementById("fonte_reperimento").innerHTML = profilo[10];
			
			document.getElementById("costo_giornaliero").innerHTML = profilo[11];
			document.getElementById("possibilita_lavorativa").innerHTML = profilo[12];
			
			document.getElementById("skill").innerHTML = profilo[13];
			document.getElementById("tech_1").innerHTML = profilo[14];   // prima tech
			document.getElementById("tech_2").innerHTML = profilo[15];
			document.getElementById("tech_3").innerHTML = profilo[16];
			document.getElementById("tech_4").innerHTML = profilo[17];
			document.getElementById("tech_campo_libero").innerHTML = profilo[18];
			
			document.getElementById("lingua_1").innerHTML = profilo[19];
			document.getElementById("lingua_2").innerHTML = profilo[20];
			document.getElementById("lingua_3").innerHTML = profilo[21];
			
			document.getElementById("competenze_totali").innerHTML = profilo[22];
			document.getElementById("certificazioni").innerHTML = profilo[23];
			document.getElementById("seniority").innerHTML = profilo[24];
			
			/*for(var i=0; i < profilo.length; i++){
				console.log(profilo[i] + " " + i);
			}*/
			
			for(var i=26; i < profilo.length-1; i++){
			const paragrafo = document.createElement("p");
			paragrafo.id = i;
			paragrafo.innerText = profilo[i];
			document.getElementById("commenti").appendChild(paragrafo);
			}
			
			localStorage.setItem("nome_cognome", profilo[1]);
			localStorage.setItem("array", profilo);
		}
	}
}
function cerca()
{
	var ricerca = document.getElementById("ricerca").value;
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "ricerca," + ricerca);
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			profili = risposta.split(", ");
			const paragrafo = document.createElement("p");
			paragrafo.id = risposta[4];
			paragrafo.onclick = function()
			{
				window.open("stampa_profilo.jsp", "_self");
				localStorage.setItem("dato", this.id);
			}
			paragrafo.innerText = profili[1];
			document.getElementById("curriculum").innerHTML = " ";
			document.getElementById("curriculum").appendChild(paragrafo);
		}
	}
}
function scarica()
{
	var nome_cognome = localStorage.getItem("nome_cognome");
	var pdf = document.createElement("a");
	pdf.id = nome_cognome + "_pdf";
	pdf.href = "PDF/" + nome_cognome + ".pdf";
	pdf.download = nome_cognome;
	pdf.type="hidden";
	document.getElementById("scarica_cv").appendChild(pdf);
	document.getElementById(nome_cognome + "_pdf").click();
}
function genera_cv()
{
	var nome_cognome = localStorage.getItem("nome_cognome");
	var doc = new jsPDF();
	
	var categorie = ["Nome: ", "Cognome: ", "Recapito: ", "Email: ", "Citta' di Allocazione: ", "Ruolo: ", "Competenza Principale: ", "Data Colloquio: ", 
	"Anno Colloquio: ", "Esito Colloquio: ", "Impressioni: ", "Fonte Reperimento: ", "Costo GG: ", "Possibilita' Lavorativa: ", "Skill: ",
	"Tech1: ", "Tech2: ", "Tech3: ", "Tech4: ", "Tech (Campo Libero): ", "Lingua1: ", "Lingua2: ", "Lingua3: ", "Competenze Totali: ", "Certificazioni: ",
	"Seniority: "];
	
	str = localStorage.getItem("array");
	array = str.split(",");
	array.pop();
	array.shift();
	var c=10;
	for(let i=0; i<array.length;i++){
		if(array[i]!=""){
			doc.text(categorie[i] + " " + array[i], 10, c);
			c+=7;
		}
	}
	doc.save(nome_cognome +  '_Cv.pdf')
}
function menu_cascata()
{
	menu_cascata_skill();
	menu_cascata_lingue();
	menu_cascata_seniority();
	menu_cascata_tech();
	menu_cascata_esito_colloquio();
}
function menu_cascata_lingue()
{
	var lingue;   
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_lingua");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_lingua = xhttp.responseText;
			lingue = risposta_lingua.split(", ");
			lingue.pop();
			lingue.shift();
			for (var c = 0; c < lingue.length; c++)
			{
				const lingua = document.createElement("option");
				lingua.value = lingue[c];
				lingua.innerHTML = lingue[c];
				document.getElementById('lingua_1').appendChild(lingua);
				
				const lingua2 = document.createElement("option");
				lingua2.value = lingue[c];
				lingua2.innerHTML = lingue[c];
				document.getElementById('lingua_2').appendChild(lingua2);
				
				const lingua3 = document.createElement("option");
				lingua3.value = lingue[c];
				lingua3.innerHTML = lingue[c];
				document.getElementById('lingua_3').appendChild(lingua3);
			}
		}
	}
}
function menu_cascata_seniority()
{
	var seniority;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_seniority");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_seniority = xhttp.responseText;
			seniority = risposta_seniority.split(", ");
			seniority.pop();
			seniority.shift();
			for (var c = 0; c < seniority.length; c++)
			{
				const senior = document.createElement("option");
				senior.value = seniority[c];
				senior.innerHTML = seniority[c];
				document.getElementById('seniority').appendChild(senior);
			}
		}
	}
}
function menu_cascata_skill()
{
	var skill;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_skill");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_skill = xhttp.responseText;
			skill = risposta_skill.split(", ");
			skill.pop();
			skill.shift();
			for (var c = 0; c < skill.length; c++)
			{
				const skills = document.createElement("option");
				skills.value = skill[c];
				skills.innerHTML = skill[c];
				document.getElementById('skill').appendChild(skills);
			}
		}
	}
}
function menu_cascata_esito_colloquio()
{
	var esito_colloqui;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_esito_colloquio");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_esito_colloqui = xhttp.responseText;
			esito_colloqui = risposta_esito_colloqui.split(", ");
			esito_colloqui.pop();
			esito_colloqui.shift();
			for (var c = 0; c < esito_colloqui.length; c++)
			{
				const esito_colloquio = document.createElement("option");
				esito_colloquio.value = esito_colloqui[c];
				esito_colloquio.innerHTML = esito_colloqui[c];
				document.getElementById('esito_colloquio').appendChild(esito_colloquio);
			}
		}
	}
}
function menu_cascata_tech()
{
	var tech;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_tech");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_tech = xhttp.responseText;
			tech = risposta_tech.split(", ");
			tech.pop();
			tech.shift();
			for (var c = 0; c < tech.length; c++)
			{
				const techs = document.createElement("option");
				techs.value = tech[c];
				techs.innerHTML = tech[c];
				document.getElementById('tech_1').appendChild(techs);  // sostituito input_tech1
				
				const techs2 = document.createElement("option");
				techs2.value = tech[c];
				techs2.innerHTML = tech[c];
				document.getElementById('tech_2').appendChild(techs2);
				
				const techs3 = document.createElement("option");
				techs3.value = tech[c];
				techs3.innerHTML = tech[c];
				document.getElementById('tech_3').appendChild(techs3);
				
				const techs4 = document.createElement("option");
				techs4.value = tech[c];
				techs4.innerHTML = tech[c];
				document.getElementById('tech_4').appendChild(techs4);
			}
		}
	}
}
function login()
{
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value;
	
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "login," + email + "," + password);
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var login = xhttp.responseText;
			if (login == 1)
				window.open("ricerca.jsp", "_self");
			else
				alert("Credenziali Sbagliate");
		}
	}
}
function menu_cascata_ruolo()
{
	var tech;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_ruolo");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_ruolo = xhttp.responseText;
			ruoli = risposta_ruolo.split(", ");
			ruoli.pop();
			ruoli.shift();
			for (var c = 0; c < ruoli.length; c++)
			{
				const ruolo = document.createElement("option");
				ruolo.value = ruoli[c];
				ruolo.innerHTML = ruoli[c];
				document.getElementById('ruolo').appendChild(ruolo);
			}
		}
	}
}
function errore()
{
	window.open("index.jsp", "_self");
}