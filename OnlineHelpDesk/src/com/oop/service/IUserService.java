package com.oop.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.oop.model.Staff;
import com.oop.model.Student;

import com.oop.model.Ticket;

public interface IUserService {

	/** Initialize logger */
	public static final Logger Log=Logger.getLogger(IUserService.class.getName());
	
	/** Add student to STUDENT table */
	public void addStudent(Student student);
	
	/** Add ticket to Tickets table */
	public void addTicket(Ticket ticket,int tid);
	
	/** Get a particular student details from STUDENT table */
	public Student getStudent(String id);
	
	/** Update student password of a particular student in STUDENT table */
	public void UpdateStudentPassword(String id,String pwd);
	
	/** Get all list of tickets in Tickets table */
	public ArrayList<Ticket> getSentTickets(String id);
	
	/** Delete a particular student in STUDENT table */
	public void deleteStudent(String id);
	
	/** Delete a particular ticket in Tickets table */
	public void deleteTicket(int id);
	
	/** Add staff to STAFF table */
	public void addStaff(Staff staff);
	
	/** Delete a particular staff in STUDENT table */
	public void deleteStaff(String id);
	
	/** Get a particular staff details from STAFF table */
	public Staff getStaff(String id);
	
	/** Update staff password of a particular staff in STAFFS table */
	public void UpdateStaffPassword(String id,String pwd);
	
	/** Checks the student id in STUDENT table */
	public Boolean checkStudentID(String id);
	
	/** Checks the staff id in STAFF table */
	public Boolean checkStaffID(String id);
	
	/** Update a particular ticket in Tickets table */
	public void updateTicketDescription(int tid,String description);
	
	/** Get a particular ticket from Tickets table */
	public Ticket getTicket(int tid);
	
	
	
	
	
	
	
	
}
