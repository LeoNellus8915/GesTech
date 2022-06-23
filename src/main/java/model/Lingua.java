package model;

public class Lingua
{
	private int id;
	private String lingua;
	
	public Lingua() {}
	
	public Lingua(int id, String lingua)
	{
		this.id = id;
		this.lingua = lingua;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	
	public void setLingua(String lingua)
	{
		this.lingua = lingua;
	}
	public String getLingua()
	{
		return lingua;
	}
}
