package com.onlineexam.model;

public class StudentResult {
    private int studentId;
    private String StudentName;
    private String examName;
    public StudentResult(String studentName, String examName, int totalAttempts, int totalMarks, String status) {
		super();
		StudentName = studentName;
		this.examName = examName;
		this.totalAttempts = totalAttempts;
		this.totalMarks = totalMarks;
		Status = status;
	}
	public String getStudentName() {
		return StudentName;
	}
	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	private int examId;
    private int totalAttempts;
    private int totalMarks;
    private String Status;
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
	public int getTotalAttempts() {
		return totalAttempts;
	}
	public void setTotalAttempts(int totalAttempts) {
		this.totalAttempts = totalAttempts;
	}
	public int getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}
	public StudentResult(int studentId, int examId, int totalAttempts, int totalMarks, String status) {
		super();
		this.studentId = studentId;
		this.examId = examId;
		this.totalAttempts = totalAttempts;
		this.totalMarks = totalMarks;
		Status = status;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public StudentResult() {
		// TODO Auto-generated constructor stub
	}

}
