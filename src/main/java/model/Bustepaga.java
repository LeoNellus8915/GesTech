package model;

public class Bustepaga
{
	private int id;
	private String mese;
	private String data;
	
	Bustepaga(){}
	
	Bustepaga (int id, String mese, String data)
	{
		this.id = id;
		this.mese = mese;
		this.data = data;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	public void setMese (String mese)
	{
		this.mese = mese;
	}
	public String getmese()
	{
		return mese;
	}
	public void setData (String data)
	{
		this.data = data;
	}
	public String getData()
	{
		return data;
	}
}
