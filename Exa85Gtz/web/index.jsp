<%-- 
    Document   : index
    Created on : 9/08/2025, 05:56:51 PM
    Author     : alexg
--%>

<jsp:include page="includes/header.jsp"/>

<jsp:include page="includes/nav.jsp"/>

<br>
<div class="container">
    <center>

        <div class="thumbnail">

        </div>
        <h4>LISTA OFICIAL DE EMPLEADOS DE LA EMPRESA GUTIERREZ SA DE CV</h4>
        <br>
    </center>  
    <%@include file="conexion.jsp"%>

    <div class="row col-md-12" >
        <table class="table table-striped table-bordered table-hover" style="text-align: center">
            <thead>
                <tr>
                    <th style="text-align: center">ID</th>
                    <th style="text-align: center">Nombre</th>
                    <th style="text-align: center">Apellido</th>
                    <th style="text-align: center">Puesto</th>
                    <th style="text-align: center">Dias Trabajados</th>
                    <th style="text-align: center">Sueldo Diario</th>

                    <th style="text-align: center">Operaciones</th>
                    <th style="text-align: center">Operaciones</th>
                </tr>
            </thead>
            <tbody>

                <%
                    st = conexion.prepareStatement("select * from empleados");
                    rs = st.executeQuery();
                    while (rs.next()) {//inicia while
%>  
                <tr>
                    <td><%=rs.getString("id_empleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("apellido")%></td>
                    <td><%=rs.getString("puesto")%></td>
                    <td><%=rs.getString("dias_trabajados")%></td>
                    <td><%=rs.getString("sueldo_diario")%></td>

                    <td><a class="btn btn-danger" href="eliminar.jsp?id_empleado=<%=rs.getString("id_empleado")%>">Eliminar</a></td>
                    <td><a class="btn btn-success" href="editarUsuario.jsp?id_empleado=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&apellido=<%= rs.getString(3)%>&puesto=<%= rs.getString(4)%>&dias_trabajados=<%= rs.getString(5)%>&sueldo_diario=<%= rs.getString(6)%>">Editar</a></td>
                </tr>
                <%
                            }//termina while  
%>
            </tbody>
        </table>
    </div>
</div>            

<center>  <h4>Fecha y hora del sistema : <%= new java.util.Date()%></h4></center>    


<jsp:include page="includes/footer.jsp"/>