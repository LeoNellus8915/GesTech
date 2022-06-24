package model;

public class Utente
{
	private int id;
	private String nome_cognome;
	private String email;
	private String password;
	private int fk_ruolo;
	
	public Utente() {}
	public Utente(int id, String nome_cognome, String email, String password, int fk_ruolo)
	{
		this.id = id;
		this.nome_cognome = nome_cognome;
		this.email = email;
		this.password = password;
		this.fk_ruolo = fk_ruolo;
	}
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getNome_cognome()
	{
		return nome_cognome;
	}
	public void setNome_cognome(String nome_cognome)
	{
		this.nome_cognome = nome_cognome;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public int getFk_ruolo()
	{
		return fk_ruolo;
	}
	public void setFk_ruolo(int fk_ruolo)
	{
		this.fk_ruolo = fk_ruolo;
	}
}