<%-- 
    Document   : index.jsp
    Created on : 19 oct 2026, 1:25:27 p.m.
    Author     : Alumno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty lista}">
    <jsp:forward page="SvMercancia" />
</c:if>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Abarrotes</title>
    </head>
    <body>
        
        <h1>Abarrotes</h1>
        
        <c:choose>
            <c:when test="${not empty lista}">
                
                <table border="1">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Foto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="m" items="${lista}">
                            <tr>
                                <td>${m.id}</td>
                                <td>${m.name}</td>
                                <td>${m.precio}</td>
                                <td>
                                    <img src="${m.foto}" alt="${m.name}" width="80" height="80" />
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
            </c:when>
            <c:otherwise>
                <p>No hay mercancia</p>
            </c:otherwise>
        </c:choose>
                
                <h2>Agregar Mercancia</h2>
                <form method="Post" action="SvMercancia">
                    <label>Nombre:
                        <input type="text" name="name" id="name" />
                    </label>
                    
                    <label>Precio
                        <input type="number" name="price" id="price" />
                    </label>
                    
                    <label for="foto">URL de la foto:</label>
                    <input type="text" id="foto" name="foto" required><br><br>
                    
                    <button type="submit">Enviar</button>
                    
                </form>
        
    </body>
</html>
