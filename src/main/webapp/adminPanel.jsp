<%@ page import="DB.News" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DB.Languages" %>
<%@ page import="DB.NewsCategories" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <title>The hours</title>
    <%@include file="vendor/head.jsp"%>
</head>
<body>
<%@include file="vendor/navbar.jsp"%>
<%

String Add= (String) request.getAttribute("Add");
String Title= (String) request.getAttribute("Title");
String Postdate= (String) request.getAttribute("Postdate");
String Language= (String) request.getAttribute("Language");
String Details= (String) request.getAttribute("Details");
String Addnews= (String) request.getAttribute("Addnews");
String Cancel= (String) request.getAttribute("Cancel");
String Content= (String) request.getAttribute("Content");
String Category= (String) request.getAttribute("Category");

    ArrayList<News> news= (ArrayList<News>) request.getAttribute("news");


%>

<div class="container">
    <div class="row  mt-5">
        <div class="col-sm-12">

                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    + <%=Add%>
                </button>


                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col" >ID</th>
                        <th scope="col" name="Title"><%=Title%></th>
                        <th scope="col" name="Postdate"><%=Postdate%></th>
                        <th scope="col" name="Language"><%=Language%></th>
                        <th scope="col" name="Details"><%=Details%></th>
                    </tr>
                    </thead>
                    <%
                        if(news!=null){
                            for (News n:news) {
                    %>
                    <tbody>
                    <tr>
                        <th scope="row"><%=n.getId()%></th>
                        <td><%=n.getTitle()%></td>
                        <td><%=n.getPost_date()%></td>
                        <td><%=n.getLanguage().getName()+ "-"+ n.getLanguage().getCode()%></td>
                        <td>  <a class="btn btn-primary"  href="/edit?id=<%=n.getId()%>" name="Details"><%=Details%></a></td>
                    </tr>
                    <%

                            }
                        }
                    %>
                    </tbody>

                </table>
            </div>
        </div>
    </div>



            <div class="modal" tabindex="-1" id="exampleModal" >

                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" name="Addnews"><%=Addnews%></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="/addNews" method="post">
                                <div class="mb-3">
                                    <label class="form-label" name="Title"><%=Title%>:</label>
                                    <input  name="title" type="text" class="form-control" >
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" name="Content"><%=Content%> :</label>
                                    <input  name="content" type="text" class="form-control" >
                                </div>

                                <div class="mb-3">
                                    <label class="form-label" name="Language"><%=Language%> :</label>
                                    <select class="form-control" name="language_id" >
                                        <%
                                            ArrayList<Languages> languages= (ArrayList<Languages>) request.getAttribute("languages");
                                            if(languages!=null){
                                                for (Languages l: languages ) {
                                        %>
                                        <option value="<%=l.getId()%>"> <%=l.getName()  %> </option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="mb-3">
                                    <label class="form-label" name="Category"><%=Category%> :</label>
                                    <select class="form-control" name="category_id" >
                                        <%
                                            ArrayList<NewsCategories> newsCategories= (ArrayList<NewsCategories>) request.getAttribute("newsCategories");
                                            if(newsCategories!=null){
                                                for (NewsCategories nc: newsCategories ) {
                                        %>
                                        <option value="<%=nc.getId()%>"> <%=nc.getName()  %> </option>
                                        <%
                                                }
                                            }
                                        %>
                                    </select>
                                </div>


                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" name="Cancel"><%=Cancel%>></button>
                                    <button  class="btn btn-primary" name="Addnews"><%=Addnews%>
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>

            </div>



</body>

</html>
