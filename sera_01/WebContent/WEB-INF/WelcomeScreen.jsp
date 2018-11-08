<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>

<h1>Welcome ${firstName} ${lastName}!</h1>

<form action="ValidEntryController" method="post">
	<input type="hidden" name="firstName" value="${firstName}"/>
	<input type="hidden" name="lastName" value="${lastName}"/>
	<input type="hidden" name="userID" value="${userID}"/>
	<input type="hidden" name="time_in" value="${time_in}"/>
	<input type="submit" value="Exit"/>
</form>


</body>
</html>