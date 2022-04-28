<%-- 
    Document   : ListaGeneralProducto
    Created on : 27/05/2021, 07:41:32 AM
    Author     : shash
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista general de productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt4">
            <div class="card boarder-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista de productos</h4>
                    <div style="float: right">
                        <a class="btn btn-outline-light" href="AltaProductos.htm">
                            Agregar producto
                        </a>
                        <%--<form action="BuscaProductos.htm" class="form-control">
                            <label>ID Producto:</label> 
                            </br><input type="text" name="codigo" class="form-control">
                            <input type="submit" value="Buscar" class="btn-success">
                        </form>--%>
                        <%
                            String busqueda=request.getParameter("codigo");
                            if(busqueda != null){
                                System.err.print("Error, Ingrese un valor");
                            }else{
                                System.err.print("Error, Ingrese un valor estoy en else");
                            }
                        %>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.codigo}</td>
                                    <td>${dato.nombre}</td>
                                    <td>${dato.precio}</td>
                                    <td>${dato.cantidad}</td>
                                    <td>
                                        <a href="EditarProductos.htm?codigo=${dato.codigo}"
                                           class ="btn btn-warning">Editar</a>
                                        <a href="EliminarProductos.htm?codigo=${dato.codigo}"
                                           class ="btn btn-danger">Eliminar</a>   
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                
            </div>
            <a href="index.htm">Regresar</a>
        </div>
    </body>
</html>
