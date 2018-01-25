<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The Citadel Books</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="css/Footercss.css">  
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
            <div class="container" id="scroll">
                <div class="row">
                    <ul class="nav nav-tabs col-sm-6 col-sm-offset-3">
                        <li class="active col-sm-4 col-xs-12"><a data-toggle="tab" href="#home">Welcome</a></li>
                        <li class="col-sm-4 col-xs-12"><a data-toggle="tab" href="#menu1">How It Works</a></li>
                        <li class="col-sm-4 col-xs-12"><a data-toggle="tab" href="#menu2">FAQ's</a></li>
                    </ul>
                </div>
                <div class="tab-content  col-sm-8 col-sm-offset-2" style="border:20px solid #ddd;">
                    <div id="home" class="tab-pane fade in active" style="padding: 2% 2%">
                        <div class="row">
                            <div class="col-sm-12" style="border: 15px solid #dddddd;padding: 2%">
                                <div class="row">
                                    <div class="col-sm-7" style="text-align: justify;">
                                        <h4>Welcome to <i>The Citadel Books</i>  Online</h4>
                                        <p>Your company has partnered with <i>Citadel </i> Books Online to provide you with online access
                                            to <i>Citadel </i> Books Online. Get access to all the books by creating an account right away!
                                            If you already have an account, click the REGISTER button to sign in.</p>
                                    </div>
                                    <div class=" col-sm-4" style="border: 1px solid black;padding: 5% 7% 5% 7%;margin: 35px 20px 0px 20px;text-align: center;">
                                        <a href="RegistrationUi.jsp"  class="btn btn-primary"style="background-color: #00cc33;">REGISTER --></a>
                                    </div> 
                                </div>
                            </div>
                            <div class="col-sm-12" style="border: 15px solid #dddddd;padding: 2%;margin-top:10px;text-align:center;">
                                <h5><strong>Most Popular <i>Citadel </i> Books Online Titles</strong></h5>
                                <div>                                
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-2"><img src="image/book1.jpg" height="400" width="500"></div>
                                    <div class="col-sm-2"><img src="image/9780596522346_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781118063316_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781449355722_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781785289729_s.jpg"></div>                                
                                    <div class="col-sm-1"></div>
                                </div>
                            </div>
                            <div class="col-sm-12" style="border: 15px solid #dddddd;padding: 2%;margin-top:10px;text-align:center;">
                                <h5><strong>Most Popular <i>Citadel </i> Books Online Titles</strong></h5>
                                <div>                                
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-2"><img src="image/book2.jpg" height="400" width="500"></div>
                                    <div class="col-sm-2"><img src="image/9780596522346_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781118063316_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781449355722_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781785289729_s.jpg"></div>                                
                                    <div class="col-sm-1"></div>
                                </div>
                            </div>
                            <div class="col-sm-12" style="border: 15px solid #dddddd;padding: 2%;margin-top:10px;text-align:center;">
                                <h5><strong>Most Popular <i>Citadel </i> Books Online Titles</strong></h5>
                                <div>                                
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-2"><img src="image/book3.jpg" height="400" width="500"></div>
                                    <div class="col-sm-2"><img src="image/9780596522346_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781118063316_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781449355722_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781785289729_s.jpg"></div>                                
                                    <div class="col-sm-1"></div>
                                </div>
                            </div>
                            <div class="col-sm-12" style="border: 15px solid #dddddd;padding: 2%;margin-top:10px;text-align:center;">
                                <h5><strong>Most Popular <i>Citadel </i>Books Online Titles</strong></h5>
                                <div>                                
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-2"><img src="image/book4.jpg" height="400" width="500"></div>
                                    <div class="col-sm-2"><img src="image/9780596522346_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781118063316_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781449355722_xs.jpg"></div>
                                    <div class="col-sm-2"><img src="image/9781785289729_s.jpg"></div>                                
                                    <div class="col-sm-1"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>This section must essentially contain all the instructions.</p>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Contains all the FAQ's.</p>
                    </div>
                </div>
            </div>
          
       </div>
          <jsp:include page="Footer.jsp"/>
</body>
</html>