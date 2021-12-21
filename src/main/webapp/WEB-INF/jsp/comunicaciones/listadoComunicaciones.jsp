<%@ include file="/WEB-INF/jsp/common/include_taglib.jsp" %>


<br>
<br>
<br>
<br>
<br>

<style>
    .fecha {
        width: 80px;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active"><em class="fas fa-list-alt fa-lg mr-1"></em>
                    <em class="fas fa-comment fa-lg mr-2"></em>
                        Listado de Comunicaciones
                    </li>
                </ol>
            </nav>
        </div>
    </div>

    <br>

    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <thead class="blue lighten-4">
                <tr class="bg-light">
                    <th scope="col"><div class="fecha">Fecha</div></th>
                    <th scope="col">Texto del Comunicado</th>
                    <th scope="col">Enviado a:</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><div class="fecha">22-12-2021</div></td>
                    <td>Nuevo acuerdo de colaboración Universidad-Empresa.</td>
                   <td>
                        <div class="row">
                            <div class="col"><h6><span class="badge badge-pill badge-success">Empresas</span></h6></div>
                        </div>

                    </td>
               </tr>                
                <tr>
                    <td><div class="fecha">01-12-2021</div></td>
                    <td>Los días 6 y 8 de Diciembre los centrs educativos permanecerán cerrados.</td>
                    <td>
                        <div class="row">
                            <div class="col"><h6><span class="badge badge-pill badge-secondary">Todos</span></h6></div>
                        </div>                    
                    </td>
                </tr>   
                 <tr>
                    <td><div class="fecha">08-11-2021</div></td>
                    <td>Actualización de la Oferta de Prácticas Curriculares y Extracurriculares</td>
                    <td>
                        <div class="row">
                            <div class="col"><h6><span class="badge badge-pill badge-secondary">Todos</span></h6></div>
                        </div>                    
                    </td>
                </tr> 
                <tr>
                    <td><div class="fecha">11-10-2021</div></td>
                    <td>Ya está disponible el nuevo catálogo de prácticas curriculares y extracurriculares de la Universidad Politécnica de Madrid.</td>
                   <td>
                        <div class="row">
                            <div class="col"><h6><span class="badge badge-pill badge-info">Estudiantes</span></h6></div>
                        </div>
                        <div class="row">
                            <div class="col"><h6><span class="badge badge-pill badge-info">Egresados</span></h6></div>
                        </div>

                    </td>
               </tr>
                <tr>
                    <td><div class="fecha">08-10-2021</div></td>
                    <td>Apertura del curso escolar.</td>
                    <td>
                        <div class="row">
                            <div class="col"><h6><span class="badge badge-pill badge-secondary">Todos</span></h6></div>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>


    </div>

    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-primary btn-rounded btn-sm"><i class="fas fa-search pr-2"></i>Buscar</button>
        </div>
    </div>


</div>
<!-- FIN CONTAINER -->
<br><br>

