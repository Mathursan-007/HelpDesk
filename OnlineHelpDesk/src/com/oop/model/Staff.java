package com.oop.model;


public class Staff extends User{
	
	protected String StaffID;
	protected String Type;
	
	public String getStaffID() {
		return StaffID;
	}
	public void setStaffID(String staffID) {
		StaffID = staffID;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}

}