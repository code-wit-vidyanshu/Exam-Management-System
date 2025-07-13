package com.onlineexam.model;

public class ExamTemplate {
    private int examTemplateId;
    private int organisationI;
    private int subjectId;
    private int questionId;
    private String description;
    private int duration;
    private int PassingCriteria;
    private String subjectname;
    private String organisationame;
    
    
	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}

	public String getOrganisationame() {
		return organisationame;
	}

	public void setOrganisationame(String organisationame) {
		this.organisationame = organisationame;
	}

	public ExamTemplate() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ExamTemplate(String subjectname, String organisationame, String string3) {
		this.subjectname=subjectname;
		this.organisationame=organisationame;
		this.description=string3;
	}
	
	public ExamTemplate( int organisationI, int subjectId, int questionId, String description,
			int duration,int passingCriteria) {
		super();
		this.organisationI = organisationI;
		this.subjectId = subjectId;
		this.questionId = questionId;
		this.description = description;
		this.duration=duration;
		PassingCriteria = passingCriteria;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getExamTemplateId() {
		return examTemplateId;
	}

	public void setExamTemplateId(int examTemplateId) {
		this.examTemplateId = examTemplateId;
	}

	public int getOrganisationI() {
		return organisationI;
	}

	public void setOrganisationI(int organisationI) {
		this.organisationI = organisationI;
	}

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public int getQuestionId() {
		return questionId;
	}

	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPassingCriteria() {
		return PassingCriteria;
	}

	public void setPassingCriteria(int passingCriteria) {
		PassingCriteria = passingCriteria;
	}
    
}
