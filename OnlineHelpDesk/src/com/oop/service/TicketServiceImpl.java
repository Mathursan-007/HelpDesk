package com.oop.service;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.oop.util.DBConnection;



public class TicketServiceImpl implements ITicketService {

	private static Connection connection;
	private static Statement st; 
	
	public static final Logger Log=Logger.getLogger(TicketServiceImpl.class.getName());
	
	
	
	
    public int generateTicketID(){
		
    	
    	      int tid=0;
    	
    	try {
				connection=DBConnection.initializedb();
				st=connection.createStatement();
				ResultSet result=st.executeQuery("select TID from Tickets");
				
				
				while(result.next()) {
					
					tid=result.getInt(1);
				}
				
				tid++;
				
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
		return tid;
	}
	
	
	
	
	
	
	
	
}
