<%--
  Created by IntelliJ IDEA.
  User: Gurban Alizada
  Date: 13/07/2022
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</head>
<body>




<div >
<form action = "addUser" method="post" >

    <div class="form-group" style ="margin: 100px">
        <label>Name : </label>
        <input  class="form-control" name="name" type="text" value="">
    </div>


    <div class="form-group">
        <label>Surname : </label>
        <input   class="form-control" name="surname" type="text" value="">
    </div>


    <div class="form-group">
        <label>Email : </label>
        <input  class="form-control" name="email" type="text" value="">
    </div>

    <div class="form-group">
        <label>Phone : </label>
        <input  class="form-control" name="phone" type="text" value="">
    </div>

   <div>
       <button   class="btn btn-primary" name="submit" type="submit" >Submit </button>
   </div>

</form>
</div>




</body>
</html>
