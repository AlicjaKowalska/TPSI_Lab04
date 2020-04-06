
<%-- 
    Document   : hello
    Created on : 2020-04-04, 00:03:46
    Author     : alicj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <!Wyrażenie EL formatuje tekst, a JSTL tylko go wyswietla> 
    <h1>JSTL: Witaj, <c:out value="${person.firstName} ${person.lastName}"/>!</h1>  <!JSTL>
    <h1>EL: Witaj, ${person.firstName} ${person.lastName}!</h1>                     <!EL>
    <h1><a href="mailto:${person.email}">${person.email}</a></h1>

    <c:forEach items="${dniTygodnia}" var="dzien">
        <p>
            ${dzien}
        </p>
    </c:forEach>
</body>
</html>
