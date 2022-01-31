<%@ page import="DB.News" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DB.Languages" %>
<%@ page import="DB.NewsCategories" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    String Save= (String) request.getAttribute("Save");
    String Delete= (String) request.getAttribute("Delete");


    News news= (News) request.getAttribute("news");


%>

<div class="container">
    <div class="row  mt-5">
        <div class="col-sm-6  offset-3">
            <form action="/edit" method="post">
                <input name="id" type="hidden" value="<%=news.getId()%>">
                <div class="mb-3">
                    <label class="form-label" name="Title" ><%=Title%>:</label>
                    <input  name="title" type="text" class="form-control" value="<%=news.getTitle()%>" >
                </div>
                <div class="mb-3">
                    <label class="form-label" name="Content" ><%=Content%> :</label>
                    <input  name="content" type="text" class="form-control" value="<%=news.getContent()%>" >
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
                <div class="mb-3">
                    <button  class="btn btn-success"  name="Save"><%=Save%></button>
                    <button type="button" class="btn btn-danger " name="Delete"  data-bs-toggle="modal" data-bs-target="#exampleModal">
                       <%=Delete%>
                    </button>
                </div>


            </form>

            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/delete" method="post">
                            <input type="hidden"  class="form-control"  name="id" value="<%=news.getId()%>">
                            <div class="modal-header">

                                <h5 class="modal-title" id="exampleModalLabel">Confirm delete</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                                <button  class="btn btn-danger">Yes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>




</body>

</html>

