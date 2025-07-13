package com.onlineexam.model;

public class StudentAnswers {
    private int answerId;
    private int questionId;
    private int studentId;
    private int examId;
    private String answer;
	public StudentAnswers( int questionId, int studentId, int examId, String answer) {
		super();
		this.questionId = questionId;
		this.studentId = studentId;
		this.examId = examId;
		this.answer = answer;
	}
	public int getAnswerId() {
		return answerId;
	}
	public void setAnswerId(int answerId) {
		this.answerId = answerId;
	}
	public int getQuestionId() {
		return questionId;
	}
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public StudentAnswers() {
		// TODO Auto-generated constructor stub
	}

}
