package com.oop.service;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.oop.model.*;
import com.oop.util.DBConnection;












public class UserServiceImpl implements IUserService{

	private static Connection connection;
	private static PreparedStatement pt;
	
	
	/** Initialize logger */
	public static final Logger Log=Logger.getLogger(UserServiceImpl.class.getName());
	
	
	@Override
	/** This method will add the student details which was in the register form */
		public void addStudent(Student student) {
		
			
			try {
			
		         connection=DBConnection.initializedb();
		     
			     pt=connection.prepareStatement("insert into STUDENTS values(?,?,?,?,?,?)");
			     pt.setString(1, student.getStudentID());
			     pt.setString(2, student.getFullname());
			     pt.setString(3, student.getEmail());
			     pt.setString(4, student.getPhone());
			     pt.setString(5, student.getBatch());
			     pt.setString(6, student.getPassword());
			
			     pt.execute();
			     
			 
			
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
	
	
	
	/** This method will add the ticket details which was in the create ticket form */
	   public void addTicket(Ticket ticket,int tid) {
		
		
		   try {	
				connection=DBConnection.initializedb();
			    pt=connection.prepareStatement("insert into Tickets(TID,Created_by,Subject,Description) values(?,?,?,?)");
				pt.setInt(1, tid);
				pt.setString(2, ticket.getCreated_by());
				pt.setString(3, ticket.getSubject());
				pt.setString(4, ticket.getDescription());
			
				
				pt.execute();
				
		
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
	
	   
	   
	   /** This method will retrieve the student details based on the provided student id */
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
	
	   
	   
	   /** This method will update the changed password based on the provided student id */
	   public void UpdateStudentPassword(String id,String pwd){
		
		   try {
			   
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("update STUDENTS set Password=? where Student_ID=?");
				pt.setString(1, pwd);
				pt.setString(2, id);
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
	
	   
	
	   /** This method will delete the student account based on the provided student id */
       public void deleteStudent(String id){
	
    	   try {
					connection=DBConnection.initializedb();
					pt=connection.prepareStatement("delete from STUDENTS where Student_ID=?");
					pt.setString(1, id);
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
       
       
       
       /** This method will delete the ticket details based on the provided ticket id */
       public void deleteTicket(int id) {
   		
		   	try {	
		   		
		   	    connection=DBConnection.initializedb();
		   		pt=connection.prepareStatement("delete from Tickets where TID=?");
		   		pt.setInt(1, id);
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
 
       
       
       /** This method will performs GET ticket by student id and Display the ticket */
       public ArrayList<Ticket> getSentTickets(String id){
   		
   		
				   	    ArrayList<Ticket> tickets=new ArrayList<>();
				   		
			   try {    
				   
				   
				        connection=DBConnection.initializedb();
			            pt=connection.prepareStatement("select * from Tickets where Created_by=?");
				   		pt.setString(1, id);
				   	
				   		ResultSet result=pt.executeQuery();
				   		while(result.next()) {
				   			
				   			Ticket ticket=new Ticket();
				   			
				   			ticket.setTicketID(result.getInt("Tid"));
				   			ticket.setSubject(result.getString("Subject"));
				   			ticket.setStatus(result.getString("Status"));
				   			tickets.add(ticket);
				   		}	
				   		
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
				   		
			     	
				   return tickets;
   		}
       
       
       
       
       
       
       /** This method will add the staff details which was in the register form */
       public void addStaff(Staff staff){
   		
   		
			   try {
    	            
				    connection=DBConnection.initializedb();
			   		pt=connection.prepareStatement("insert into STAFFS values(?,?,?,?,?,?)");
			   		pt.setString(1, staff.getStaffID());
			   		pt.setString(2, staff.getFullname());
			   		pt.setString(3, staff.getEmail());
			   		pt.setString(4, staff.getPhone());
			   		pt.setString(5, staff.getType());
			   		pt.setString(6, staff.getPassword());
			   		
			   		
			   		pt.execute();
			   		
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
       
       
       
       /** This method will delete the staff account based on the provided staff id */
       public void deleteStaff(String id) {
				   		
				   	try {
				   	
				   		connection=DBConnection.initializedb();
				        pt=connection.prepareStatement("delete from STAFFS where Staff_ID=?");
				   		pt.setString(1, id);
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
       
       
       
       /** This method will retrieve the staff details based on the provided sta id */
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
       
       
       
       /** This method will update the changed password based on the provided staff id */
       public void UpdateStaffPassword(String id,String pwd){
   		
		   try {
			   
				connection=DBConnection.initializedb();
				pt=connection.prepareStatement("update STAFFS set Password=? where Staff_ID=?");
				pt.setString(1, pwd);
				pt.setString(2, id);
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
	
       
       
       /** This method will checks the given student id with STUDENTS table */
       public Boolean checkStudentID(String id) {
    	   
    	   
    	      Boolean availabilty=false;
    	      
    	       try {
    	    	   
	    	        connection=DBConnection.initializedb();
					String sql="select * from STUDENTS where Student_ID=?";
					pt=connection.prepareStatement(sql);
					pt.setString(1, id);
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
       
       
       
       
       /** This method will checks the given staff id with STAFFS table */
       public Boolean checkStaffID(String id) {
    	   
    	   
 	      Boolean availabilty=false;
 	      
 	       try {
 	    	   
	    	        connection=DBConnection.initializedb();
					String sql="select * from STAFFS where Staff_ID=?";
					pt=connection.prepareStatement(sql);
					pt.setString(1, id);
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
       
       
       
       
       /** This method will update the changes made in the ticket will 
        * be changed in the Tickets table where the ticket id is the parameter as tid */
       public void updateTicketDescription(int tid,String description){
       	
			     
    	     try {
    	            connection=DBConnection.initializedb();
			       	pt=connection.prepareStatement("update Tickets set Description = ? where TID=?");
			       	pt.setString(1, description);
			       	pt.setInt(2, tid);
			       	pt.execute();
			       	
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
       
       
       
       /** This method will allow to view the details entered in Tickets table based on the ticket id */
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
          
}
