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

<p>Successfully connected!</p>

<br />

<form action="CheckEntryController" method="post">
	<input name='tempUserID' type='text'/>
	<input type='submit' value='Enter Home'/>
</form>

<form action="CheckEntryController" method="post">
	<input type='submit' value='Break In'/>
</form>

</body>
</html>