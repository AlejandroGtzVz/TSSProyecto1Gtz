<%-- 
    Document   : editarUsuario
    Created on : 9/08/2025, 05:57:27 PM
    Author     : alexg
--%>

<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<%@include file="conexion.jsp"%>

<%
    int id_empleado = Integer.parseInt(request.getParameter("id_empleado"));
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String puesto = request.getParameter("puesto");
    int dias_trabajados = Integer.parseInt(request.getParameter("dias_trabajados"));
    float sueldo_diario =Float.parseFloat(request.getParameter("sueldo_diario"));
%>


<!--SECTION-->
<div class="section">
<div class="container">
    <form method="post" action="editarUsuario.jsp">
        <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4 order-details">
                <div class="section-title text-center">
                    <a class="logo">
                        <<img src="./img/icon/inisesionalum2.jpg" alt="">
                    </a>
                    <br>
                    <h3 class="title">Editar Empleado</h3>
                </div>
                <div class="form-group">
                    <label for="nombre">Numero Empleado Editar</label>
                    <input type="text" class="form-control" id="id_empleado" value="<%= id_empleado%>" name="id_empleado" placeholder="id_empleado editar" required="required">
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre Empleado Editar</label>
                    <input type="text" class="form-control" id="nombre" value="<%= nombre%>" name="nombre" placeholder="nombre editar" required="required">
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido Empleado Editar</label>
                    <input type="text" class="form-control" id="apellido" value="<%= apellido%>" name="apellido" placeholder="apellido editar" required="required">
                </div>
                <div class="form-group">
                    <label for="puesto">Puesto Empleado Editar</label>
                    <input type="text" class="form-control" id="puesto" value="<%= puesto%>" name="puesto" placeholder="puesto editar" required="required">
                </div>
                <div class="form-group">
                    <label for="dias_trabajados">Dias Trabajados Editar</label>
                    <input type="text" class="form-control" id="dias_trabajados" value="<%= dias_trabajados%>" name="dias_trabajados" placeholder="dias_trabajados editar" required="required">
                </div>
                <div class="form-group">
                    <label for="sueldo_diario">Sueldo Empleado Editar</label>
                    <input type="text" class="form-control" id="sueldo_diario" value="<%= sueldo_diario%>" name="sueldo_diario" placeholder="sueldo_diario editar" required="required">
                </div>
                <center><input type="submit" class="primary-btn order-submit" name="enviar" value="Editar"></center>
                <input type="hidden" name="id_usuario" value="<%= id_empleado%>">
            </div>
        </div>
    </form>
</div>
            <div>
                <p><center>¿Quieres cancelar? Presiona <a href="index.jsp">Aqui</a></center></p>
            </div>
</div>
            
            
                <%
                   if (request.getParameter("enviar")!=null) {
                     try {
                     PreparedStatement ps;
                     ps= conexion.prepareStatement("update empleados set id_empleado='"+ id_empleado +"', nombre='"+ nombre +"', apellido='"+ apellido +"',puesto='"+ puesto +"',dias_trabajados='"+ dias_trabajados +"',sueldo_diario='"+ sueldo_diario +"' where id_empleado='"+id_empleado+"'");
                     ps.executeUpdate();
                     response.sendRedirect("index.jsp");
                    } catch (Exception e) {
                        out.print(e);
                    }
                    }    
                %>


<jsp:include page="includes/footer.jsp"/>