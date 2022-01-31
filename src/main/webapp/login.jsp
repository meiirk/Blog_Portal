
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>The hours</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<%
    String  Email= (String) request.getAttribute("Email");
    String  Password= (String) request.getAttribute("Password");
    String  SignIn= (String) request.getAttribute("Signin");
    String  Registration= (String) request.getAttribute("Registration");
    String  fullName= (String) request.getAttribute("Fullname");
%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-4  offset-4">

            <%
                String emailError=request.getParameter("emailError");
                if(emailError!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Incorrect  <b>email</b> !
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
            </div>
            <%
                }

            %>

            <%
                String passwordError=request.getParameter("passwordError");
                if(passwordError!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                Incorrect  <b>password</b> !
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
            </div>
            <%
                }

            %>


            <form action="/login" method="post">
                <div class="mb-3">
                    <label class="form-label" name="Email"><%=Email%></label>
                    <input type="email" class="form-control" name="email" placeholder="" >
                </div>
                <div class="mb-3">
                    <label class="form-label" name="Password"><%=Password%></label>
                    <input type="password" class="form-control" name="password">
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button class="btn btn-primary"  name="Signin"><%=SignIn%></button>
                    <a class="btn btn-success"  href="/registration"  name="Registration"><%=Registration%></a>


                </div>
            </form>
</div>
    </div>
</div>




</body>
</html>
