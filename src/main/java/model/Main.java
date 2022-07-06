package model;

import java.nio.file.spi.FileSystemProvider;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class Main
{
	public boolean Login(String email, String password)
	{
		Utente user = new Utente();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
        Query q = controllo.createQuery("from Utente");
        List users = q.list();
        for (int c=0; c<users.size(); c++)
        {
        	user = (Utente) users.get(c);
        	if ((user.getEmail().equals(email)) && (user.getPassword().equals(password)))
        	{		
        		return true;
        	}	
        }
        controllo.close();
        return false;
	}
	public String getRuolo(String email)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_ruolo = controllo.createQuery("select r.ruolo from Ruolo r join Utente u on r.id = u.fk_ruolo where email = '" + email + "'");
		List ruolo = q_ruolo.list();
		controllo.close();
		return (String)ruolo.get(0);
		
	}
	public int Register(String nome_cognome, String email, String ruolo, String password)
	{
		Utente user = new Utente();
		List controllo_email = new ArrayList();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_utente = controllo.createQuery("select max(id) from Utente");
		List list_utente = q_utente.list();
        if ((Integer)list_utente.get(0) != null)
            user.setId((Integer)list_utente.get(0) + 1);
        Query q_ruolo = controllo.createQuery("select id from Ruolo where ruolo = '" + ruolo + "'");
		List list_ruolo = q_ruolo.list();
            user.setFk_ruolo((Integer)list_ruolo.get(0));
        Query q_email = controllo.createQuery("from Utente where email = '" + email + "'");
		List list_email = q_email.list();
		System.out.println(list_email);
        if (list_email.size() != 0)
            return 0;
        else
        {
        	user.setEmail(email);
	        user.setPassword(password);
	        user.setNome_cognome(nome_cognome);
	        controllo.save(user);
	        controllo.getTransaction().commit();
	        controllo.close();
	        return 1;
        }
	}
	public void bustepaga_data (String data, String mese)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("update Bustepaga set data = '" + data + "' where mese = '"+ mese + "' and data is null");
		q.executeUpdate();
		controllo.close();
	}
	public ArrayList getData_Mesi()
	{
		Bustepaga busta;
		ArrayList<String> data = new ArrayList<String>();
		data.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("from Bustepaga");
		List buste = q.list();
		for (int c=0; c<buste.size(); c++)
        {
        	busta = (Bustepaga) buste.get(c);
        	data.add(busta.getData());
        }
		controllo.close();
		data.add(" ");
		return data;
	}
	public void certificazione_unica_data (String data, String anno)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("update Certificazione_Unica set data = '" + data + "' where anno = '"+ anno + "' and data is null");
		q.executeUpdate();
		controllo.close();
	}
	public ArrayList getData_Anni()
	{
		Certificazione_Unica certificazione;
		ArrayList<String> data = new ArrayList<String>();
		data.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("from Certificazione_Unica");
		List cert = q.list();
		for (int c=0; c<cert.size(); c++)
        {
        	certificazione = (Certificazione_Unica) cert.get(c);
        	data.add(certificazione.getData());
        }
		controllo.close();
		data.add(" ");
		return data;
	}
	public void salva (String nome_cognome, String recapito, String email, String profilo_linkedin, String citta_allocazione, String ruolo, String competenza_principale, String data_colloquio,
						String anno_colloquio, String esito_colloquio, String fonte_reperimento, String costo_giornaliero,
						String possibilita_lavorativa, String skill, String tech1, String tech2, String tech3, String tech4, String tech_campo_libero, String lingua1,
						String lingua2, String lingua3, String competenze_totali, String certificazioni, String seniority, String percorso_cv)	
	{
		Profilo profilo = new Profilo();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select max(id) from Profilo");
		List list = q.list();
        if ((Integer)list.get(0) != null)
        	profilo.setId((Integer)list.get(0) + 1);
        else
        	profilo.setId(0);
        profilo.setNome_cognome(nome_cognome);
        profilo.setRecapito(recapito);
        profilo.setEmail(email);
        profilo.setProfilo_linkedin(profilo_linkedin);
        profilo.setCitta_allocazione(citta_allocazione);
        profilo.setRuolo(ruolo);
        profilo.setCompetenza_principale(competenza_principale);
        profilo.setData_colloquio(data_colloquio);
        profilo.setAnno_colloquio(anno_colloquio);
        profilo.setEsito_colloquio(esito_colloquio);
        profilo.setFonte_reperimento(fonte_reperimento);
        profilo.setCosto_giornaliero(costo_giornaliero);
        profilo.setPossibilita_lavorativa(possibilita_lavorativa);
        profilo.setSkill(skill);
        profilo.setTech1(tech1);
        profilo.setTech2(tech2);
        profilo.setTech3(tech3);
        profilo.setTech4(tech4);
        profilo.setTech_campo_libero(tech_campo_libero);
        profilo.setLingua1(lingua1);
        profilo.setLingua2(lingua2);
        profilo.setLingua3(lingua3);
        profilo.setCompetenze_totali(competenze_totali);
        profilo.setCertificazioni(certificazioni);
        profilo.setSeniority(seniority);
        profilo.setPercorso_cv(percorso_cv);
        controllo.save(profilo);
        controllo.getTransaction().commit();
        controllo.close();
	}
	
	public void salvaCommento(String commento, String utente, String profilo)
	{
		Commento impressione = new Commento();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query get_utente = controllo.createQuery("select id from Utente where nome_cognome = '" + utente + "'");
		Query get_profilo = controllo.createQuery("select id from Profilo where email = '" + profilo + "'");
		List list_utente = get_utente.list();
		List list_profilo = get_profilo.list();
		impressione.setId_utente((Integer)list_utente.get(0));
		impressione.setId_profilo((Integer)list_profilo.get(0));
		impressione.setCommento(commento);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd-MM-yyyy");  
		LocalDateTime now = LocalDateTime.now();  
		String data = dtf.format(now);
		impressione.setData(data);
		controllo.save(impressione);
		controllo.getTransaction().commit();
		controllo.close();
	}
	
	public List ricerca()
	{
		Profilo profilo = new Profilo();
		List profili = new ArrayList();
		profili.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
        Query q = controllo.createQuery("from Profilo order by id desc");
        List lista = q.list();
        for (int c=0; c<lista.size(); c++)
        {
        	profilo = (Profilo)lista.get(c);
        	profili.add(profilo.getId() + "-" + profilo.getNome_cognome()
        	+ "-" + profilo.getRecapito() + "-" + profilo.getEsito_colloquio() + "-" 
        	+ profilo.getRuolo());
        }
        profili.add(" ");
        controllo.close();
        return profili;
	}
	
	
	public List ricercaCommenti(String id)
	{
		List commenti = new ArrayList();
		Stampa_Commenti commento = new Stampa_Commenti();
		commenti.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_controllo = controllo.createQuery("from Commento where fk_profilo = " + id);
		List lista = q_controllo.list();
		if (lista != null)
		{
			//Query q = controllo.createQuery("Select u.nome_cognome, c.data, c.commento from Commento c join Utente u on c.id_utente = u.id where fk_profilo =" + id);
			Query user = controllo.createQuery("Select u.nome_cognome from Commento c join Utente u on c.id_utente = u.id where fk_profilo =" + id + "order by u.id desc");
	        Query data = controllo.createQuery("Select data from Commento where fk_profilo =" + id + "order by id desc");
	        Query com = controllo.createQuery("Select commento from Commento where fk_profilo =" + id + "order by id desc");
	        List lista_user = user.list();
	        List lista_data = data.list();
	        List lista_commenti = com.list();
	        if(!lista_commenti.equals(null)) {
	        	for (int i = 0; i < lista_commenti.size(); i++)
	        	{
	        		commenti.add(lista_user.get(i).toString());
	        		commenti.add(lista_data.get(i).toString());
	        		commenti.add(lista_commenti.get(i).toString());
	        	}
	        }
	        commenti.add(" ");
	        controllo.close();
	        return commenti;
		}
		return null;
	}
	
	public List ricercaProfilo(String id)
	{
		List profili = new ArrayList();
		Profilo profilo = new Profilo();
		profili.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
        Query q = controllo.createQuery("from Profilo where id = " + id);
        List lista = q.list();
        profilo = (Profilo) lista.get(0);
        profili.add((Integer)profilo.getId()!=null?profilo.getId():"");
        profili.add(profilo.getNome_cognome()!=null?profilo.getNome_cognome():"");
        profili.add(profilo.getRecapito()!=null?profilo.getRecapito():"");
        profili.add(profilo.getEmail()!=null?profilo.getEmail():"");
        profili.add(profilo.getProfilo_linkedin()!=null?profilo.getProfilo_linkedin():"");
        profili.add(profilo.getCitta_allocazione()!=null?profilo.getCitta_allocazione():"");
        profili.add(profilo.getRuolo()!=null?profilo.getRuolo():"");
        profili.add(profilo.getCompetenza_principale()!=null?profilo.getCompetenza_principale():"");
        profili.add(profilo.getData_colloquio()!=null?profilo.getData_colloquio():"");
        profili.add(profilo.getAnno_colloquio()!=null?profilo.getAnno_colloquio():"");
        profili.add(profilo.getEsito_colloquio()!=null?profilo.getEsito_colloquio():"");
        profili.add(profilo.getFonte_reperimento()!=null?profilo.getFonte_reperimento():"");
        profili.add(profilo.getCosto_giornaliero()!=null?profilo.getCosto_giornaliero():"");
        profili.add(profilo.getPossibilita_lavorativa()!=null?profilo.getPossibilita_lavorativa():"");
        profili.add(profilo.getSkill()!=null?profilo.getSkill():"");
        profili.add(profilo.getTech1()!=null?profilo.getTech1():"");
        profili.add(profilo.getTech2()!=null?profilo.getTech2():"");
        profili.add(profilo.getTech3()!=null?profilo.getTech3():"");
        profili.add(profilo.getTech4()!=null?profilo.getTech4():"");
        profili.add(profilo.getTech_campo_libero()!=null?profilo.getTech_campo_libero():"");
        profili.add(profilo.getLingua1()!=null?profilo.getLingua1():"");
        profili.add(profilo.getLingua2()!=null?profilo.getLingua2():"");
        profili.add(profilo.getLingua3()!=null?profilo.getLingua3():"");
        profili.add(profilo.getCompetenze_totali()!=null?profilo.getCompetenze_totali():"");
        profili.add(profilo.getCertificazioni()!=null?profilo.getCertificazioni():"");
        profili.add(profilo.getSeniority()!=null?profilo.getSeniority():"");
        profili.add(" ");
        controllo.close();
        return profili;
	}
	public List filtra (String filtro)
	{
		List profili = new ArrayList();
		Profilo profilo = new Profilo();
		profili.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_id = controllo.createQuery("select id from Profilo where id = '" + filtro + "' or nome = '" + filtro + "' or cognome = '" + filtro + "'");
        Query q_nome = controllo.createQuery("select nome from Profilo where id = '" + filtro + "' or nome = '" + filtro + "' or cognome = '" + filtro + "'");
        Query q_cognome = controllo.createQuery("select cognome from Profilo where id = '" + filtro + "' or nome = '" + filtro + "' or cognome = '" + filtro + "'");
        List lista_id = q_id.list();
        List lista_nomi = q_nome.list();
        List lista_cognomi = q_cognome.list();
        profili.add((Integer)lista_id.get(0) + " " + (String)lista_nomi.get(0) + " " + (String)lista_cognomi.get(0));
        profili.add(" ");
        controllo.close();
        return profili;
	}
	
	public String scaricaCv(String nome_cognome) {
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select percorso_cv from Profilo where nome_cognome = '" + nome_cognome + "'");
		List percorso = q.list();
		System.out.println((String)percorso.get(0));
		controllo.close();
		return (String)percorso.get(0);
	}
	
	public void aggiorna_cv (String id, String nome_cognome, String recapito, String email, String profilo_linkedin, String citta_allocazione, String ruolo, String competenza_principale, String data_colloquio,
			String anno_colloquio, String esito_colloquio, String fonte_reperimento, String costo_giornaliero,
			String possibilita_lavorativa, String skill, String tech1, String tech2, String tech3, String tech4, String tech_campo_libero, String lingua1,
			String lingua2, String lingua3, String competenze_totali, String certificazioni, String seniority, String percorso_cv)	
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("update Profilo set nome_cognome = '" + nome_cognome + "', recapito = '" + recapito 
				+ "', email = '" + email + "', profilo_linkedin = '" + profilo_linkedin + "', citta_allocazione = '" + citta_allocazione + "', ruolo = '" + ruolo + "', competenza_principale = '" + competenza_principale 
				+ "', data_colloquio = '" + data_colloquio + "', anno_colloquio = '" + anno_colloquio + "', esito_colloquio = '" + esito_colloquio
				+ "', fonte_reperimento = '" + fonte_reperimento + "', costo_giornaliero = '" + costo_giornaliero 
				+ "', possibilita_lavorativa = '" + possibilita_lavorativa + "', skill = '" + skill + "', tech1 = '" + tech1 + "', tech2 = '" + tech2
				+ "', tech3 = '" + tech3 + "', tech4 = '" + tech4 + "', tech_campo_libero = '" + tech_campo_libero + "', lingua1 = '" + lingua1 + "', lingua2 = '" + lingua2
				+ "', lingua3 = '" + lingua3 + "', competenze_totali = '" + competenze_totali + "', certificazioni = '" + certificazioni
				+ "', seniority = '" + seniority + "',  percorso_cv = '" + percorso_cv + "' where id = '" + id + "'");
		q.executeUpdate();
		controllo.close();
	}
	public List get_lingue()
	{
		List lingue = new ArrayList();
		lingue.add(" ");
		lingue.add("");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select lingua from Lingua");
		List list = q.list();
		for (int c=0; c<list.size(); c++)
			lingue.add((String)list.get(c));
		lingue.add(" ");
		controllo.close();
		return lingue;
	}
	public List get_seniority()
	{
		List senior = new ArrayList();
		senior.add(" ");
		senior.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select seniority from Seniority");
		List list = q.list();
		for (int c=0; c<list.size(); c++)
			senior.add((String)list.get(c));
		senior.add(" ");
		controllo.close();
		return senior;
	}
	public List get_skill()
	{
		List skill = new ArrayList();
		skill.add(" ");
		skill.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select skill from Skill");
		List list = q.list();
		for (int c=0; c<list.size(); c++)
			skill.add((String)list.get(c));
		skill.add(" ");
		controllo.close();
		return skill;
	}
	public List get_tech()
	{
		List tech = new ArrayList();
		tech.add(" ");
		tech.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select tech from Tech");
		List list = q.list();
		for (int c=0; c<list.size(); c++)
			tech.add((String)list.get(c));
		tech.add(" ");
		controllo.close();
		return tech;
	}
	public List get_esito_colloquio()
	{
		List esito_colloquio = new ArrayList();
		esito_colloquio.add(" ");
		esito_colloquio.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select esito_colloquio from Esito_Colloquio");
		List list = q.list();
		for (int c=0; c<list.size(); c++)
			esito_colloquio.add((String)list.get(c));
		esito_colloquio.add(" ");
		controllo.close();
		return esito_colloquio;
	}
	public List get_ruolo()
	{
		List ruolo = new ArrayList();
		ruolo.add(" ");
		ruolo.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select ruolo from Ruolo");
		List list = q.list();
		for (int c=0; c<list.size(); c++)
			ruolo.add((String)list.get(c));
		ruolo.add(" ");
		controllo.close();
		return ruolo;
	}
	public String nomeUtente(String email)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select nome_cognome from Utente where email = '" + email + "'");
		List list = q.list();
		controllo.close();
		return (String)list.get(0);
	}
	public int cambiaPassword(String password, String nome_cognome)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_controllo = controllo.createQuery("select password from Utente where nome_cognome = '" + nome_cognome + "'");
		List lista = q_controllo.list();
		if (password.equals((String)lista.get(0)))
			return 0;
		Query q_aggiorna = controllo.createQuery("update Utente set password = '" + password + "' where nome_cognome = '" + nome_cognome + "'");
		q_aggiorna.executeUpdate();
		controllo.close();
		return 1;
	}
	public int eliminaProfilo(String id)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_controllo = controllo.createQuery("from Commento where fk_profilo = " + id);
		List lista = q_controllo.list();
		if (lista != null)
		{
			Query q_commenti = controllo.createQuery("delete from Commento where fk_profilo = " + id);
			q_commenti.executeUpdate();
		}
		Query q_profilo = controllo.createQuery("delete from Profilo where id = " + id);
		q_profilo.executeUpdate();
		controllo.close();
		return 1;
	}
	public void registraAvviso(String testo, String data, String nome_utente, String destinatario, String titolo)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Avvisi avviso = new Avvisi();
		avviso.setAvviso(testo);
		avviso.setData(data);
		avviso.setNome_utente(nome_utente);
		avviso.setDestinatari(destinatario);
		avviso.setTitolo(titolo);
		controllo.save(avviso);
	    controllo.getTransaction().commit();
	    controllo.close();
	}
	public List stampaAvvisi()
	{
		List avvisi = new ArrayList();
		Avvisi avviso = new Avvisi();
		avvisi.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_avvisi = controllo.createQuery("from Avvisi");
		List list_Avvisi = q_avvisi.list();
		for(int i=0; i<list_Avvisi.size(); i++) {
			avviso = (Avvisi)list_Avvisi.get(i);
			avvisi.add(avviso.getData() + " " + avviso.getAvviso());
		}
		avvisi.add(" ");
		controllo.close();
		return avvisi;
		
	}
}