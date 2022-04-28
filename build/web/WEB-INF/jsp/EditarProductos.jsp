<%-- 
    Document   : EditarProducto
    Created on : 27/05/2021, 07:42:18 AM
    Author     : shash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar producto</title>
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
                        <label>Nombre:</label></br>
                        <input type="text" name="nombre" class="form-control" value="${lista[0].nombre}">
                        </br><label>Precio:</label></br>
                        <input type="double" name="precio" class="form-control" value="${lista[0].precio}">
                        </br><label>Cantidad:</label></br>
                        <input type="number" name="cantidad" class="form-control" value="${lista[0].cantidad}"></br>
                        
                        </br><input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="ListaGeneralProductos.htm">Regresar a lista</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
