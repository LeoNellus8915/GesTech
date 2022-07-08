package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.FileUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import model.Main;

@WebServlet(name="FileUpload", urlPatterns="/servlet/fileUpload")
@MultipartConfig
public class Servlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher disp = null;
		HttpSession session = request.getSession(true);
		Main main = new Main();
		String servlet = request.getParameter("Servlet"); 
		if (servlet.equals("logout"))
		{
			session.setAttribute("Login", null);
			disp = request.getRequestDispatcher("index.jsp");
			disp.forward(request, response);
		}
		if (servlet.equals("profilo"))
		{
			String nome_cognome = request.getParameter("nome_cognome");
			String recapito = request.getParameter("recapito");
			String email = request.getParameter("email");
			String profilo_linkedin = request.getParameter("profilo_linkedin");
			String citta_allocazione = request.getParameter("citta_di_allocazione");
			String ruolo = request.getParameter("ruolo");
			String competenza_principale = request.getParameter("competenza_principale");
			String data_colloquio = request.getParameter("data_colloquio");
			String anno_colloquio = request.getParameter("anno_colloquio");
			String esito_colloquio = request.getParameter("esito_colloquio");
			String fonte_reperimento = request.getParameter("fonte_reperimento");
			String costo_giornaliero = request.getParameter("costo_giornaliero");
			String possibilita_lavorativa = request.getParameter("possibilita_lavorativa");
			String skill = request.getParameter("skill");
			String tech1 = request.getParameter("tech_1");
			String tech2 = request.getParameter("tech_2");
			String tech3 = request.getParameter("tech_3");
			String tech4 = request.getParameter("tech_4");
			String tech_campo_libero = request.getParameter("tech_campo_libero");
			String lingua1 = request.getParameter("lingua_1");
			String lingua2 = request.getParameter("lingua_2");
			String lingua3 = request.getParameter("lingua_3");
			String competenze_totali = request.getParameter("competenze_totali");
			String certificazioni = request.getParameter("certificazioni");
			String seniority = request.getParameter("seniority");
			String impressioni = request.getParameter("commento");
			
			Part file = request.getPart("nomeFile");
			String nomeFile = file.getSubmittedFileName();
			String percorso = "";
			if(!nomeFile.equals("")) {
				file.write("C:\\GesTech Profili\\" + nomeFile);
			    percorso = "C:\\GesTech Profili\\" + nomeFile;
			}
		    
			main.salva(nome_cognome, recapito, email, profilo_linkedin, citta_allocazione, ruolo, competenza_principale, data_colloquio, anno_colloquio, esito_colloquio,
						fonte_reperimento, costo_giornaliero, possibilita_lavorativa, skill, tech1, tech2, tech3, tech4, tech_campo_libero, lingua1, lingua2, lingua3,
						competenze_totali, certificazioni, seniority, percorso);
			
			String utente = (String) session.getAttribute("Utente");
			if (!impressioni.equals(""))
					main.salvaCommento(impressioni, utente, email);
			disp = request.getRequestDispatcher("ricerca.jsp");
			disp.forward(request, response);
		}
		if (servlet.equals("ricerca"))
		{
			List profili = main.ricerca();
			response.getWriter().println(profili);
		}
		if (servlet.equals("aggiorna_cv"))
		{
			String id = request.getParameter("id");
			String nome_cognome = request.getParameter("nome_cognome");
			String recapito = request.getParameter("recapito");
			String email = request.getParameter("email");
			String profilo_linkedin = request.getParameter("profilo_linkedin");
			String citta_allocazione = request.getParameter("citta_di_allocazione");
			String ruolo = request.getParameter("ruolo");
			String competenza_principale = request.getParameter("competenza_principale");
			String data_colloquio = request.getParameter("data_colloquio");
			String anno_colloquio = request.getParameter("anno_colloquio");
			String esito_colloquio = request.getParameter("esito_colloquio");
			String fonte_reperimento = request.getParameter("fonte_reperimento");
			String costo_giornaliero = request.getParameter("costo_giornaliero");
			String possibilita_lavorativa = request.getParameter("possibilita_lavorativa");
			String skill = request.getParameter("skill");
			String tech1 = request.getParameter("tech_1");
			String tech2 = request.getParameter("tech_2");
			String tech3 = request.getParameter("tech_3");
			String tech4 = request.getParameter("tech_4");
			String tech_campo_libero = request.getParameter("tech_campo_libero");
			String lingua1 = request.getParameter("lingua_1");
			String lingua2 = request.getParameter("lingua_2");
			String lingua3 = request.getParameter("lingua_3");
			String competenze_totali = request.getParameter("competenze_totali");
			String certificazioni = request.getParameter("certificazioni");
			String seniority = request.getParameter("seniority");
			String commento = request.getParameter("commento");
			Part file = request.getPart("nomeFile");
			String nomeFile = file.getSubmittedFileName();
			String percorso = "";
			
			if(!nomeFile.equals(""))
			{
				file.write("C:\\GesTech Profili\\" + nomeFile);
			    percorso = "C:\\GesTech Profili\\" + nomeFile;
			}
			main.aggiorna_cv(id, nome_cognome, recapito, email, profilo_linkedin, citta_allocazione, ruolo, competenza_principale, data_colloquio, anno_colloquio, esito_colloquio,
						fonte_reperimento, costo_giornaliero, possibilita_lavorativa, skill, tech1, tech2, tech3, tech4, tech_campo_libero, lingua1, lingua2, lingua3,
						competenze_totali, certificazioni, seniority, percorso);
			
			String utente = (String) session.getAttribute("Utente");
			if (!"".equals(commento))
			{
				main.salvaCommento(commento, utente, email);
			}
			disp = request.getRequestDispatcher("ricerca.jsp");
			disp.forward(request, response);
		}
		if (servlet.equals("get_skill"))
		{
			List skill = main.get_skill();
			response.getWriter().println(skill);
		}
		if (servlet.equals("get_lingua"))
		{
			List lingue = main.get_lingue();
			response.getWriter().println(lingue);
		}
		if (servlet.equals("get_seniority"))
		{
			List seniority = main.get_seniority();
			response.getWriter().println(seniority);
		}
		if (servlet.equals("get_tech"))
		{
			List tech = main.get_tech();
			response.getWriter().println(tech);
		}
		if (servlet.equals("get_esito_colloquio"))
		{
			List esito_colloquio = main.get_esito_colloquio();
			System.out.println(esito_colloquio);
			response.getWriter().println(esito_colloquio);
			
		}
		if (servlet.equals("get_ruolo"))
		{
			List ruolo = main.get_ruolo();
			response.getWriter().println(ruolo);
		}
	}
	
}