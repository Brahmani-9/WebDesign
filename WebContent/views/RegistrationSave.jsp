<%@ page import="dao.Registration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.*"%>
<html>
<head>
<title>Registration save</title>
</head>
<body>
<%
	Registration registration = new Registration();

	String strfname = request.getParameter("fname");
	System.out.println("strfname : " + strfname);
	String strlname = request.getParameter("lname");
	System.out.println("strlname : " + strlname);
	String stremail = request.getParameter("email");
	System.out.println("stremail : " + stremail);
	String strphone = request.getParameter("phone");
	System.out.println("strphone : " + strphone);
	String straddress = request.getParameter("address");
	System.out.println("straddress : " + straddress);
	String strgender = request.getParameter("gender");
	System.out.println("strgender : " + strgender);
	registration.registrationSave(strfname,strlname,stremail,strphone,straddress,strgender);
%>
</body>
</html>