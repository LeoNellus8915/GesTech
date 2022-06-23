package model;

public class Esito_Colloquio
{
	private int id;
	private String esito_colloquio;
	
	public Esito_Colloquio() {}
	
	public Esito_Colloquio(int id, String esito_colloquio)
	{
		this.id = id;
		this.esito_colloquio = esito_colloquio;
	}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public String getEsito_colloquio() 
	{
		return esito_colloquio;
	}

	public void setEsito_colloquio(String esito_colloquio) 
	{
		this.esito_colloquio = esito_colloquio;
	}
	
}
