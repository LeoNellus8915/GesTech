package model;

public class Tech
{
	private int id;
	private String tech;
	
	public Tech() {}
	
	public Tech(int id, String tech)
	{
		this.id = id;
		this.tech = tech;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	
	public void setTech(String tech)
	{
		this.tech = tech;
	}
	public String getTech()
	{
		return tech;
	}
}

