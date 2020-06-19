package com.oop.service;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.oop.model.Handler;
import com.oop.model.Staff;
import com.oop.model.Student;
import com.oop.model.Ticket;

public interface IAdminService {
	
	
	/** Initialize logger */
	public static final Logger Log=Logger.getLogger(IAdminService.class.getName());
	
	
	
	/**add handler to HANDLER table   */
	
    public void addHandler(Handler handler);
    
    
    /**Retrieve all handlers from HANDLER table */
    
    public ArrayList<Handler> listHandlers();
    
    
    
    /**delete a handler from HANDLER table */
    
    public void deleteHandler(String hid);
    
    
    
    /**Retrieve all students from the STUDENTS table */
    
    public ArrayList<Student> ListStudents();
    
    
    
    /**Retrieve all students from STUDNETS table */
    
    public ArrayList<Staff> ListStaffs();
    
    
    
    /**Get a particular student from STUDENTS table  */
    
    public Student getStudent(String id);
    
    
    
    /**Update an existing student in STUDENTS table*/
    
    public void UpdateStudent(Student student);
    
    
    
    /**Get a particular staff from STAFFS table*/
    
    public Staff getStaff(String id);
    
    
    
    /**Update an existing staff in STAFFS table*/
    
    public void UpdateStaff(Staff staff);
    
    
    
    /**Retrieve all tickets from Tickets table */
    
    public ArrayList<Ticket> ListTickets();

    
    
    /**Get the number of tickets in each status */
    
    public ArrayList<Integer> TicketStatus();
    
    
    
    /**Get a particular Ticket in Tickets Table */ 
    
    public Ticket getTicket(int tid);
    
    
    
    /**update an existing ticket in Tickets table */
    
    public void closeTicket(String id,int tid,String reply);
    
    
    /**check for the availability of Handler_ID in handler table*/
    
    public Boolean checkHandlerID(String hid);

}
