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

    <body>
        <br><br>
        <table border="3">
            <tr>
                <th colspan="3" id="anagrafica" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Anagrafica</th>
                <th colspan="2" id="posizione" onclick="posizione()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Posizione</th>
                <th colspan="4" id="colloquio" onclick="colloquio()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Colloquio</th>
                <th colspan="1" id="candidatura" onclick="candidatura()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Candidatura</th>
                <th colspan="2" id="costo_impiego" onclick ="costo_impiego()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Costo/Impiego</th>
                <th colspan="6" id="skill_tech" onclick ="skill_tech()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Skill/Tech</th>
                <th colspan="3" id="lingua" onclick ="lingua()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Lingua</th>
                <th colspan="3" id="persona" onclick ="persona()" class="blue"><svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24"><path d="M14 3h3l-5 5-5-5h3v-3h4v3zm-4 18h-3l5-5 5 5h-3v3h-4v-3zm-7-11v-3l5 5-5 5v-3h-3v-4h3zm18 4v3l-5-5 5-5v3h3v4h-3z"/></svg>   Persona</th>
            </tr>
            <tr>
                <td id="vuoto2">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                <td id="recapito"><b>Recapito</b></td> 
                <td id="citta"><b>Citt� Di Allocazione</b></td>

                <td id="skill"><b>Skill</b></td>
                <td id="competenza"><b>Competenza</b></td>

                <td id="data"><b>Data Colloquio</b></td>
                <td id="anno"><b>Anno Colloquio</b></td>
                <td id="esito"><b>Esito Colloquio</b></td>
                <td id="impressioni"><b>Impressioni</b></td>

                <td id="fonte"><b>Fonte reperimento&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</b></td>

                <td id="cost"><b>Costo GG</b></td>
                <td id="possibilita"><b>Possibilit� Lavorativa&nbsp&nbsp&nbsp&nbsp</b></td>

                <td id="skill2"><b>Skill</b></td>
                <td id="tech1"><b>Tech[1]</b></td>
                <td id="tech2"><b>Tech[2]</b></td>
                <td id="tech3"><b>Tech[3]</b></td>
                <td id="tech4"><b>Tech[4]</b></td>
                <td id="tech5"><b>Tech[5]</b></td>

                <td id="lang1"><b>Lingua[1]</b></td>
                <td id="lang2"><b>Lingua[2]</b></td>
                <td id="lang3"><b>Lingua[3]</b></td>

                <td id="comp"><b>Comp Tot</b></td>
                <td id="certificazioni"><b>Certificazioni</b></td>
                <td id="seniority"><b>Seniority</b></td>
            </tr>
        </table>
        <br>
        <button onclick = "posizione()" id="bottone_posizione" style="display: none;">Posizione</button>
        <button onclick = "colloquio()" id="bottone_colloquio" style="display: none;">Colloquio</button>
        <button onclick = "candidatura()" id="bottone_candidatura" style="display: none;">Candidatura</button>
        <button onclick = "costo_impiego()" id="bottone_costo_impiego" style="display: none;">Costo/Impiego</button>
        <button onclick = "skill_tech()" id="bottone_skill_tech" style="display: none;">Skill/Tech</button>
        <button onclick = "lingua()" id="bottone_lingua" style="display: none;">Lingua</button>
        <button onclick = "persona()" id="bottone_persona" style="display: none;">Persona</button>
        <br><br><br>
        <center><a href="index.jsp">Back</a></center>
    </body>
</html> 