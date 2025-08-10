<%-- 
    Document   : eliminar
    Created on : 9/08/2025, 05:57:41 PM
    Author     : alexg
--%>


<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<%@include file="conexion.jsp"%>

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <form method="post" action="eliminarUsuario.jsp">
            <!-- row -->
            <div class="row">
                <!-- Order Details -->
                <div class="col-md-4">

                </div>
                <div class="col-md-4 order-details">
                    <div class="section-title text-center">
                        <a class="logo">
                            <img src="./img/icon/inisesionalum2.jpg" alt="">
                        </a>
                        <br>
                        <h3 class="title">Eliminar Empleado</h3>
                    </div>
                    <div class="form-group">
                        <label>Confirma Id empleado a Borrar</label>
                        <%
                            int id_empleado=Integer.parseInt(request.getParameter("id_empleado"));
                         %>   
                        <input class="input" type="text" value="<%= id_empleado%>" required name="id_empleado">
                    </div>
                    <center><input type="submit" class="primary-btn order-submit" name="btnEliminar" value="Eliminar"></center>
                </div>
                <!-- /Order Details -->
            </div>
            <!-- /row -->
        </form>
    </div>
    <!-- /container -->
    <div>
        <p><center>¿Quieres cancelar? Presiona <a href="index.jsp">Aquí</a></center></p>
    </div>
</div>
<!-- /SECTION -->
<!----------------------------- / FORMULARIO IS ALUMNO -->
<br><!-- comment -->
<center>  <h4>Fecha y hora del sistema : <%= new java.util.Date() %></h4></center> 


<jsp:include page="includes/footer.jsp"/>
<jsp:include page="includes/footer.jsp"/>