package model;

public class Seniority
{
	private int id;
	private String seniority;
	
	public Seniority () {}
	
	public Seniority(int id, String seniority)
	{
		this.id = id;
		this.seniority = seniority;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	
	public void setSeniority(String seniority)
	{
		this.seniority = seniority;
	}
	public String getSeniority()
	{
		return seniority;
	}
}