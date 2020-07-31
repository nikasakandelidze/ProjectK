<%--
  Created by IntelliJ IDEA.
  User: AzRy
  Date: 7/30/2020
  Time: 12:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>University Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style><%@include file="styles/universityPage.css"%></style>
</head>
<body>

<div class="uni-item" style="float: left; padding-top: 200px">
    <c:forEach items="${allUniversities}" var="university">
        <div class="list-group">
            <a href="/user/addfaculty/${university.id}" style="float:right">
                Add faculty
            </a>
            <a class="list-group-item list-group-item-action" style="border-radius: 10px">
                <h2 style="text-align: center; color:cadetblue;">
                        ${university.universityName}
                </h2>
                <div class="uni-desc">
                    <h4>Description: ${university.descriptions}</h4>
                </div>
                <div class="uni-address">
                    <h4>Address: ${university.city},  ${university.city}</h4>
                </div>
                <p>
                </p>
                <div class="uni-web">
                    <h4>Web Page: ${university.webPageLink}</h4>
                </div>
            </a>
        </div>
    </c:forEach>
</div>
<div class="faculty-list" style="float: left; ">
    <%@include file="facultyListing.jsp"%>
</div>
</body>
</html>