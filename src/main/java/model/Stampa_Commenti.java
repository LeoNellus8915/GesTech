package model;

public class Stampa_Commenti {
	
	private String user;
	private String data;
	private String commento;
	
	
	
	public Stampa_Commenti() {}
	
	public Stampa_Commenti(String user, String data, String commento) {
		this.user=user;
		this.data=data;
		this.commento=commento;
	}
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getCommento() {
		return commento;
	}
	public void setCommento(String commento) {
		this.commento = commento;
	}
	
	
}
