<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: DUONG TIEU
  Date: 5/10/2023
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creat a new Customer</title>
</head>
<body>
<h1>Welcome, enter the customer details</h1>
<form:form method="post" action="addCustomer" modelAttribute="customer">
  <table>
    <tr>
      <td><form:label path="id">Customer id: </form:label></td>
      <td><form:input path="id"/></td>
    </tr>
    <tr>
      <td><form:label path="name">Name customer</form:label></td>
      <td><form:input path="name"/></td>
    </tr>
    <tr>
      <td><form:label path="telephone">Telephone customer</form:label></td>
      <td><form:input path="telephone"/></td>
    </tr>
    <tr>
      <td><form:button value="create"/></td>
    </tr>
  </table>
</form:form>
</body>
</html>
