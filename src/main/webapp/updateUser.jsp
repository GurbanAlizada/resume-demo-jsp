<%@ page import="com.company.dao.impl.UserDaoImpl" %>
<%@ page import="com.company.dao.inter.UserDaoInter" %>
<%@ page import="com.company.entity.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Gurban Alizada
  Date: 13/07/2022
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update User</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="updateUser.css">
</head>
<body>

<%
    Integer userId = Integer.parseInt(request.getParameter("id"));
    UserDaoInter dao = new UserDaoImpl();
    List<User> users = dao.getAllUser();
    User u = dao.getById(userId);
%>

<form action = "updateUser" method="post">



    <div class="updateUserDashboard">
    <input type="hidden"  name = "id" value="<%=u.getId()%>">
    <div class="form-group">
        <label>Name : </label>
        <input class="form-control" name="name" type="text" value="<%=u.getName()%>">
    </div  >

    <div class="form-group">
        <label>Surname : </label>
        <input class="form-control"  name="surname" type="text"value="<%=u.getSurName()%>">
    </div>

    <div class="form-group">
        <label>Email : </label>
        <input class="form-control" name = "email" type="text" value="<%=u.getEmail()%>" >
    </div>


        <div class="form-group">
            <label>Phone : </label>
            <input class="form-control" name="phone" type="text" value="<%=u.getPhone()%> " ></input>
        </div>
    </div>

    <button   class="btn btn-primary" name="submit" type="submit" >Submit </button>

</form>



</body>
</html>
