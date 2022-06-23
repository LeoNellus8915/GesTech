package model;

public class Skill
{
	private int id;
	private String skill;
	
	public Skill () {}
	
	public Skill(int id, String skill)
	{
		this.id = id;
		this.skill = skill;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	
	public void setSkill(String skill)
	{
		this.skill = skill;
	}
	public String getSkill ()
	{
		return skill;
	}
}
