
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The Hours</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>

<%
    String  Email= (String) request.getAttribute("Email");
    String  Password= (String) request.getAttribute("Password");
    String Fullname=(String) request.getAttribute("Fullname");
    String Save=(String) request.getAttribute("Save");
    Users users= (Users) request.getSession().getAttribute("CURRENT_USER");

%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-4  offset-4">

            <form action="/profile" method="post">
                <input type="hidden" value="<%=users.getId()%>" name="id">
                <div class="mb-3">
                    <label class="form-label" name="Password"><%=Password%></label>
                    <input type="password" class="form-control" name="password"  value="<%=users.getPassword()%>">
                </div>
                <div class="mb-3">
                    <label class="form-label" name="Fullname" ><%=Fullname%></label>
                    <input type="text" class="form-control" name="fullname" value="<%=users.getFull_name()%>">
                </div>
                <button class="btn btn-success form-control"  name="Save"><%=Save%></button>

            </form>
        </div>
    </div>
</div>



</body>
</html>
