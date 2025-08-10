<%-- 
    Document   : rUsuario1
    Created on : 9/08/2025, 05:58:42 PM
    Author     : alexg
--%>
<%@include file="conexion.jsp"%>

<%
 String empleado = request.getParameter("empleado");
 String nombre = request.getParameter("nombre");
 String apellido = request.getParameter("apellido");
 String puesto = request.getParameter("puesto");
 String dias_trabajados = request.getParameter("dias_trabajados");
 String sueldo_diario = request.getParameter("sueldo_diario");
 st=conexion.prepareStatement("INSERT INTO empleados VALUES (?, ?,?,?,?,?)");
 st.setString(1, empleado);
 st.setString(2, nombre);
 st.setString(3, apellido);
 st.setString(4, puesto);
 st.setString(5, dias_trabajados);
 st.setString(6, sueldo_diario);
 st.execute();
 conexion.close();
 response.sendRedirect("index.jsp");
        out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'");
%>

<h2>Exito al ingresar registro</h2>>
<h2>Empleado: <%= empleado %></h2>
<h2>Nombre: <%= nombre %></h2>
<h2>Apellido: <%= apellido %></h2>
<h2>Puesto: <%= puesto %></h2>
<h2>Dias Trabajados: <%= dias_trabajados %></h2>
<h2>Sueldo Diario: <%= sueldo_diario %></h2>
