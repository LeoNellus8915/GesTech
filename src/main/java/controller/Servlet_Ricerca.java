package controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
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
		String[] info = servlet.split(",");
		System.out.println("asdf  " + info[0] + "  "  + info[1]);
		if (info[0].equals("login"))
		{
			if (main.Login(info[1], info[2]) == true)
			{
				session.setAttribute("Login", 1);
				session.setAttribute("Ruolo", main.getRuolo(info[1]));
				session.setAttribute("Utente", main.nomeUtente(info[1]));
				response.getWriter().println(1);
			}
		}
		if (info[0].equals("stampa_profilo"))
		{
			List profili = main.ricercaProfilo(info[1]);
			List commenti = main.ricercaCommenti(info[1]);
			System.out.println("Profili: " + profili);
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
	}
}