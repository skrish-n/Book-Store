package com.inoesis.controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inoesis.beans.HashingPassword;
import com.inoesis.beans.RegistrationBean;
import com.inoesis.dao.RegistrationDao;
import com.inoesis.sendmail.SendEmail;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses=request.getSession(true);
		if(request.getParameter("fname")!=null){
			System.out.println("Registration Controller is in.");
			String firstName=request.getParameter("fname");
			String lastName=request.getParameter("lname");
			String emailAddress=request.getParameter("emailaddress");
			String mobileNo=request.getParameter("mno");
			String state=request.getParameter("state");
			String city=request.getParameter("city");
			String college=request.getParameter("college");
			String branch=request.getParameter("branch");
			String semester=request.getParameter("semester");
			String password=request.getParameter("password");
			String confirmPassword=request.getParameter("confirmpassword");
			int count=0;
			if(!firstName.isEmpty()){
				count++;
					if(!emailAddress.isEmpty() && emailAddress.matches("^[a-zA-Z0-9._]+@+[a-zA-Z.]+.[cominorg]+")){
						count++;
						System.out.println(count);
						if(!mobileNo.isEmpty() && mobileNo.matches("^[0-9]{10}$")){
							count++;
							if(!state.isEmpty()){
								count++;
								if(!city.isEmpty()){
									count++;
									if(!college.isEmpty()){
										count++;
										if(!branch.isEmpty()){
											count++;
											if(!semester.isEmpty()){
												count++;
													if(!password.isEmpty() && password.matches("^[a-zA-Z0-9]{4,15}$")){
														count++;
														System.out.println(count);
													
														if(!confirmPassword.isEmpty() && password.matches("^[a-zA-Z0-9]{4,15}$") && confirmPassword.equals(password)){
															count++;
															System.out.println("The value of count is:"+count);	
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			
			if(count==10){

				RegistrationBean r=new RegistrationBean();
				r.setFirstName(firstName);
				r.setLastName(lastName);
				r.setEmailAddress(emailAddress);
				r.setMobileNo(mobileNo);
				r.setState(state);
				r.setCity(city);
				r.setCollege(college);
				r.setBranch(branch);
				r.setSemester(semester);
				HashingPassword hp=new HashingPassword();
				String hashpwd=hp.setpassword(password);
				r.setPassword(hashpwd);
				
				
				
			
			
				int i=RegistrationDao.setRegistrationBean(r);
				if(i!=0){
					RequestDispatcher rd=request.getRequestDispatcher("ThankuRegistration.jsp");
					rd.forward(request, response);
				}
			/*		System.out.println("registration successfully");
					SendEmail.sendMail(emailAddress, "Thank you for Registration & your password is:"+password);
					ses.setAttribute("feedback", RegistrationDao.getFeedBack());					
					RequestDispatcher rd=request.getRequestDispatcher("ThankuRegistration.jsp");
					rd.forward(request, response);
                       //  response.sendRedirect("ThankuRegistration.jsp");
				}else{
					request.setAttribute("regstatus", "This E-mail Id is already Registered....");
					RequestDispatcher rd=request.getRequestDispatcher("RegistrationUi.jsp");
					rd.forward(request, response);
				}*/
			}else{
				request.setAttribute("regstatus", "Invalid Input");
				RequestDispatcher rd=request.getRequestDispatcher("RegistrationUi.jsp");
				rd.forward(request, response);
			}
		}
		if(request.getParameter("user")!=null){
			System.out.println("hiiiiiiiiii");
			String user=request.getParameter("user");
			String pwd=request.getParameter("pwd");
			HashingPassword hp=new HashingPassword();
			String hashpwd=hp.setpassword(pwd);
			
			ArrayList data=RegistrationDao.getPassword(user);
			if(hashpwd.equals(data.get(0))){
				//HttpSession ses=request.getSession(true);
				ses.setAttribute("name",  data.get(1));
				ses.setAttribute("role", data.get(2));
				String url="";
					if(data.get(2).equals("admin")){
						url="Adminhome.jsp";				
					}else{
						url="Userhome.jsp";
					}
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response);	
				
			}else{
				request.setAttribute("regstatus", "Invalid Credential...");
				RequestDispatcher rd=request.getRequestDispatcher("Loginform.jsp");
				rd.forward(request, response);
					
			}
			
		}
	}
}
