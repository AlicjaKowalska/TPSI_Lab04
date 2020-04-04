<%-- 
    Document   : personList
    Created on : 2020-04-04, 18:31:09
    Author     : alicj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista osób</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Imie</th>
                    <th>Nazwisko</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${people}" var="person">
                <tr>
                    <td><c:out value="${person.firstName}"/></td>
                <td><c:out value="${person.lastName}"/></td>
                <td><c:out value="${person.email}"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
