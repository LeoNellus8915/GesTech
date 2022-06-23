package model;

public class Certificazione_Unica
{
	private int id;
	private int anno;
	private String data;
	
	public Certificazione_Unica() {}
	
	public Certificazione_Unica(int id, int anno, String data)
	{
		this.id = id;
		this.anno = anno;
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
	
	public void setAnno(int anno)
	{
		this.anno = anno;
	}
	public int getAnno()
	{
		return anno;
	}
	
	public void setData(String data)
	{
		this.data = data;
	}
	public String getData()
	{
		return data;
	}
}
