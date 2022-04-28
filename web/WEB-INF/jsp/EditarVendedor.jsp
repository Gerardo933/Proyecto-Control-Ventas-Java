<%-- 
    Document   : editarProveedor
    Created on : 20/05/2021, 12:35:20 AM
    Author     : lopva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Vendedor</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Actualizar registro</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Codigo:</label>
                        <input type="number" name="codigo" class="form-control" value="${lista[0].codigo}">
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].nombre}">
                        <label>Apellidos:</label>
                        <input type="text" name="apellidos" class="form-control" value="${lista[0].apellidos}">
                        <label>Sexo:</label>
                        <input type="text" name="sexo" class="form-control" value="${lista[0].sexo}">
                        <label>Fecha Nacimiento:</label>
                        <input type="text" name="fechanac" class="form-control" value="${lista[0].fechanac}">
                        <label>Celular:</label>
                        <input type="number" name="celular" class="form-control" value="${lista[0].celular}">
                        
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="listaGeneralVendedor.htm">Regresar a lista</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
