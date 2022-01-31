<%@ page import="DB.News" %>
<%@ page import="java.util.ArrayList" %>

<%@ page import="DB.Comments" %>
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

    String  Comments= (String) request.getAttribute("Comments");
    String  Youareloggedinas= (String) request.getAttribute("Youareloggedinas");
    String  Writeacomment= (String) request.getAttribute("Writeacomment");
    String  Send= (String) request.getAttribute("Send");
    String  Email= (String) request.getAttribute("Email");
    String  Password= (String) request.getAttribute("Password");
    String  Registration= (String) request.getAttribute("Registration");
    String  SignIn= (String) request.getAttribute("Signin");




    ArrayList<News> news= (ArrayList<News>) request.getAttribute("news");
    ArrayList<Comments> comments= (ArrayList<Comments>) request.getAttribute("comments");
%>

     <div class="container">
         <div class="row  mt-5">
             <div class="col-sm-6 ">
                 <%



                     if(news!=null){
                         for (News n:news) {
                             int comment_size=0;
                             if(comments!=null) {
                                 for (Comments c : comments) {
                                     if (c.getNews().getId().equals(n.getId())) {
                                         comment_size++;
                                     }
                                 }
                             }
                             if(language_id==null&&n.getLanguage().getId()==1&&category_id==null){
                 %>
                 <div class="card bg-primary bg-opacity-50" style="width: 35rem;">

                     <div class="card-body">
                         <h5 class="card-title"><%=n.getTitle()%></h5>
                         <p class="card-text"><%=n.getContent()%></p>

                         <div class="accordion accordion-flush" >
                             <div class="accordion-item">

                                 <h2 class="accordion-header" >
                                     <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" >
                                         <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                                     </button>
                                 </h2>
                                 <div id="flush-collapseTwo" class="accordion-collapse collapse" >
                                     <%
                                         if(comments!=null){

                                             for (Comments c:comments) {
                                                 if(n.getId().equals(c.getNews().getId()))   {

                                     %>
                                     <div class="accordion-body">
                                         <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                                         <p><%=c.getComment()%></p>
                                     </div>
                                     <%
                                                 }}
                                         }

                                     %>
                                     <div class="container b-3 " >
                                         <%

                                             if(current_user!=null){
                                         %>
                                         <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                                         <p name="Writeacomment"><%=Writeacomment%></p>
                                         <form action="/addComment" method="post">
                                             <%
                                              if(n!=null)   {
                                             %>
                                             <input type="hidden" name="news_id" value="<%=n.getId()%>">
                                             <div class="mb-3 form-check">
                                             <textarea class="form-control" rows="3" name="comment"></textarea>
                                             </div>
                                             <div class="mb-3 b-3 form-check">
                                             <button class="btn btn-success " name="Send"><%=Send%></button>
                                             </div>
                                             <%
                                                 }

                                             %>
                                         </form>
                                         <%
                                             }
                                         %>
                                     </div>

                                 </div id="flush-collapseOne">

                             </div>
             </div>

         </div>
                 </div>

             </div>
             <%}   else if(language_id!=null){
                                 if(language_id.equals("2")&&n.getLanguage().getId()==2&&category_id==null) {
                                  %>

             <div class="card bg-primary bg-opacity-50" style="width: 35rem;">

                 <div class="card-body">
                     <h5 class="card-title"><%=n.getTitle()%></h5>
                     <p class="card-text"><%=n.getContent()%></p>

                     <div class="accordion accordion-flush" >
                         <div class="accordion-item">

                             <h2 class="accordion-header" >
                                 <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSs" aria-expanded="false" >
                                     <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                                 </button>
                             </h2>
                             <div id="flush-collapseSs" class="accordion-collapse collapse" >
                                 <%
                                     if(comments!=null){

                                         for (Comments c:comments) {
                                             if(n.getId().equals(c.getNews().getId()))   {

                                 %>
                                 <div class="accordion-body">
                                     <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                                     <p><%=c.getComment()%></p>
                                 </div>
                                 <%
                                             }}
                                     }

                                 %>
                                 <div class="container b-3 " >
                                     <%

                                         if(current_user!=null){
                                     %>
                                     <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                                     <p name="Writeacomment"><%=Writeacomment%></p>
                                     <form action="/addComment" method="post">
                                         <%
                                             if(n!=null)   {
                                         %>
                                         <input type="hidden" name="news_id" value="<%=n.getId()%>">
                                         <div class="mb-3 form-check">
                                             <textarea class="form-control" rows="3" name="comment"></textarea>
                                         </div>
                                         <div class="mb-3 b-3 form-check">
                                             <button class="btn btn-success " name="Send"><%=Send%></button>
                                         </div>
                                         <%
                                             }

                                         %>
                                     </form>
                                     <%
                                         }
                                     %>
                                 </div>

                             </div id="flush-collapseOne">

                         </div>
                     </div>

                 </div>
             </div>

         </div>
         <%
             }
                                 if(category_id!=null){
                                 if(language_id.equals("2")&&n.getLanguage().getId()==2&&category_id.equals("1")&&n.getCategories().getId()==1) {
         %>

         <div class="card bg-primary bg-opacity-50" style="width: 35rem;">

             <div class="card-body">
                 <h5 class="card-title"><%=n.getTitle()%></h5>
                 <p class="card-text"><%=n.getContent()%></p>

                 <div class="accordion accordion-flush" >
                     <div class="accordion-item">

                         <h2 class="accordion-header" >
                             <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseS" aria-expanded="false" >
                                 <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                             </button>
                         </h2>
                         <div id="flush-collapseS" class="accordion-collapse collapse" >
                             <%
                                 if(comments!=null){

                                     for (Comments c:comments) {
                                         if(n.getId().equals(c.getNews().getId()))   {

                             %>
                             <div class="accordion-body">
                                 <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                                 <p><%=c.getComment()%></p>
                             </div>
                             <%
                                         }}
                                 }

                             %>
                             <div class="container b-3 " >
                                 <%

                                     if(current_user!=null){
                                 %>
                                 <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                                 <p name="Writeacomment"><%=Writeacomment%></p>
                                 <form action="/addComment" method="post">
                                     <%
                                         if(n!=null)   {
                                     %>
                                     <input type="hidden" name="news_id" value="<%=n.getId()%>">
                                     <div class="mb-3 form-check">
                                         <textarea class="form-control" rows="3" name="comment"></textarea>
                                     </div>
                                     <div class="mb-3 b-3 form-check">
                                         <button class="btn btn-success " name="Send"><%=Send%></button>
                                     </div>
                                     <%
                                         }

                                     %>
                                 </form>
                                 <%
                                     }
                                 %>
                             </div>

                         </div id="flush-collapseOne">

                     </div>
                 </div>

             </div>
         </div>

     </div>
             <%}else  if (language_id.equals("1")&&n.getLanguage().getId()==1&&category_id.equals("1")&&n.getCategories().getId()==1){
                        %>
             <div class="card bg-primary bg-opacity-50" style="width: 35rem;">

                 <div class="card-body">
                     <h5 class="card-title"><%=n.getTitle()%></h5>
                     <p class="card-text"><%=n.getContent()%></p>

                     <div class="accordion accordion-flush" >
                         <div class="accordion-item">

                             <h2 class="accordion-header" >
                                 <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" >
                                     <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                                 </button>
                             </h2>
                             <div id="flush-collapseOne" class="accordion-collapse collapse" >
                                 <%
                                     if(comments!=null){

                                         for (Comments c:comments) {
                                             if(n.getId().equals(c.getNews().getId()))   {

                                 %>
                                 <div class="accordion-body">
                                     <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                                     <p><%=c.getComment()%></p>
                                 </div>
                                 <%
                                             }}
                                     }

                                 %>
                                 <div class="container b-3 " >
                                     <%

                                         if(current_user!=null){
                                     %>
                                     <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                                     <p name="Writeacomment"><%=Writeacomment%></p>
                                     <form action="/addComment" method="post">
                                         <%
                                             if(n!=null)   {
                                         %>
                                         <input type="hidden" name="news_id" value="<%=n.getId()%>">
                                         <div class="mb-3 form-check">
                                             <textarea class="form-control" rows="3" name="comment"></textarea>
                                         </div>
                                         <div class="mb-3 b-3 form-check">
                                             <button class="btn btn-success " name="Send"><%=Send%></button>
                                         </div>
                                         <%
                                             }

                                         %>
                                     </form>
                                     <%
                                         }
                                     %>
                                 </div>

                             </div id="flush-collapseOne">

                         </div>
                     </div>

                 </div>
             </div>

         </div>
             <%
                         }else if(language_id.equals("1")&&n.getLanguage().getId()==1&&category_id.equals("2")&&n.getCategories().getId()==2){
             %>
         <div class="card bg-primary bg-opacity-50" style="width: 35rem;">

             <div class="card-body">
                 <h5 class="card-title"><%=n.getTitle()%></h5>
                 <p class="card-text"><%=n.getContent()%></p>

                 <div class="accordion accordion-flush" >
                     <div class="accordion-item">

                         <h2 class="accordion-header" >
                             <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" >
                                 <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                             </button>
                         </h2>
                         <div id="flush-collapseThree" class="accordion-collapse collapse" >
                             <%
                                 if(comments!=null){

                                     for (Comments c:comments) {
                                         if(n.getId().equals(c.getNews().getId()))   {

                             %>
                             <div class="accordion-body">
                                 <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                                 <p><%=c.getComment()%></p>
                             </div>
                             <%
                                         }}
                                 }

                             %>
                             <div class="container b-3 " >
                                 <%

                                     if(current_user!=null){
                                 %>
                                 <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                                 <p name="Writeacomment"><%=Writeacomment%></p>
                                 <form action="/addComment" method="post">
                                     <%
                                         if(n!=null)   {
                                     %>
                                     <input type="hidden" name="news_id" value="<%=n.getId()%>">
                                     <div class="mb-3 form-check">
                                         <textarea class="form-control" rows="3" name="comment"></textarea>
                                     </div>
                                     <div class="mb-3 b-3 form-check">
                                         <button class="btn btn-success " name="Send"><%=Send%></button>
                                     </div>
                                     <%
                                         }

                                     %>
                                 </form>
                                 <%
                                     }
                                 %>
                             </div>

                         </div id="flush-collapseOne">

                     </div>
                 </div>

             </div>
         </div>

     </div>
<%
}else if(language_id.equals("2")&&n.getLanguage().getId()==2&&category_id.equals("2")&&n.getCategories().getId()==2){
%>
<div class="card bg-primary bg-opacity-50" style="width: 35rem;">

    <div class="card-body">
        <h5 class="card-title"><%=n.getTitle()%></h5>
        <p class="card-text"><%=n.getContent()%></p>

        <div class="accordion accordion-flush" >
            <div class="accordion-item">

                <h2 class="accordion-header" >
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThreee" aria-expanded="false" >
                        <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                    </button>
                </h2>
                <div id="flush-collapseThreee" class="accordion-collapse collapse" >
                    <%
                        if(comments!=null){

                            for (Comments c:comments) {
                                if(n.getId().equals(c.getNews().getId()))   {

                    %>
                    <div class="accordion-body">
                        <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                        <p><%=c.getComment()%></p>
                    </div>
                    <%
                                }}
                        }

                    %>
                    <div class="container b-3 " >
                        <%

                            if(current_user!=null){
                        %>
                        <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                        <p name="Writeacomment"><%=Writeacomment%></p>
                        <form action="/addComment" method="post">
                            <%
                                if(n!=null)   {
                            %>
                            <input type="hidden" name="news_id" value="<%=n.getId()%>">
                            <div class="mb-3 form-check">
                                <textarea class="form-control" rows="3" name="comment"></textarea>
                            </div>
                            <div class="mb-3 b-3 form-check">
                                <button class="btn btn-success " name="Send"><%=Send%></button>
                            </div>
                            <%
                                }

                            %>
                        </form>
                        <%
                            }
                        %>
                    </div>

                </div id="flush-collapseOne">

            </div>
        </div>

    </div>
</div>

</div>

<%

                         }else if(language_id.equals("1")&&n.getLanguage().getId()==1&&category_id.equals("3")&&n.getCategories().getId()==3){
         %>
<div class="card bg-primary bg-opacity-50" style="width: 35rem;">

    <div class="card-body">
        <h5 class="card-title"><%=n.getTitle()%></h5>
        <p class="card-text"><%=n.getContent()%></p>

        <div class="accordion accordion-flush" >
            <div class="accordion-item">

                <h2 class="accordion-header" >
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" >
                        <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                    </button>
                </h2>
                <div id="flush-collapse" class="accordion-collapse collapse" >
                    <%
                        if(comments!=null){

                            for (Comments c:comments) {
                                if(n.getId().equals(c.getNews().getId()))   {

                    %>
                    <div class="accordion-body">
                        <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                        <p><%=c.getComment()%></p>
                    </div>
                    <%
                                }}
                        }

                    %>
                    <div class="container b-3 " >
                        <%

                            if(current_user!=null){
                        %>
                        <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                        <p name="Writeacomment"><%=Writeacomment%></p>
                        <form action="/addComment" method="post">
                            <%
                                if(n!=null)   {
                            %>
                            <input type="hidden" name="news_id" value="<%=n.getId()%>">
                            <div class="mb-3 form-check">
                                <textarea class="form-control" rows="3" name="comment"></textarea>
                            </div>
                            <div class="mb-3 b-3 form-check">
                                <button class="btn btn-success " name="Send"><%=Send%></button>
                            </div>
                            <%
                                }

                            %>
                        </form>
                        <%
                            }
                        %>
                    </div>

                </div id="flush-collapseOne">

            </div>
        </div>

    </div>
</div>


</div>

<%
}else if(language_id.equals("2")&&n.getLanguage().getId()==2&&category_id.equals("3")&&n.getCategories().getId()==3){
%>
<div class="card bg-primary bg-opacity-50" style="width: 35rem;">

    <div class="card-body">
        <h5 class="card-title"><%=n.getTitle()%></h5>
        <p class="card-text"><%=n.getContent()%></p>

        <div class="accordion accordion-flush" >
            <div class="accordion-item">

                <h2 class="accordion-header" >
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThr" aria-expanded="false" >
                        <img src="/img/comment.png" alt="" width="30" height="24" class="d-inline-block align-text-top">    <%= comment_size+" "+Comments%>
                    </button>
                </h2>
                <div id="flush-collapseThr" class="accordion-collapse collapse" >
                    <%
                        if(comments!=null){

                            for (Comments c:comments) {
                                if(n.getId().equals(c.getNews().getId()))   {

                    %>
                    <div class="accordion-body">
                        <b><%=c.getUser().getFull_name()+" "+c.getPost_date()%></b>
                        <p><%=c.getComment()%></p>
                    </div>
                    <%
                                }}
                        }

                    %>
                    <div class="container b-3 " >
                        <%

                            if(current_user!=null){
                        %>
                        <p name="Youareloggedinas"><%=Youareloggedinas%> <b><%=current_user.getFull_name()%></b></p>
                        <p name="Writeacomment"><%=Writeacomment%></p>
                        <form action="/addComment" method="post">
                            <%
                                if(n!=null)   {
                            %>
                            <input type="hidden" name="news_id" value="<%=n.getId()%>">
                            <div class="mb-3 form-check">
                                <textarea class="form-control" rows="3" name="comment"></textarea>
                            </div>
                            <div class="mb-3 b-3 form-check">
                                <button class="btn btn-success " name="Send"><%=Send%></button>
                            </div>
                            <%
                                }

                            %>
                        </form>
                        <%
                            }
                        %>
                    </div>

                </div id="flush-collapseOne">

            </div>
        </div>

    </div>
</div>

</div>


  <%         }} }
    }
    }
             %>
         </div>
     </div>








</body>
</html>