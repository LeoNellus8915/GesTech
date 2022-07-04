package model;

public class Avvisi
{
	private int id;
	private String avviso;
	private String data_ora;
	private String nome_utente;
	private String destinatari;
	
	public Avvisi() {}
	
	public Avvisi(int id, String avviso, String data_ora, String nome_utente, String destiantari)
	{
		this.id=id;
		this.avviso=avviso;
		this.data_ora=data_ora;
		this.nome_utente=nome_utente;
		this.destinatari=destiantari;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getAvviso()
	{
		return avviso;
	}

	public void setAvviso(String avviso)
	{
		this.avviso = avviso;
	}

	public String getData_ora()
	{
		return data_ora;
	}

	public void setData_ora(String data_ora)
	{
		this.data_ora = data_ora;
	}

	public String getNome_utente()
	{
		return nome_utente;
	}

	public void setNome_utente(String nome_utente)
	{
		this.nome_utente = nome_utente;
	}

	public String getDestinatari()
	{
		return destinatari;
	}

	public void setDestinatari(String destinatari)
	{
		this.destinatari = destinatari;
	}
	
	
}
