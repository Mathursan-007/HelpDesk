package com.oop.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.oop.util.DBConnection;



public class LoginServiceImpl {


private Connection connection;
private PreparedStatement pt;

public static final Logger Log=Logger.getLogger(LoginServiceImpl.class.getName()); 
	

      public boolean studentLogin(String id,String pwd) {
		
    	  boolean condition=false;	
    	  
    	     try {
    	            connection=DBConnection.initializedb();
					String sql="select * from STUDENTS where Student_ID=? and Password=?";
					pt=connection.prepareStatement(sql);
					pt.setString(1, id);
					pt.setString(2, pwd);
					ResultSet rs=pt.executeQuery();
					condition=rs.next();
					
					
					
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
    	     return condition;	   
	}

      
      
    public boolean staffLogin(String id,String pwd){
	
    	         boolean condition=false;	
    	
    	    try {	
    	            connection=DBConnection.initializedb();
					String sql="select * from STAFFS where Staff_ID=? and Password=?";
					pt=connection.prepareStatement(sql);
					pt.setString(1, id);
					pt.setString(2, pwd);
					ResultSet rs=pt.executeQuery();
				    condition=rs.next();
					
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
					return condition;	
    }

    
    
    
    public boolean handlerLogin(String id,String pwd) {
	
    	boolean condition=false;	
    	
    	try {
    	        connection=DBConnection.initializedb();
				String sql="select * from HANDLER where Handler_ID=? and Password=?";
				pt=connection.prepareStatement(sql);
				pt.setString(1, id);
				pt.setString(2, pwd);
				ResultSet rs=pt.executeQuery();
				condition=rs.next();
	     
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
	
	         return condition;	
    }
	
	
	
}
