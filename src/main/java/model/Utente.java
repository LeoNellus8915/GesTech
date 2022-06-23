package model;

public class Utente
{
	private int id;
	private String nome_cognome;
	private String email;
	private String password;
	
	public Utente() {}
	public Utente(int id, String nome_cognome, String email, String password)
	{
		this.id = id;
		this.nome_cognome = nome_cognome;
		this.email = email;
		this.password = password;
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
}