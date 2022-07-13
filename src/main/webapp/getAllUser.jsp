<%@ page import="com.company.dao.impl.UserDaoImpl" %>
<%@ page import="com.company.dao.inter.UserDaoInter" %>
<%@ page import="com.company.entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Gurban Alizada
  Date: 13/07/2022
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>

<%
     UserDaoInter dao = new UserDaoImpl();
     List<User> list = dao.getAllUser();

%>
<table class="table">
    <tr>

        <th>Id</th>
        <th>Name</th>
        <th>Surname</th>
        <th>Email</th>
        <th>Phone</th>
        <%
            for(User u : list){
        %>
    </tr>
    <tr>

        <td> <%=u.getId()%> </td>
        <td><%=u.getName()%></td>
        <td><%=u.getSurName()%></td>
        <td><%=u.getEmail()%></td>
        <td><%=u.getPhone()%></td>

        <%
            }
        %>

    </tr>

</table>



</body>
</html>
