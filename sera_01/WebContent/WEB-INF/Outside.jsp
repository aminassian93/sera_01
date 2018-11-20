<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Entry Interface</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/HomeOutsideStyle.css" />

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


</head>
<body>


	
	<div id="mainWrapper">

   
        <div class="wrapper">

           
            <div id="house">
                <div class="row">

                    <div class="column" id="1" onclick="entryAttempt()">
                        <div class="label">
                            Master Bedroom
                        </div>
                    </div>

                    <div class="column" id="2" onclick="entryAttempt()">
                        <div class="label">
                            Living Room
                        </div>
                    </div>

                </div>

                <div class="row2">

                    <div class="column" id="3" onclick="entryAttempt()">
                        <div class="label">
                            Bathroom
                        </div>
                    </div>

                    <div class="column" id="4" onclick="entryAttempt()">
                        <div class="label">
                            Kitchen
                        </div>
                    </div>

                </div>
            </div>


            <div class="wrapper">
                <div id="entrance" onclick="entryAttempt()">
                		
                </div>
            </div>
            
        </div>

    

        
        <div id="scanner">

			<!-- Customized form to allow javascript check correct Input -->            
             <span class="label"> Scan RFID chip:<br/> </span>
             <input type="text" id="userID" name="userID"/>
             <br/>
             <button id="submitButton" onclick="submitForm()">Scan</button>

        </div>
 
    </div>
    
    <script src="https://www.gstatic.com/firebasejs/5.5.8/firebase.js"></script>
     

	<!-- 
		Apparently, exposing your Firebase configuration isn't a security issue.
		https://stackoverflow.com/questions/37482366/is-it-safe-to-expose-firebase-apikey-to-the-public
	-->    
    <!-- Script that connects app to Firebase -->
    <script type="text/javascript" src="js/config.js"></script>
    
    <script type="text/javascript" src="js/Outside.js"></script>
</body>
</html>