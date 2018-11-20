<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/HomeInsideStyle.css" />
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

    

        
        <div id="welcomeMessage">

			<h2>Name Goes Here</h2>

        </div>
 
    </div>
</body>
</html>