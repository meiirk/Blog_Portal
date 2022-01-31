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
    String  SignIn= (String) request.getAttribute("Sign in");
    String  Registration= (String) request.getAttribute("Registration");
    String  fullName= (String) request.getAttribute("Fullname");
    String  Registeras= (String) request.getAttribute("Registeras");
    String  Admin= (String) request.getAttribute("Admin");
    String  User= (String) request.getAttribute("User");
    String  Error= (String) request.getAttribute("Error");

%>
<div class="container">
    <div class="row mt-5">
        <div class="col-sm-4  offset-4">

            <%
                String emailError=request.getParameter("emailError");
                if(emailError!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                 <b> <%=Error%></b>
            </div>
            <%
                }

            %>

            <form action="/registration" method="post">
                <div class="mb-3">
                    <label class="form-label" name="Email"><%=Email%></label>
                    <input type="email" class="form-control" name="email" placeholder="" >
                </div>
                <div class="mb-3">
                    <label class="form-label" name="Password"><%=Password%></label>
                    <input type="password" class="form-control" name="password">
                </div>
                <div class="mb-3">
                    <label class="form-label" name="Fullname"><%=fullName%></label>
                    <input type="text" class="form-control" name="full_name">
                </div>
                <div class="mb-3">
                    <label class="form-label" name="Registeras"><%=Registeras%></label>
                    <select class="form-control" name="role_id" >

                        <option value="1"> <%=Admin%> </option>
                        <option value="2"> <%=User%> </option>

                    </select>
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button class="btn btn-primary"  name="Registration"><%=Registration%></button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
