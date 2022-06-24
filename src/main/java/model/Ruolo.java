package model;

public class Ruolo
{	
	private int id;
	private String ruolo;
	
	public Ruolo() {}
	
	public Ruolo(int id, String ruolo)
	{
		this.id = id;
		this.ruolo = ruolo;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	
	public void setRuolo(String ruolo)
	{
		this.ruolo = ruolo;
	}
	public String getRuolo()
	{
		return ruolo;
	}
}
