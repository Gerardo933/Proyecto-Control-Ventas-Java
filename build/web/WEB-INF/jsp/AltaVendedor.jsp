<%-- 
    Document   : AltaProveedor
    Created on : 19/05/2021, 11:37:23 PM
    Author     : lopva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proveedor</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-4 col-lg-4"> 
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h3>Registrar vendedor</h3>
                </div>
                <div class="card-body">
                    <form method="POST">
                     
                        <label>Codigo:</label>
                        <input type="number" name="codigo" class="form-control">
                        
                        <label>Nombre:</label>
                        <input type="text" name="nombre" class="form-control">
                        
                        <label>Apellidos:</label>
                        <input type="text" name="apellidos" class="form-control">
                        
                        <label>Sexo:</label>
                        <input type="text" name="sexo" class="form-control">
                        
                        <label>Fecha Nacimiento:</label>
                        <input type="text" name="fechanac" class="form-control">
                        
                        <label>Celular:</label>
                        <input type="number" name="celular" class="form-control"><br>
                        
                        <button type="submit" class="btn-success">Agregar</button><br>
                        <a href="ListaGeneralVendedor.htm">Ir a lista de vendedores</a>
                        <a href="index.htm">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
