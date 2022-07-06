package controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Main;

public class Servlet_Ricerca extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		Main main = new Main();
		String servlet = request.getParameter("Servlet");
		HttpSession session = request.getSession(true);
		String[] info = servlet.split("/,");
		if (info[0].equals("cambia_password"))
		{
			String nome_cognome = (String)session.getAttribute("Utente");
			response.getWriter().println(main.cambiaPassword(info[1], nome_cognome));
		}
		if (info[0].equals("register"))
		{
			response.getWriter().println(main.Register(info[1], info[2], info[3], info[4]));
		}
		if (info[0].equals("login"))
		{
			if (main.Login(info[1], info[2]) == true)
			{
				String nome_utente = main.nomeUtente(info[1]);
				session.setAttribute("Login", 1);
				session.setAttribute("Ruolo", main.getRuolo(info[1]));
				session.setAttribute("Utente", nome_utente);
				response.getWriter().println(1 + "," + nome_utente);
			}
		}
		if (info[0].equals("stampa_profilo"))
		{
			List profili = main.ricercaProfilo(info[1]);
			List commenti = main.ricercaCommenti(info[1]);
			response.getWriter().println(profili);
			response.getWriter().println(commenti);
		}
		if (info[0].equals("ricerca"))
		{
			List profili = main.filtra(info[1]);
			response.getWriter().println(profili);
		}
		if (info[0].equals("lettura_anno"))
		{
			ArrayList date = main.getData_Anni();
			response.getWriter().println(date);
		}
		if (info[0].equals("scrittura_anno"))
		{
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
			LocalDateTime now = LocalDateTime.now();  
			String data = dtf.format(now);  
			main.certificazione_unica_data(data, info[1]);
		}
		if (info[0].equals("lettura_mese"))
		{
			ArrayList date = main.getData_Mesi();
			response.getWriter().println(date);
		}
		if (info[0].equals("scrittura_mese"))
		{
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
			LocalDateTime now = LocalDateTime.now();  
			String data = dtf.format(now);  
			main.bustepaga_data(data, info[1]);
		}
		if (info[0].equals("elimina_profilo"))
		{
			response.getWriter().println(main.eliminaProfilo(info[1]));
		}
		if (info[0].equals("stampa_avvisi")) 
		{
			List avvisi = main.stampaAvvisi();
			response.getWriter().println(avvisi);
		}
		if (info[0].equals("scaricaCv")) 
		{
			String cv = main.scaricaCv(info[1]);
			response.getWriter().println(cv);
		}
		if (info[0].equals("registra_avviso"))
		{
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");  
			LocalDateTime now = LocalDateTime.now();
			String data = dtf.format(now);
			String nome_utente = (String)session.getAttribute("Utente");
			response.getWriter().println(main.registraAvviso(info[1], info[2], info[3], data, nome_utente));
		}
		if (info[0].equals("elimina_avviso"))
		{
			main.eliminaAvviso(info[1]);
		}
	}
}