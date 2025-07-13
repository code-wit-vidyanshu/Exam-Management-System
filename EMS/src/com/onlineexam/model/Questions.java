package com.onlineexam.model;

public class Questions {

	private int Questionid;
	private int subjectId;
	private String QuestionText;
	private String QuestionType;
	private String Option1;
	private String option2;
	private String option3;
	private String option4;
	private int point;
	private String CorrectOption;
	
	public Questions(int subjectId, String questionText, String questionType, String option1, String option2,
			String option3, String option4, int point,String correctOption) {
		super();
		this.subjectId = subjectId;
		this.QuestionText = questionText;
		this.QuestionType = questionType;
		this.Option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.point=point;
		this.CorrectOption = correctOption;
	}

	public Questions(int questionid, int subjectId, String questionText, String questionType, String option1,
			String option2, String option3, String option4, int point, String correctOption) {
		super();
		Questionid = questionid;
		this.subjectId = subjectId;
		QuestionText = questionText;
		QuestionType = questionType;
		Option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.point = point;
		CorrectOption = correctOption;
	}

	public int getQuestionid() {
		return Questionid;
	}

	public void setQuestionid(int questionid) {
		Questionid = questionid;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getQuestionText() {
		return QuestionText;
	}

	public void setQuestionText(String questionText) {
		QuestionText = questionText;
	}

	public String getQuestionType() {
		return QuestionType;
	}

	public void setQuestionType(String questionType) {
		QuestionType = questionType;
	}

	public String getOption1() {
		return Option1;
	}

	public void setOption1(String option1) {
		Option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getCorrectOption() {
		return CorrectOption;
	}

	public void setCorrectOption(String correctOption) {
		CorrectOption = correctOption;
	}

	public Questions() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}