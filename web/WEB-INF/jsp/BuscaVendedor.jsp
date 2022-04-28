<%-- 
    Document   : buscaEmpresa
    Created on : 26/05/2021, 01:24:37 AM
    Author     : BlackRS
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="org.springframework.jdbc.core.JdbcTemplate"%>
<%@page import="Conexion.conexionBD"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
 
    </head>
    <body>
   
            <div class="container mt-4"> 
                <div class="card border-info">
               
                     <div class="card-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                           <td>${dato.idvendedor}</td>
                                                <td>${dato.codigo}</td>
                                                <td>${dato.nombre}</td>
                                                <td>${dato.apellidos}</td>
                                                <td>${dato.sexo}</td>
                                                <td>${dato.fechanac}</td>
                                                <td>${dato.celular}</td>
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
                <a href="listaGeneralVendedor.htm">Regresar a lista</a>
    </body>
</html>