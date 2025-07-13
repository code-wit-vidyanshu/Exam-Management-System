package com.onlineexam.model;

public class Exams {
	
	private int Examid;
	private String Examname;
	private String Description;
	private double Examduration;
	private int PassingCriteria;
	private static int count;
	
	static {
		count=0;
	}
	

	public Exams() {
		super();
	}

	public Exams(String examname, String description, double examduration, int passingCriteria) {
		super();
		Examid = ++count;
		Examname = examname;
		Description = description;
		Examduration = examduration;
		PassingCriteria = passingCriteria;
	}

	public int getExamid() {
		return Examid;
	}


	public void setExamid(int examid) {
		Examid = examid;
	}


	public String getExamname() {
		return Examname;
	}


	public void setExamname(String examname) {
		Examname = examname;
	}


	public String getDescription() {
		return Description;
	}


	public void setDescription(String description) {
		Description = description;
	}


	public double getExamduration() {
		return Examduration;
	}


	public void setExamduration(double examduration) {
		Examduration = examduration;
	}


	public int getPassingCriteria() {
		return PassingCriteria;
	}


	public void setPassingCriteria(int passingCriteria) {
		PassingCriteria = passingCriteria;
	}

	@Override
	public String toString() {
		return "Exams [Examid=" + Examid + ", Examname=" + Examname + ", Description=" + Description + ", Examduration="
				+ Examduration + ", PassingCriteria=" + PassingCriteria + "]";
	}

	

}
