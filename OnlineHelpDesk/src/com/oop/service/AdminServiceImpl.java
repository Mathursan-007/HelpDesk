package com.oop.service;

import java.sql.CallableStatement;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.oop.model.Handler;
import com.oop.model.Staff;
import com.oop.model.Student;
import com.oop.model.Ticket;
import com.oop.util.DBConnection;






public class AdminServiceImpl implements IAdminService{

	
	private static Connection connection;
	private static PreparedStatement pt;
	private static Statement st; 
	private static CallableStatement ct;
	
	
	/** Initialize logger */
	
	public static final Logger Log=Logger.getLogger(AdminServiceImpl.class.getName());
	
    
	/** This method will add a Handler into the HANDLER table in the database */
	
	public void addHandler(Handler handler){
		
					
    	     try {       
    	            connection=DBConnection.initializedb();
					pt=connection.prepareStatement("insert into HANDLER (Handler_ID,Staff_ID,Full_Name,Email,Phone,Password) values(?,?,?,?,?,?)");
					pt.setString(1, handler.getHandlerID());
					pt.setString(2, handler.getStaffID());
					pt.setString(3, handler.getFullname());
					pt.setString(4,handler.getEmail());
					pt.setString(5, handler.getPhone());
					pt.setString(6, handler.getPassword());
					
					pt.execute();
					
    	     }catch(Exception e) {
    			 
    			 Log.log(Level.SEVERE,e.getMessage() );
    			 
    			}finally {
    				/*
    				 * Close prepared statement and database connectivity at the end of
    				 * transaction
    				 */
    			 
    				 try {
    					 
    					  if (pt != null) {
    							pt.close();
    						}
    				
    					  if (connection != null) {
    							connection.close();
    						}
    				} catch (SQLException e) {
    						
    						Log.log(Level.SEVERE, e.getMessage());
    					}
    		 	}	
		
	}
	
	
	/**This method will display all the handlers in the HANDLER table
	 *It will return an ArrayList containing Handler objects  */
	
    public ArrayList<Handler> listHandlers() {
	
					
    	
    	            ArrayList<Handler> handlers = new ArrayList<>();
					
			try {		
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("select * from HANDLER");
				    ResultSet result=pt.executeQuery();
				    
				    while(result.next()) {
				    	
				    	Handler handler=new Handler();
				
				    	handler.setHandlerID(result.getString(1));
				    	handler.setStaffID(result.getString(2));
				    	handler.setFullname(result.getString(3));
				    	handler.setEmail(result.getString(4));
				    	handler.setPhone(result.getString(5));
				    	handler.setAppointed_Date(result.getString(7));
				    	
				    	handlers.add(handler);
				    }
				}catch(Exception e) {
	    			 
	    			 Log.log(Level.SEVERE,e.getMessage() );
	    			 
	    			}finally {
	    				/*
	    				 * Close prepared statement and database connectivity at the end of
	    				 * transaction
	    				 */
	    				 try {
	    					 
	    					  if (pt != null) {
	    							pt.close();
	    						}
	    				
	    					  if (connection != null) {
	    							connection.close();
	    						}
	    				} catch (SQLException e) {
	    						
	    						Log.log(Level.SEVERE, e.getMessage());
	    					}
	    		 	}			    
	
            return handlers;
    }
    
    
    /**This method will delete a handler from the HANDLER table  whose handler id
       is passed in the parameter as hid  */

    public void deleteHandler(String hid) {
	
					
    	   try {
    	            connection=DBConnection.initializedb();
					pt=connection.prepareStatement("delete from HANDLER where Handler_ID=?");
					pt.setString(1, hid);
					pt.execute();
					
    	   }catch(Exception e) {
  			 
  			 Log.log(Level.SEVERE,e.getMessage() );
  			 
  			}finally {
  				/*
  				 * Close prepared statement and database connectivity at the end of
  				 * transaction
  				 */
  				 try {
  					 
  					  if (pt != null) {
  							pt.close();
  						}
  				
  					  if (connection != null) {
  							connection.close();
  						}
  				} catch (SQLException e) {
  						
  						Log.log(Level.SEVERE, e.getMessage());
  					}
  			}	
    }


    /**This method will display all the students from the STUDENTS table 
     * It will return an ArrayList containing Student objects. */
    
    public ArrayList<Student> ListStudents(){
	
	   ArrayList<Student> Students=new ArrayList<>();
	   
	            
	          try {
					   connection=DBConnection.initializedb();
					   pt=connection.prepareStatement("Select * from STUDENTS");
					   ResultSet result=pt.executeQuery();
					   
					   while(result.next()) {
						   
						   Student student=new Student();
						   
						   student.setStudentID(result.getString(1));
						   student.setFullname(result.getString(2));
						   student.setEmail(result.getString(3));
						   student.setPhone(result.getString(4));
						   student.setBatch(result.getString(5));
						   
						   Students.add(student);
						   
					   }
	          }catch(Exception e) {
	    			 
	    			 Log.log(Level.SEVERE,e.getMessage() );
	    			 
	    			}finally {
	    				/*
	    				 * Close prepared statement and database connectivity at the end of
	    				 * transaction
	    				 */ 
	    				 try {
	    					 
	    					  if (pt != null) {
	    							pt.close();
	    						}
	    				
	    					  if (connection != null) {
	    							connection.close();
	    						}
	    				} catch (SQLException e) {
	    						
	    						Log.log(Level.SEVERE, e.getMessage());
	    					}
	    		 	}				   
	   return Students;
	
    }

    
    /**This method will display all the staffs from the STAFFS table 
     * It will return an ArrayList containing Staff objects*/
    
    public ArrayList<Staff> ListStaffs(){
	
	   ArrayList<Staff> Staffs=new ArrayList<>();
	   
	   
				try {
	                   connection=DBConnection.initializedb();
					   pt=connection.prepareStatement("Select * from STAFFS");
					   ResultSet result=pt.executeQuery();
					   
					    while(result.next()) {
						   
						   Staff staff = new Staff();
						   
						   staff.setStaffID(result.getString(1));
						   staff.setFullname(result.getString(2));
						   staff.setEmail(result.getString(3));
						   staff.setPhone(result.getString(4));
						   staff.setType(result.getString(5));
						   
						   Staffs.add(staff);
					    }
				}catch(Exception e) {
	    			 
	    			 Log.log(Level.SEVERE,e.getMessage() );
	    			 
	    			}finally {
	    				/*
	    				 * Close prepared statement and database connectivity at the end of
	    				 * transaction
	    				 */
	    				 try {
	    					 
	    					  if (pt != null) {
	    							pt.close();
	    						}
	    				
	    					  if (connection != null) {
	    							connection.close();
	    						}
	    				} catch (SQLException e) {
	    						
	    						Log.log(Level.SEVERE, e.getMessage());
	    					}
	    		 	}	   
	   
	   return Staffs;
  }  

    
    /**This method will display the details of a particular student in STUDENTS table
      whose id is given in the parameter
      *It will return a Student object*/   

    public Student getStudent(String id){
		
	    Student student =new Student();
	
	    		try {	 
					  connection=DBConnection.initializedb();
					  pt=connection.prepareStatement("select * from STUDENTS where Student_ID=?");
					  pt.setString(1, id);
					  ResultSet result=pt.executeQuery();
				
						while(result.next()) {
							student.setStudentID(result.getString(1));
							student.setFullname(result.getString(2));
							student.setEmail(result.getString(3));
							student.setPhone(result.getString(4));
							student.setBatch(result.getString(5));
							student.setPassword(result.getString(6));
						}
				
	    		}catch(Exception e){
	    			Log.log(Level.SEVERE,e.getMessage() );
			 
	    		}finally {
	    			/*
	    			 * Close prepared statement and database connectivity at the end of
	    			 * transaction
	    			 */
	    			try {
				 
	    				if (pt != null) {
						pt.close();
	    				}
			
	    				if (connection != null) {
						connection.close();
	    				}
	    			} catch (SQLException e) {
					
	    				Log.log(Level.SEVERE, e.getMessage());
	    			}
	    		}
	     return student;	
    }


    /**This method will update a particular student's details in STUDENTS table
     using the student object passed in the parameter which contains the student's details*/
    
    public void UpdateStudent(Student student){
	
					
    	       try {
    	                connection=DBConnection.initializedb();
						pt=connection.prepareStatement("update STUDENTS set Full_Name=? , Email=? , Phone=? ,Batch=? where Student_ID=?");
						
						pt.setString(1, student.getFullname());
						pt.setString(2, student.getEmail());
						pt.setString(3, student.getPhone());
						pt.setString(4, student.getBatch());
						
						pt.setString(5, student.getStudentID());
						
						pt.executeUpdate();
						
    	       }catch(Exception e) {
    	  			 
    	  			 Log.log(Level.SEVERE,e.getMessage() );
    	  			 
    	  			}finally {
    	  				/*
    	  				 * Close prepared statement and database connectivity at the end of
    	  				 * transaction
    	  				 */
    	  				 try {
    	  					 
    	  					  if (pt != null) {
    	  							pt.close();
    	  						}
    	  				
    	  					  if (connection != null) {
    	  							connection.close();
    	  						}
    	  				} catch (SQLException e) {
    	  						
    	  						Log.log(Level.SEVERE, e.getMessage());
    	  					}
    	  			}		
    }


    /**This method will display the details of a particular staff in STAFFS table
        whose id is given in the parameter
     *It will return a Staff object */   
    
    public Staff getStaff(String id){
		
	    Staff staff =new Staff();
		
	    	try {	    
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("select * from STAFFS where Staff_ID=?");
					pt.setString(1, id);
					ResultSet result=pt.executeQuery();
					
					while(result.next()) {
						
						staff.setStaffID(result.getString(1));
						staff.setFullname(result.getString(2));
						staff.setEmail(result.getString(3));
						staff.setPhone(result.getString(4));
						staff.setType(result.getString(5));
						staff.setPassword(result.getString(6));

					}
					
	    	}catch(Exception e){
	    		Log.log(Level.SEVERE,e.getMessage() );
	 
	    	}finally {
	    		/*
				 * Close prepared statement and database connectivity at the end of
				 * transaction
				 */
	    		try {
		 
	    			if (pt != null) {
	    				pt.close();
	    			}
	
	    			if (connection != null) {
	    				connection.close();
	    			}
	    		} catch (SQLException e) {
			
	    			Log.log(Level.SEVERE, e.getMessage());
	    		}
	    	}			
		
	    	return staff;
    }


    
    /**This method will update a particular staff's details in STAFFS table
    using the staff object passed in the parameter which contains the staff's details*/

    public void UpdateStaff(Staff staff)  {
	
					
    	    try {
    	            connection=DBConnection.initializedb();
					pt=connection.prepareStatement("update STAFFS set Full_Name=? , Email=? , Phone=? ,Type=? where Staff_ID=?");
					
					pt.setString(1, staff.getFullname());
					pt.setString(2, staff.getEmail());
					pt.setString(3, staff.getPhone());
					pt.setString(4, staff.getType());
					
					pt.setString(5, staff.getStaffID());
					
					pt.executeUpdate();
					
    	    }catch(Exception e){
	    		Log.log(Level.SEVERE,e.getMessage() );
	 
	    	}finally {
	    		/*
				 * Close prepared statement and database connectivity at the end of
				 * transaction
				 */
	    		try {
		 
	    			if (pt != null) {
	    				pt.close();
	    			}
	
	    			if (connection != null) {
	    				connection.close();
	    			}
	    		} catch (SQLException e) {
			
	    			Log.log(Level.SEVERE, e.getMessage());
	    		}
	    	}			
    }
    
    
    /**This method will display all the tickets from the TICKETS table
     * It will return an ArrayList containing Ticket objects   */
    
    public ArrayList<Ticket> ListTickets(){
		
				ArrayList<Ticket> tickets=new ArrayList<>();
				
		try {
				connection=DBConnection.initializedb();
				st=connection.createStatement();
				ResultSet result=st.executeQuery("select * from Tickets");
				
				while(result.next()) {
					Ticket ticket=new Ticket();
					
					ticket.setTicketID(result.getInt(1));
					ticket.setCreated_by(result.getString(2));
					ticket.setCreated_on(result.getString(3));
					ticket.setSubject(result.getString(4));
					ticket.setStatus(result.getString(6));
					ticket.setPriority(result.getString(7));
					ticket.setClosed_by(result.getString(8));
					ticket.setClosed_on(result.getString(10));
				
					tickets.add(ticket);
				}
		}catch(Exception e){
    		Log.log(Level.SEVERE,e.getMessage() );
    		 
    	}finally {
    		/*
			 * Close statement and database connectivity at the end of
			 * transaction
			 */
    		try {
	 
    			if (st != null) {
    				st.close();
    			}

    			if (connection != null) {
    				connection.close();
    			}
    		} catch (SQLException e) {
		
    			Log.log(Level.SEVERE, e.getMessage());
    		}
    	}						
		
		return tickets;
		
	}
    
    
    /**This method will display the number of tickets in each status such as New,In progress,Closed,Forwarded
     and Canceled 
     It will return an ArrayList containing integers */
    
    public ArrayList<Integer> TicketStatus() {
    	
		    	ArrayList<Integer> status=new ArrayList<>();
		    	
		    try {	
		    	
		    	connection=DBConnection.initializedb();
		    	pt=connection.prepareStatement("select * from TicketStatus");
		    	ResultSet result=pt.executeQuery();
		    	
		    	
		    	while(result.next()) {
		    		
		    		status.add(result.getInt(2));
		    	}
		    }catch(Exception e){
	    		Log.log(Level.SEVERE,e.getMessage() );
	    		 
	    	}finally {
	    		/*
				 * Close prepared statement and database connectivity at the end of
				 * transaction
				 */
	    		try {
		 
	    			if (st != null) {
	    				st.close();
	    			}

	    			if (connection != null) {
	    				connection.close();
	    			}
	    		} catch (SQLException e) {
			
	    			Log.log(Level.SEVERE, e.getMessage());
	    		}
	    	}					
		    	return status;
    }

    
    /**This method will display the details of a particular ticket in TICKETS table
      which id is given in the parameter
     * It will return a Ticket object */   
    
    public Ticket getTicket(int tid){
   		   
    	Ticket ticket=new Ticket();
        
    	try {		
		   		connection=DBConnection.initializedb();
		   		pt=connection.prepareStatement("select * from Tickets where TID=?");
		   		pt.setInt(1, tid);
		   		ResultSet result=pt.executeQuery();
		   		
		   		
		   		while(result.next()) {
		   			
		   			ticket.setTicketID(tid);
		   			ticket.setSubject(result.getString("Subject"));
		   			ticket.setDescription(result.getString("Description"));
		   			ticket.setReply(result.getString("Reply"));
		   		}
    	}catch(Exception e){
    		Log.log(Level.SEVERE,e.getMessage() );
		 
			}finally {
				/*
				 * Close prepared statement and database connectivity at the end of
				 * transaction
				 */
				try {
			 
						if (pt!= null) {
					pt.close();
						}
						
						if (connection != null) {
							connection.close();
						}
				} catch (SQLException e) {
					
					Log.log(Level.SEVERE, e.getMessage());
				}
			}		   		
	   		
    	return ticket;
    }
    
    
    /** This method will update the closed_by,reply column of a ticket in Tickets table 
      which Ticket id is passed as tid in the parameter   */
    
	public void closeTicket(String id,int tid,String reply){
		
		 try {
              connection=DBConnection.initializedb();
		       ct=connection.prepareCall("exec CloseTicket ?,?,?");
		       ct.setString(1, id);
		       ct.setInt(2, tid);
		       ct.setString(3, reply);
		       ct.execute();
		       
		 }catch(Exception e) {
  			 
  			 Log.log(Level.SEVERE,e.getMessage() );
  			 
  			}finally {
  				/*
  				 * Close callable statement and database connectivity at the end of
  				 * transaction
  				 */
  				 try {
  					 
  					  if (ct != null) {
  							ct.close();
  						}
  				
  					  if (connection != null) {
  							connection.close();
  						}
  				} catch (SQLException e) {
  						
  						Log.log(Level.SEVERE, e.getMessage());
  					}
  		 	}		     


	}
 	 
	  /**check if there any Handler_ID same as hid passed in the parameter
	   already exists in Handler table*/
	
	 public Boolean checkHandlerID(String hid) {
  	   
  	   
	      Boolean availabilty=false;
	      
	       try {
	    	   
   	        connection=DBConnection.initializedb();
				String sql="select * from HANDLER where Handler_ID=?";
				pt=connection.prepareStatement(sql);
				pt.setString(1, hid);
				ResultSet rs=pt.executeQuery();
				availabilty=rs.next();
			
			
	       }catch(Exception e){
				Log.log(Level.SEVERE,e.getMessage() );
			 
				}finally {
			 
					try {
					 
					  if (pt != null) {
							pt.close();
						}
				
					  if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						
						Log.log(Level.SEVERE, e.getMessage());
					}
				}	
	       return availabilty;
  }
  
	
	
}
