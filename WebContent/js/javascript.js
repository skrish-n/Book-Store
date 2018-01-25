window.onload = loadtest;

function loadtest() {
	//alert("AAAAAAA");
	document.getElementById("refresh").onclick=loadtest;
	document.getElementById("register").onclick=checkCondition;
	
	var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
	var string_length = 6;
	var changeCaptcha = '';
	for (var i=0; i<string_length; i++) {
		//alert("SSSSSS");
		var rnum = Math.floor(Math.random() * chars.length);
		changeCaptcha += chars.substring(rnum,rnum+1);
		//alert(changeCaptcha);
		
	}
	document.getElementById('randomfield').value = changeCaptcha;
	//alert(changeCaptcha+"QQQQQQ");
	
}



function checkCondition() {
if(document.getElementById('captcha').value == document.getElementById('randomfield').value ) {
//window.open('https://www.google.co.in','_self');
	//alert("you entered corrent captcha");
}
else {
//alert("Please enter correct captcha");
}
 }
$(document).ready(function(){
	   //alert("QQQQ");
	     $("#fname").bind("blur",Firstnameerror);
	    $("#lname").bind("blur",Lastnameerror);
	    $("#emailaddress").bind("blur",Emailerror);
	    $("#mno").bind("blur",Mobileerror);
	    $("#password").bind("blur",Passworderror);
	    $("#confirmpassword").bind("blur" ,Confpassword);
	});
	function Firstnameerror(){
	   // alert("WWWWW");
	     var x= $("#fname").val();
	     var alphaExp = /^[A-Za-z]+$/;
		//alert(alphaExp + "RRRRR")
		if (x.match(alphaExp)) {
			//alert('Your name have accepted : you can try another');
		 	return true;
		} else {
			//alert('Please input alphabet characters only');
	                var y="Please input only a-z or A-Z characters only";
	                  $("#errorfn").text(y);
	                  return false;
		}}
	    
	    function Lastnameerror(){
	    //alert("WWWWW");
	     var x= $("#lname").val();
	     var alphaExp = /^[A-Za-z]+$/;
		//alert(alphaExp + "RRRRR")
		if (x.match(alphaExp)) {
			//alert('Your name have accepted : you can try another');
			return true;
		} else {
			//alert('Please input alphabet characters only');
	                var y="Please input only a-z or A-Z characters only";
	                  $("#errorln").text(y);
	                  return false;
		}}


	function Emailerror(){
		// alert("WWWWW");

	var namevalue = $("#emailaddress").val();
	  var emailexp = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	  //alert(emailexp + "YYYYY");
	  if (namevalue.match(emailexp)) {
	    //alert("yes");
	    return true;
	  } else {
	    //alert("please enter valid email id ");
	    $("#errorem").text("Please Enter a Valid Email Id");

	    return false;
	  }}

	function Mobileerror(){

	var pass1 = $("#mno").val();
	  
	 if(pass1.length!=10){
	$("#errormon").text("Please enter 10 digit mobile no.");
	    }
	}
	    
	function Passworderror(){

	var passwordvalue = $("#password").val();
	  var passwordexp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$/;

	  if (passwordvalue.match(passwordexp)) {
	    //alert("yes");
	    return true;
	  } else {
	    //alert("please enter valid password id");
	     $("#errorpassword").text("must contain a-z,A-Z characters and 1 number,and minimum length is 6");

	    return false;
	  }  
	}

	function Confpassword(){
		//alert("AAA");
		var x=$("#confirmpassword").val();
		var passwordvalue = $("#password").val();
		//alert(x+"FFFF");
		//alert(userexp+"GGGGG");
		if(x.match(passwordvalue)){
			//alert("DDDD");
			return true;
		}else{
		//	alert("SSSS");
			$("#errorconfpassword").text("your Confirm password does not match with the password");
		return false;
		}
		}

	$(document).ready(function(){
		 $("#lname").focus(function(){
			// alert("QQQQ");
			 var x= $("#fname").val();
			// alert(x);
			if(x==''){
				//alert("WWWW");
				$("#errorfn").show();
			}
			else{
				//alert("EEEE");
				$("#errorfn").hide();
			}
			 });
		 
		 $("#emailaddress").focus(function(){
			 var x= $("#lname").val();
			 //alert(x);
			if(x==''){
				//alert("WWWW");
				$("#errorln").show();
			}
			else{
				//alert("EEEE");
				$("#errorln").hide();
			}
		 });
		
		 $("#mno").focus(function(){
			 var x= $("#emailaddress").val();
			 if(x==''){
				 $("#errorem").show();
			 }
			 else{
				 $("#errorem").hide();
			 }
			 });
		 
		 $("#state").focus(function(){
			var x=$("#mno").val(); 
			if(x==''){
				$("#errormon").show();
			}
			else{
				$("#errormon").hide();
			}
		 });
		 
		 $("#confirmpassword").focus(function(){
		var x=$("#password").val();
		if(x==''){
			$("#errorpassword").show();
		}
		else{
			
		$("#errorpassword").hide();
		}
		});
		 
		 $("#register").click(function(){
			 
			 var x=$("#confirmpassword").val();
			 
			if(x==''){
				$("#errorconfpassword").show();
			} else{
				$("#errorconfpassword").hide();
			}
			 
			 
			 
		 });
		 
	});