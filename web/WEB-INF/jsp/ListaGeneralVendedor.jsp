<%-- 
    Document   : listaGeneralProveedor
    Created on : 20/05/2021, 12:24:05 AM
    Author     : lopva
--%>

<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.jdbc.core.JdbcTemplate"%>
<%@page import="Conexion.conexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Vendedores</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body>

            
            <div class="container mt-4"> 
                <div class="card border-info">
                    
                    
                    <div class="card-header bg-info"> 
                         <h3>Lista y busqueda de Vendedores</h3>
                    </div>
                    
                   <%-- <form action="buscarVendedor.htm" class="form-control">
                        
                        <label>ID Vendedor:</label>     
                        
                        <input type="text"  name="idvendedor" class="form-control">
                        <input type="submit"  value="Buscar" class="btn-success">
                        
                    </form> --%>
                   
                    <%
                      String busqueda=request.getParameter("idvendedor");
                      if(busqueda != null){
                          System.err.print("Error, Ingrese un valor");
                      }else{
                          System.err.print("Error, Ingrese un valor estoy en else");
                      }
                    %>
                    
                     <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Idvendedor</th>
                                            <th>Codigo</th>
                                            <th>Nombre</th>
                                            <th>Apellidos</th>
                                            <th>Sexo</th>
                                            <th>Fecha Nacimiento</th>
                                            <th>Celular</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="dato" items="${lista}">
                                            <tr>
                                                <td>${dato.idvendedor}</td>
                                                <td>${dato.codigo}</td>
                                                <td>${dato.nombre}</td>
                                                <td>${dato.apellidos}</td>
                                                <td>${dato.sexo}</td>
                                                <td>${dato.fechanac}</td>
                                                <td>${dato.celular}</td>
                                                <td>
                                                    <a href="EditarVendedor.htm?idvendedor=${dato.idvendedor}"
                                                       class="btn btn-warning">Editar</a>
                                                    <a href="EliminarVendedor.htm?idvendedor=${dato.idvendedor}"
                                                       class="btn btn-danger">Eliminar</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                </div>
            </div>
            <a href="index.htm">Regresar</a>
    </body>
</html>
