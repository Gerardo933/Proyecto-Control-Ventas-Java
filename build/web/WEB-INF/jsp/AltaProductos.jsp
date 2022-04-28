<%-- 
    Document   : AltaProducto
    Created on : 27/05/2021, 07:40:51 AM
    Author     : shash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4"> 
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h3>Registrar producto</h3>
                </div>
                <div class="card-body">
                    <form method="POST">
                     
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control">
                        
                        <label>Precio</label>
                        <input type="double" name="precio" class="form-control">
                        
                        <label>Cantidad</label>
                        <input type="number" name="cantidad" class="form-control"><br>
                        
                        <button type="submit" class="btn-success">Agregar</button><br>
                        <a href="ListaGeneralProductos.htm">Ir a lista de productos</a>
                        <a href="index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
