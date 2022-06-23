package model;

public class Profilo
{
	private int id;
	private String nome;
	private String cognome;
	private String recapito;
	private String email;
	private String citta_allocazione;
	private String ruolo;
	private String competenza_principale;
	private String data_colloquio;
	private String anno_colloquio;
	private String esito_colloquio;
	private String fonte_reperimento;
	private String costo_giornaliero;
	private String possibilita_lavorativa;
	private String skill;
	private String tech1;
	private String tech2;
	private String tech3;
	private String tech4;
	private String tech_campo_libero;
	private String lingua1;
	private String lingua2;
	private String lingua3;
	private String competenze_totali;
	private String certificazioni;
	private String seniority;
	
	public Profilo () {}
	
	public Profilo (int id, String nome, String cognome, String recapito, String email, String citta_allocazone, String ruolo, String competenza_principale, String data_colloquio, 
					String anno_colloquio, String esito_colloquio, String fonte_reperimento, String costo_giornaliero,
					String possiblita_lavorativa, String skill2, String tech1, String tech2, String tech3, String tech4, String tech_campo_libero, String lingua1,
					String lingua2, String lingua3, String competenze_totali, String certificazioni, String seniority)
	{
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.recapito = recapito;
		this.email = email;
		this.citta_allocazione = citta_allocazione;
		this.ruolo = ruolo;
		this.competenza_principale = competenza_principale;
		this.data_colloquio = data_colloquio;
		this.anno_colloquio = anno_colloquio;
		this.esito_colloquio = esito_colloquio;
		this.fonte_reperimento = fonte_reperimento;
		this.costo_giornaliero = costo_giornaliero;
		this.possibilita_lavorativa = possibilita_lavorativa;
		this.skill = skill;
		this.tech1 = tech1;
		this.tech2 = tech2;
		this.tech3 = tech3;
		this.tech4 = tech4;
		this.tech_campo_libero = tech_campo_libero;
		this.lingua1 = lingua1;
		this.lingua2 = lingua2;
		this.lingua3 = lingua3;
		this.competenze_totali = competenze_totali;
		this.certificazioni = certificazioni;
		this.seniority = seniority;
	}
	
	public int getId()
	{
		return id;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	
	public String getNome()
	{
		return nome;
	}

	public void setNome(String nome)
	{
		this.nome = nome;
	}

	public String getCognome()
	{
		return cognome;
	}

	public void setCognome(String cognome)
	{
		this.cognome = cognome;
	}

	public String getRecapito()
	{
		return recapito;
	}

	public void setRecapito(String recapito)
	{
		this.recapito = recapito;
	}
	
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getEmail()
	{
		return email;
	}

	public String getCitta_allocazione()
	{
		return citta_allocazione;
	}

	public void setCitta_allocazione(String citta_allocazione)
	{
		this.citta_allocazione = citta_allocazione;
	}

	public String getRuolo()
	{
		return ruolo;
	}

	public void setRuolo(String ruolo)
	{
		this.ruolo = ruolo;
	}

	public String getCompetenza_principale()
	{
		return competenza_principale;
	}

	public void setCompetenza_principale(String competenza_principale)
	{
		this.competenza_principale = competenza_principale;
	}

	public String getData_colloquio()
	{
		return data_colloquio;
	}

	public void setData_colloquio(String data_colloquio)
	{
		this.data_colloquio = data_colloquio;
	}

	public String getAnno_colloquio()
	{
		return anno_colloquio;
	}

	public void setAnno_colloquio(String anno_colloquio)
	{
		this.anno_colloquio = anno_colloquio;
	}

	public String getEsito_colloquio()
	{
		return esito_colloquio;
	}

	public void setEsito_colloquio(String esito_colloquio)
	{
		this.esito_colloquio = esito_colloquio;
	}

	public String getFonte_reperimento()
	{
		return fonte_reperimento;
	}

	public void setFonte_reperimento(String fonte_reperimento)
	{
		this.fonte_reperimento = fonte_reperimento;
	}

	public String getCosto_giornaliero()
	{
		return costo_giornaliero;
	}

	public void setCosto_giornaliero(String costo_giornaliero)
	{
		this.costo_giornaliero = costo_giornaliero;
	}

	public String getPossibilita_lavorativa()
	{
		return possibilita_lavorativa;
	}

	public void setPossibilita_lavorativa(String possibilita_lavorativa)
	{
		this.possibilita_lavorativa = possibilita_lavorativa;
	}

	public String getSkill()
	{
		return skill;
	}

	public void setSkill(String skill)
	{
		this.skill = skill;
	}

	public String getTech1()
	{
		return tech1;
	}

	public void setTech1(String tech1)
	{
		this.tech1 = tech1;
	}

	public String getTech2()
	{
		return tech2;
	}

	public void setTech2(String tech2)
	{
		this.tech2 = tech2;
	}

	public String getTech3()
	{
		return tech3;
	}

	public void setTech3(String tech3)
	{
		this.tech3 = tech3;
	}

	public String getTech4()
	{
		return tech4;
	}

	public void setTech4(String tech4)
	{
		this.tech4 = tech4;
	}

	public String getTech_campo_libero()
	{
		return tech_campo_libero;
	}

	public void setTech_campo_libero(String tech_campo_libero)
	{
		this.tech_campo_libero = tech_campo_libero;
	}

	public String getLingua1()
	{
		return lingua1;
	}

	public void setLingua1(String lingua1)
	{
		this.lingua1 = lingua1;
	}

	public String getLingua2()
	{
		return lingua2;
	}

	public void setLingua2(String lingua2)
	{
		this.lingua2 = lingua2;
	}

	public String getLingua3()
	{
		return lingua3;
	}

	public void setLingua3(String lingua3)
	{
		this.lingua3 = lingua3;
	}

	public String getCompetenze_totali()
	{
		return competenze_totali;
	}

	public void setCompetenze_totali(String competenze_totali)
	{
		this.competenze_totali = competenze_totali;
	}

	public String getCertificazioni()
	{
		return certificazioni;
	}

	public void setCertificazioni(String certificazioni)
	{
		this.certificazioni = certificazioni;
	}

	public String getSeniority()
	{
		return seniority;
	}

	public void setSeniority(String seniority)
	{
		this.seniority = seniority;
	}
}
