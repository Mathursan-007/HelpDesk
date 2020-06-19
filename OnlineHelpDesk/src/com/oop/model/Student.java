package com.oop.model;


public class Student extends User {
	
	protected String StudentID;
	protected String Batch;
	
	public String getStudentID() {
		return StudentID;
	}
	public void setStudentID(String studentID) {
		StudentID = studentID;
	}
	public String getBatch() {
		return Batch;
	}
	public void setBatch(String batch) {
		Batch = batch;
	}
	

}
