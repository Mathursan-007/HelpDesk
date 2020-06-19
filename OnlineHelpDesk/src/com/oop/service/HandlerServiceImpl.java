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

import com.oop.model.*;
import com.oop.util.DBConnection;


public class HandlerServiceImpl implements IHandlerService{

	private static Connection connection;
	private static PreparedStatement pt;
	private static CallableStatement ct;
	private static Statement st; 
	
	
	/** Initialize logger */
	public static final Logger Log=Logger.getLogger(IHandlerService.class.getName());	
	
	/*
     * Handler's details can be retrieved based on the provided Handler ID 
     */
    

	public Handler getHandler(String hid) {
	
		
		    Handler handler=new Handler();
					
		    try {
		            connection=DBConnection.initializedb();
					pt=connection.prepareStatement("select * from HANDLER where HANDLER_ID=?");
					pt.setString(1, hid);
					ResultSet result=pt.executeQuery();
					
					
					
					while(result.next()) {
					   	
						
						
						handler.setHandlerID(result.getString(1));
						handler.setStaffID(result.getString(2));
						handler.setFullname(result.getString(3));
						handler.setEmail(result.getString(4));
						handler.setPhone(result.getString(5));
						
					}
	
		    }catch(Exception e) {
   			 
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
	return handler;
}


	/*
	 * This method takes a Handler object as a parameter and updates the details of that handler 
	 */
	
	public void UpdateHandler(Handler handler)  {
	
				
		    try{
		            connection=DBConnection.initializedb();
					pt=connection.prepareStatement("update HANDLER set Staff_ID=? ,Full_Name=? , Email=? , Phone=? where Handler_ID=?" );
					
					pt.setString(1,handler.getStaffID());
					pt.setString(2, handler.getFullname());
					pt.setString(3, handler.getEmail());
					pt.setString(4, handler.getPhone());
					pt.setString(5, handler.getHandlerID());
					
					pt.executeUpdate();
					
		    }catch(Exception e) {
	   			 
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
		}
	
	/*
	 * This method executes a procedure which changes the status of the ticket to Inprogress when 
	 * it's accepted by the Handler and stores the details in the Inprogress table and deletes the ticket 
	 * from the new tickets table based on the provided Handler ID,Ticket ID and priority
	 */
	
	
	public void acceptTicket(String id,String tid,String priority) {
		
				
		        try {   
		               connection=DBConnection.initializedb();
				       ct=connection.prepareCall("exec AcceptTicket ?,?,?");
				       ct.setString(1, id);
				       ct.setString(2, tid);
				       ct.setString(3, priority);
				       ct.execute();
				       
		        }catch(Exception e) {
		   			 
		   			 Log.log(Level.SEVERE,e.getMessage() );
		   			 
		   			}finally {
		   			 
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
	
	/*
	 *This method executes a procedure which changes the status of the ticket to forwarded when in it's
	 * forwarded by the Handler and deletes the ticket from the new tickets table based on the provided
	 * Ticket ID
	 */
	
	public void forwardTicket(int tid) {
		
		     try {
				       connection=DBConnection.initializedb();
				       ct=connection.prepareCall("exec ForwardTicket ?");
				      
				       ct.setInt(1, tid);
				       ct.execute();
				       
		     }catch(Exception e) {
	   			 
	   			 Log.log(Level.SEVERE,e.getMessage() );
	   			 
	   			}finally {
	   			 
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
	
	/*
	 * This method executes a procedure which changes the status of the Ticket to cancelled 
	 * when it's cancelled by the Handler and deletes the Ticket from the Inprogress table based 
	 * on a provided Ticket ID
	 */
	
	public void cancelTicket(int tid){
		
		   try {
			       connection=DBConnection.initializedb();
			       ct=connection.prepareCall("exec CancelTicket ?");
			       ct.setInt(1, tid);
			       ct.execute();
			       
		   }catch(Exception e) {
	   			 
	   			 Log.log(Level.SEVERE,e.getMessage() );
	   			 
	   			}finally {
	   			 
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
	
	/*
	 * This method executes a procedure which changes the status of the ticket to closed when a solution
	 * is provided by the Handler and deletes the Ticket from the Inprogress table based on a provided
	 * Handler ID,Ticket ID and reply 
	 */
	
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
	
	/*
	 * Retrieves all the tickets that are in the In progress table of a particular Handler based on
	 * a provided Handler ID
	 */
	
	public ArrayList<Ticket> getInprogressTickets(String id){
		
		
		ArrayList<Ticket> tickets=new ArrayList<>();
			
		 try { 
		   
			    connection=DBConnection.initializedb();
				pt=connection.prepareStatement("select * from InprogressTickets where Handler_ID=?");
				pt.setString(1, id);
			
				ResultSet result=pt.executeQuery();
				while(result.next()) {
					
					Ticket ticket=new Ticket();
					
			
					ticket.setTicketID(result.getInt(2));
					ticket.setCreated_on(result.getString(3));
					ticket.setSubject(result.getString(4));
					ticket.setDescription(result.getString(5));
					ticket.setPriority(result.getString(6));
					tickets.add(ticket);
				}
				
		 }catch(Exception e) {
   			 
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
		
		
		
		return tickets;
		
	}
	
	/*
	 * This method retrieves all the new tickets that are created by the users 
	 */
	
    public ArrayList<Ticket> getNewTickets(){
		
		ArrayList<Ticket> tickets=new ArrayList<>();
		
		try {	
		        connection=DBConnection.initializedb();
				st=connection.createStatement();
				ResultSet result=st.executeQuery("select * from NewTickets");
				
				while(result.next()) {
					Ticket ticket=new Ticket();
					ticket.setTicketID(result.getInt(1));
					ticket.setCreated_by(result.getString(2));
					ticket.setCreated_on(result.getString(3));
					ticket.setSubject(result.getString(4));
					ticket.setPriority(result.getString(5));
					tickets.add(ticket);
				}
		}catch(Exception e) {
  			 
  			 Log.log(Level.SEVERE,e.getMessage() );
  			 
  			}finally {
  			 
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

    /*
     * This retrieves the ticket details based on a provided ticket ID 
     */
    
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
    
    /*
 	 * This method updates the password of the Handler based on the provided Handler ID and password
 	 */
    
	   public void UpdateHandlerPassword(String hid,String pwd){
			
		   try {
			   
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("update HANDLER set Password=? where HANDLER_ID=?");
				pt.setString(1, pwd);
				pt.setString(2, hid);
				pt.executeUpdate();
				
				
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
	   }
	
	
	
}
