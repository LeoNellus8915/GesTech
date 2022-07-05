package model;

public class Avvisi
{
	private int id;
	private String avviso;
	private String data;
	private String nome_utente;
	private String destinatari;
	private String titolo;
	
	public Avvisi() {}
	
	public Avvisi(int id, String avviso, String data, String nome_utente, String destiantari, String titolo)
	{
		this.id=id;
		this.avviso=avviso;
		this.data=data;
		this.nome_utente=nome_utente;
		this.destinatari=destiantari;
		this.titolo=titolo;
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

	public String getData()
	{
		return data;
	}

	public void setData(String data)
	{
		this.data = data;
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

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	
	
}
