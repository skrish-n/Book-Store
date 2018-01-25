<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Citadel Books</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/javascript.js"></script>
<link rel="stylesheet" href="css/Footercss.css">
<link href="css/style.css" rel="stylesheet" type="text/css">
 <style>
            .main {
                padding: 7px;
                margin-top: 150px;
           
            }
        </style>
</head>
<body>
 <jsp:include page="Header.jsp"/>
 <div class="main">
 <%String firstName="",lastName="", emailAddress="",mobileNo="",state="",city="";
    String college="",branch="",semester="",password="",confirmPassword="";
 if(request.getParameter("fname")!=null){
			System.out.println("Accepted all inputs");
			 firstName=request.getParameter("fname");
			 lastName=request.getParameter("lname");
			 emailAddress=request.getParameter("emailaddress");
			 mobileNo=request.getParameter("mno");
			 state=request.getParameter("state");
			 city=request.getParameter("city");
			 college=request.getParameter("college");
			 branch=request.getParameter("branch");
			 semester=request.getParameter("semester");
			 password=request.getParameter("password");
			 confirmPassword=request.getParameter("confirmpassword");
			}%>
	
	<div class="container-fluid text-left">
		<div class="row">
			<div class="col-sm-6" style="padding-left: 2%;">				
				<h1>Register: Start Using Free Services</h1><br>
				<form action="RegistrationController" method="post" class="form-horizontal">
					<div class="row">
						<div class="col-sm-6">
							<label class="control-label" for="fname"><font color="red">*</font>First name:</label>
							<div>
								<input type="text" class="form-control" id="fname" name="fname" value="<%= firstName%>"
									style="border-radius: 0px; border-color: #000;" required>
							</div>
							<p id="errorfn"></p>
						</div>
						<div class="col-sm-6">
							<label class="control-label" for="lname">Last name</label><br>
							<div>
								<input type="text" class="form-control" id="lname" name="lname" value="<%= lastName%>"
									style="border-radius: 0px; border-color: #000;">
							</div>
							<p id="errorln"></p>
						</div>
					</div>
					<div>
						<label for="emailaddress"><font color="red">*</font>Email address</label> <input
							type="email" class="form-control" id="emailaddress"
							name="emailaddress" value="<%=emailAddress %>"
							style="border-radius: 0px; border-color: #000;" required>
							<p id="errorem"></p>
					</div>
					<div>
						<label for="mno"><font color="red">*</font>Mobile number</label> <input type="text"
							class="form-control" id="mno" name="mno" value="<%= mobileNo%>"
							style="border-radius: 0px; border-color: #000;" required>
							<p id="errormon"></p>
					</div>
					<div>
						<label for="state"><font color="red">*</font>State</label> <select id="state"
							class="col-sm-12" name="state" value="<%= state%>" style="height: 35px;" required>
							<option>--choose your state--</option>
							<option value="Karnataka">Karnataka</option>
						    <option value="Maharastra">Maharastra</option>
						</select>
						<p id="error"></p>
					</div>
					<div>
						<label for="city"><font color="red">*</font>City</label> <select id="city" name="city" value="<%= city%>"
							class="col-sm-12" style="height: 35px;" required>
							<option>--choose your city--</option>
							<option value="Bangalore">Bangalore</option>
							<option value="Pune">Pune</option>
						</select>
						<p id="error"></p>
					</div>
					<div>
						<label for="college"><font color="red">*</font>College</label> <select id="college"
							name="college" value="<%= college%>" class="col-sm-12" style="height: 35px;">
							<option>--choose your college name--</option>
							<option value="1cd">Cambridge Institute of Technology</option>
							<option value="1ay">Acharaya Institute of Technology</option>
							<option value="1ah">ACS COLLEGE OF ENGINEERING</option>
							<option value="1ac">Alpha College of Engineering</option>
							<option value="1at">Atria Institute of Technology</option>
							<option value="1bi">Bangalore Institute of Technology</option>
							<option value="1bm">Bms College of Engineering</option>
							<option value="1bo">BRINDAVAN COLLEGE OF ENGG	</option>
							<option value="1cr">C.M.R Institute of Technology</option>
							<option value="1cd">Cambridge Institute of Technology</option>
							<option value="1sg">Sapthagiri College of Engineering</option>
							<option value="1jb">Sjb Institute of Technology	</option>
							<option value="1rr">Rajarajeswari College of Engineering</option>
						</select>
						<p id="error"></p>
					</div>
					<div>
						<label for="branch"><font color="red">*</font>Branch </label> <select id="branch"
							name="branch" value="<%= branch%>" class="col-sm-12" style="height: 35px;" required>
							<option>--select your branch--</option>
							<option value="cse">Computer Science and Engineering</option>
							<option value="ec">Electronics and Communication Engineering</option>
							<option value="cv">Civil Engineering</option>
							<option value="eee">Electrical and Electronics Engineering</option>
							<option value="me">Mechanical Engineering</option>
							<option value="ise">Information Science and Engineerings</option>
						</select>
						<p id="error"></p>
					</div>
					<div>
						<label for="semester"><font color="red">*</font>Semester</label> <select id="semester"
							name="semester" value="<%= semester%>" class="col-sm-12" style="height: 35px;" required>
							<option>--select your semester--</option>
							<option value="1">1st</option>
							<option value="2">2nd</option>
							<option value="3">3rd</option>
							<option value="4">4th</option>
							<option value="5">5th</option>
							<option value="6">6th</option>
							<option value="7">7th</option>
							<option value="8">8th</option>
						</select>
						<p id="error"></p>
					</div>
					<div>
						<label for="password"><font color="red">*</font>Choose a password</label> <input type="password"
							class="form-control" id="password" name="password" value="<%= password%>"
							style="border-radius: 0px; border-color: #000;" required>
							<p id="errorpassword"></p>
					</div>
					<div>
						<label for="confirmpassword"><font color="red">*</font>Confirm password</label> <input type="password"
							class="form-control" id="confirmpassword" name="confirmpassword" value="<%= confirmPassword%>"
							style="border-radius: 0px; border-color: #000;" required>
							<p id="errorconfpassword"></p>
					</div>
					<div class="form-group" style="margin-top: 2%; padding-left: 2%;">
						<label for="captcha">Hope you are not a robot</label>
						<div id="extendwidth">
							<input type="text" id="randomfield" disabled="disabled">
							<button id="refresh">refresh</button>
							<p id="errorconfpassword"></p>
						</div>
						<input type="text" class="form-control" id="captcha"
							maxlength="10"
							style="height: 40px; width: 150px; background-color: #f2f2f2;margin-top:5px;"
							placeholder="Enter text here" name="cname" value="">

					</div>
					<div class="form-group">
						<div class="buttongroup"
							style="margin-top: 2%; padding-left: 2%;">
							<input type="submit" value="register" id="register" />
						</div>
					</div>
					</form>
				<div style="text-align: center; color: blue;">
					<%
						if (request.getAttribute("regstatus") != null) {
					%>
					<h2><%=request.getAttribute("regstatus")%></h2>
					<%
						}
					%>
					
				</div>
			</div>
			
			<div class="col-sm-6">
				<h3>
					Citadel members get unlimited<span style="white-space: nowrap;">
						access to:</span>
				</h3>
				<div>
					<h4>
						<i class="fa fa-check" aria-hidden="true" style="color: orange;"></i>&nbsp;&nbsp;Live
						Online Training (New!)
					</h4>
					<h4>
						<i class="fa fa-check" aria-hidden="true" style="color: orange;"></i>&nbsp;&nbsp;Learning
						Paths
					</h4>
					<h4>
						<i class="fa fa-check" aria-hidden="true" style="color: orange;"></i>&nbsp;&nbsp;Interactive
						Tutorials
					</h4>
					<h4>
						<i class="fa fa-check" aria-hidden="true" style="color: orange;"></i>&nbsp;
						WorkShop Details
					</h4>
					<h4>
						<i class="fa fa-check" aria-hidden="true" style="color: orange;"></i>&nbsp;&nbsp;Hands-on Training On Labs
						
					</h4>
					<h4>
						<i class="fa fa-check" aria-hidden="true" style="color: orange;"></i>&nbsp;&nbsp;Personalized Recomendation
					</h4>
				</div>
			</div>
		</div>
		</div>
		<div class="container-fluid" style="text-align: center; padding: 5%">
			<h4>
				Interested in <i>The Citadel</i> for your company or small team?<a href=""><font
					color="#f65d22">&nbsp;Explore the benefits.</font></a>
			</h4>
		</div>
		<!--  <div class="container-fluid"
			style="text-align: center; background-color: #eceae5; color: #666; padding: 2%">
			<h2>Trusted by thousands of organizations like:</h2>
			<div style="margin-top: 5%; text-align: center;">
				<ul class="client-logos">
					<li><img alt="" src="image/tesla.svg" class="img-responsive"></li>
					<li><img alt="" src="image/google.svg" class="img-responsive"
						style="margin-top: -8px;"></li>
					<li><img alt="" src="image/bloomberg.svg"
						class="img-responsive"></li>
					<li><img alt="" src="image/sutter-health.svg"
						class="img-responsive"></li>
					<li><img alt="" src="image/viacom.svg" class="img-responsive"></li>
					<li><img alt="" src="image/microsoft.svg"
						class="img-responsive"></li>
				</ul>
			</div>
		</div> -->
		
		</div>
		 <jsp:include page="Footer.jsp"/>
</body>
</html>