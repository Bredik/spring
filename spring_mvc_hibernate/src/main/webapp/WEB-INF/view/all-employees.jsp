<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Bredik
  Date: 14.04.2021
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Employees</title>
</head>
<body>
<h1>Все работники</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
    <!-- var="emp" -> временная переменная для каждой сущности
         items="allEmps" -> атрибут модели переданное из контроллера-->
    <c:forEach var="emp" items="${allEmployees}">

        <!-- создаем линк по коорому мы будем проходить при нажатии на
        кнопку update
        var="updateButton" - название кнопки
        value="/updateInfo" - ссылка на котроллер
        name="empId" - который мы бедм передавать дальше
        value=emp.id - id который мы взяли из emp -->
       <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}" />
        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}" />
        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <!-- при нажатии на кнопку мы переходим на updateButton
                     updateButton - это линк выше -->
                <input type="button" value="обновить"
                       onclick="window.location.href = '${updateButton}'">
            </td>
            <td>
                <!-- при нажатии на кнопку мы переходим на updateButton
                     updateButton - это линк выше -->
                <input type="button" value="удалить"
                       onclick="window.location.href = '${deleteButton}'">
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<!-- window.location.href='addNewEmp' -> переходим на контроллер addNewEmp -->
<input type="button" value="Add"
       onclick="window.location.href='addNewEmp'"/>

</body>
</html>
