<%-- 
    Document   : rGeneral
    Created on : 9/08/2025, 05:58:17 PM
    Author     : alexg
--%>


<jsp:include page="includes/header.jsp"/>

<div class="container">
    <div class="container">
        <div class="order-details">
            <div class="row">
                <center>
                    <form method="post" action="rUsuario1.jsp">
                        <center>
                            <h3>ALTA EMPLEADO</h3>
                            <img src="./img/icon/inisesionalum2.jpg">
                            <div cool-sm-6>
                                <label>Empleado</label>
                                <input class="input" type="text" placeholder="Empleado" required name="empleado"/>
                                <label>Nombre</label>
                                <input class="input" type="text" placeholder="Nombre" required name="nombre"/>
                                <label>Apellido</label>
                                <input class="input" type="text" placeholder="Apellido" required name="apellido"/>
                                <label>Puesto</label>
                                <input class="input" type="text" placeholder="Puesto" required name="puesto"/>
                                <label>Dias Trabajados</label>
                                <input class="input" type="text" placeholder="Dias_trabajados" required name="dias_trabajados"/>
                                <label>Sueldo Diario</label>
                                <input class="input" type="text" placeholder="Sueldo_diario" required name="sueldo_diario"/>
                                <br><br>
                                <input type="submit" class="primary-btn order-submit" value="Registrarme"/>
                            </div>
                        </center>
                    </form>
                </center>
             
            </div>
        </div>
    </div>
</div>

<jsp:include page="includes/footer.jsp"/>
