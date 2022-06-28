package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Main;

public class Servlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher disp = null;
		HttpSession session = request.getSession(true);
		Main main = new Main();
		String servlet = request.getParameter("Servlet"); 
		
		if (servlet.equals("register"))
		{
			String nome_cognome = request.getParameter("nome_cognome");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String password2 = request.getParameter("password2");
			if ((password.equals(password2)) && (main.Register2(email) == false))
			{
				main.Register(email, password, nome_cognome);
				disp = request.getRequestDispatcher("tabella.jsp");
			}
			else
				disp = request.getRequestDispatcher("exist.jsp");
			disp.forward(request, response);
		}
		
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
			main.salva(nome_cognome, recapito, email, citta_allocazione, ruolo, competenza_principale, data_colloquio, anno_colloquio, esito_colloquio,
						fonte_reperimento, costo_giornaliero, possibilita_lavorativa, skill, tech1, tech2, tech3, tech4, tech_campo_libero, lingua1, lingua2, lingua3,
						competenze_totali, certificazioni, seniority);
			System.out.println("Session Utente: " + session.getAttribute("Utente"));
			String utente = (String) session.getAttribute("Utente");
			System.out.println("Utente: " + utente);
			main.salvaCommento(impressioni, utente, email);
			disp = request.getRequestDispatcher("profilo&cv.jsp");
			disp.forward(request, response);
		}
		if (servlet.equals("ricerca"))
		{
			List profili = main.ricerca();
			response.getWriter().println(profili);
		}
		if (servlet.equals("aggiorna_cv"))
		{
			String nome_cognome = request.getParameter("nome_cognome");
			String recapito = request.getParameter("recapito");
			String email = request.getParameter("email");
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
			main.aggiorna_cv(nome_cognome, recapito, email, citta_allocazione, ruolo, competenza_principale, data_colloquio, anno_colloquio, esito_colloquio,
						fonte_reperimento, costo_giornaliero, possibilita_lavorativa, skill, tech1, tech2, tech3, tech4, tech_campo_libero, lingua1, lingua2, lingua3,
						competenze_totali, certificazioni, seniority);
			
			String utente = (String) session.getAttribute("Utente");
			if (!"".equals(commento)) {
				main.salvaCommento(commento, utente, email);
			}
			disp = request.getRequestDispatcher("stampa_profilo.jsp");
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
			response.getWriter().println(esito_colloquio);
		}
		if (servlet.equals("get_ruolo"))
		{
			List ruolo = main.get_ruolo();
			response.getWriter().println(ruolo);
		}
	}
}