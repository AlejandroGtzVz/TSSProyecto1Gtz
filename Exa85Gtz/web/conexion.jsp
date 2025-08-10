<%-- 
    Document   : conexion
    Created on : 9/08/2025, 05:57:12 PM
    Author     : alexg
--%>

<%@page language="java" import="java.sql.*" %>

<%
       Connection conexion=null;
       PreparedStatement st=null;
       ResultSet rs=null;
    
       Class.forName("com.mysql.jdbc.Driver");
       conexion=DriverManager.getConnection("jdbc:mysql://localhost/base_exa_gtz","root","");

%>
