<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery/jquery-3.2.1.min.js"></script>
        <script src="css/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/Footercss.css">   
        <style>
            .main {
                padding: 7px;
                margin-top: 150px;
           
            }
        </style>
<body>
 <jsp:include page="Header.jsp"/>
        <div class="main">
            <div class="container-fluid text-center">
                <div class="col-lg-offset-3 col-sm-6">
                    <div class="well well-lg">
                        <div class="container-fluid">
                            <h6>Please sign in by entering your user E-mail and Password.</h6>
                            <form class="form-horizontal" action="RegistrationController" method="post">
                                <div class="col-lg-offset-1 col-sm-10">
                                    <div class="well well-lg">

                                        <div class="form-group">

                                            <label for="user">User Email:</label>
                                            <input type="text" class="form-control" id="user" name="user">
                                        </div>


                                        <div class="form-group">
                                            <label for="pwd">Password:</label>
                                            <input type="password" class="form-control" id="pwd" name="pwd">
                                            <div class="checkbox">
                                                <label><input type="checkbox" value="">Stay Signed In</label>
                                            </div>
                                        </div>

                                    </div>

                                    <button style="float: right;background-color: #00cc33;color: black" type="submit" class="btn-primary">CONTINUE</button><br><br>
                                    <a style="float:right;color:black " href=" ">forgot Password?</a>
                                </div>
                            </form>
                            
                        </div>
                      Not Registered!!!&nbsp;<a href="RegistrationUi.jsp">Go Back to Register page...</a>

                    </div>
                </div>
                
            </div>
        </div>
        <jsp:include page="Footer.jsp"/>

</body>
</html>