<%-- 
    Document   : eliminarUsuario
    Created on : 9/08/2025, 05:58:00 PM
    Author     : alexg
--%>

<%@include file="conexion.jsp"%>

<%
  int numeroCodigo=Integer.parseInt(request.getParameter("id_empleado"));
  PreparedStatement ps;
  ps=conexion.prepareCall("DELETE from empleados WHERE id_empleado='"+numeroCodigo+"'");
  ps.executeUpdate();
  response.sendRedirect("index.jsp");

%>