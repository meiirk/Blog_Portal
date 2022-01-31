<%@ page import="DB.Users" %>
<%
    String  Home= (String) request.getAttribute("Home");
    String  World= (String) request.getAttribute("World");
    String  Technologies= (String) request.getAttribute("Technologies");
    String  Science= (String) request.getAttribute("Science");
    String  Signin= (String) request.getAttribute("Signin");
    String Profile=(String) request.getAttribute("Profile");
    String Signout=(String) request.getAttribute("Signout");
    String AdminPanel=(String) request.getAttribute("AdminPanel");

    String  category_id= (String) request.getAttribute("category_id");
    String language_id= (String) request.getAttribute("language_id");
    String loginPage_lang= (String) request.getAttribute("loginPage_lang");
    String profile_lang= (String) request.getAttribute("profile_lang");
    String admin_language= (String) request.getAttribute("admin_language");


%>

<%
  Users current_user= (Users) request.getSession().getAttribute("CURRENT_USER");
%>
<nav class="navbar navbar-expand-lg  navbar-dark bg-primary  "  >
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="/img/logoImage.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
            THE HOURS
        </a>
       <%
           if(current_user==null){
             %>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <%
               if(language_id==null){
       %>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                </li>
            </ul>

            </ul>

            <%}else if(language_id!=null){
                   if(language_id.equals("1")){
                   %>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                </li>
            </ul>
            <%
                }else if(language_id.equals("2")){
            %>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?language_id=<%="2"%>" name="Home"><%=Home%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>" name="World"><%=World%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>" name="Technologies"><%=Technologies%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>" name="Science"><%=Science%></a>
                </li>
            </ul>

              <%
                      }  }if(category_id==null&&language_id==null){
            %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                } }   else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
                <%
                    } } if(language_id!=null){
      if(category_id==null&&language_id.equals("2")){
                %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="2"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }}     else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    } }
                    %>

            <%
                if(category_id!=null){
                 if(category_id.equals("1")&&language_id.equals("1")){
                %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }  }   else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    } }
             else if(category_id.equals("1")&&language_id.equals("2")){
            %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="2"%>" name="Signin" ><%=Signin%></a>
                        <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }}     else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                        } }     if(category_id.equals("2")&&language_id.equals("1")) {
            %>
            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }    } else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    } }
             else if(category_id.equals("2")&&language_id.equals("2")) {
            %>
            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="2"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }   }  else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    } }
            else if(category_id.equals("3")&&language_id.equals("1")) {
            %>
            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }    } else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    }
            }else if(category_id.equals("3")&&language_id.equals("2")) {
            %>
            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="2"%>" name="Signin" ><%=Signin%></a>
                </li>
                <%
                    if(loginPage_lang!=null){
                        if(loginPage_lang.equals("1")||loginPage_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/login?loginPage_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/login?loginPage_lang=<%="2"%>">RUS</a>
                </li>
                <%
                }    } else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%

                        }   }}
            }
            }
                else if(current_user.getRole_id().equals("2")){
        %>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <%
                if(language_id==null){
            %>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" name="Profile"><%=Profile%></a>
                </li>
           </ul>
            <% }if(language_id!=null){
                if(language_id.equals("1")){
            %>

            <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" name="Profile"><%=Profile%></a>
                </li>
            </ul>
            <%
            }else if(language_id.equals("2")){
            %>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?language_id=<%="2"%>" name="Home"><%=Home%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>" name="World"><%=World%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>" name="Technologies"><%=Technologies%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>" name="Science"><%=Science%></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="2"%>" name="Profile"><%=Profile%></a>
                </li>
            </ul>

            <%
                    }  }if(category_id==null&&language_id==null){
            %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                </li>

                <%
                    if(profile_lang!=null){
                        if(profile_lang.equals("1")||profile_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                </li>
                <%
                    } }   else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    } } if(language_id!=null){
                if(category_id==null&&language_id.equals("2")){
            %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                </li>

                <%
                    if(profile_lang!=null){
                        if(profile_lang.equals("1")||profile_lang.equals("2")){

                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                </li>
                <%
                    }}     else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?language_id=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                </li>
            </ul>
            <%
                    } }
            %>

            <%
                if(category_id!=null){
                    if(category_id.equals("1")&&language_id.equals("1")){
            %>

            <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                <%
                    }  }   else{
                %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>
            <%
                } }
            else if(category_id.equals("1")&&language_id.equals("2")){
            %>

                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                <%
                    }}     else{
                %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>
            <%
                    } }     if(category_id.equals("2")&&language_id.equals("1")) {
            %>
                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                <%
                    }    } else{
                %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>
            <%
                } }
            else if(category_id.equals("2")&&language_id.equals("2")) {
            %>
                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                <%
                    }   }  else{
                %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>

            <%
                } }
            else if(category_id.equals("3")&&language_id.equals("1")) {
            %>
                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                <%
                    }    } else{
                %>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" >ENG</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>">RUS</a>


                </li>
            </ul>
            <%
                }
            }else if(category_id.equals("3")&&language_id.equals("2")) {
            %>
                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%=language_id%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                <%
                    }    } else{
                %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>
        </div>
                <%

                        }   }}
            }
                     }else if(current_user.getRole_id().equals("1")){
           %>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <%
                    if(language_id==null&&profile_lang==null&&admin_language==null){
                %>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="1"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>




                </ul>

                <%
                    }else if(language_id!=null) {
                    if(language_id.equals("1")){
                %>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="1"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>
                </ul>
                <%
                }  else  if(language_id.equals("2")){
                %>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?language_id=<%="2"%>" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="2"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="2"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>
                </ul>

                <%
                    }
                    }else if(admin_language!=null){
                        if(admin_language.equals("1")){
                %>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="1"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>
                </ul>
                <%
                } else if(admin_language.equals("2")){
                %>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?language_id=<%="2"%>" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="2"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="2"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>
                </ul>
           <%
           }}else if(profile_lang!=null) {
                if(profile_lang.equals("1")){
                %>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="1"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>
                </ul>
                <%
                }  else  if(profile_lang.equals("2")){
                %>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-center" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?language_id=<%="2"%>" name="Home"><%=Home%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>" name="World"><%=World%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>" name="Technologies"><%=Technologies%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>" name="Science"><%=Science%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="2"%>" name="Profile"><%=Profile%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/adminPanel?admin_language=<%="2"%>" name="AdminPanel"><%=AdminPanel%></a>
                    </li>
                </ul>
                <%
                        }
                    }
                   if(category_id==null&&language_id==null){
                %>

                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%="1"%>" name="Signout"><%=Signout%></a>
                    </li>

                    <% if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                    <%
                        } } else if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                                %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                    </li>
                    <%
                        } } else{

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>
                <%
                        } } if(language_id!=null){
                        if(category_id==null&&language_id.equals("2")){
                %>

                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/out?language_id=<%="2"%>" name="Signout"><%=Signout%></a>
                    </li>

                    <%
                        if(profile_lang!=null){
                            if(profile_lang.equals("1")||profile_lang.equals("2")){

                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                    </li>
                    <%
                        }}
                       else   if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                    </li>
                    <%
                    }}else{
                    %>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/home?language_id=<%="1"%>" >ENG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/home?language_id=<%="2"%>">RUS</a>
                    </li>
                </ul>
                <%
                        } }
                %>

                <%
                    if(category_id!=null){
                        if(category_id.equals("1")&&language_id.equals("1")){
                %>

                <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                    <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/out?language_id=<%="1"%>" name="Signout"><%=Signout%></a>
                        </li>

                        <%
                            if(profile_lang!=null){
                                if(profile_lang.equals("1")||profile_lang.equals("2")){

                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                        </li>
                        <%}}  else  if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                        </li>
                        <%
                                    }}
                              else{
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>">RUS</a>
                        </li>
                    </ul>
                        <%
                }
                              }
                              if(category_id.equals("1")&&language_id.equals("2")){
            %>

                    <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/out?language_id=<%="2"%>" name="Signout"><%=Signout%></a>
                        </li>

                        <% if(profile_lang!=null){
                                if(profile_lang.equals("1")||profile_lang.equals("2")){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                        </li>
                        <%
                        }} else if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                        </li>
                        <%
                            }
                        }  else{
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home?category_id=<%="1"%>&&language_id=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home?category_id=<%="1"%>&&language_id=<%="2"%>">RUS</a>
                        </li>
                    </ul>
                        <%
                    } }     if(category_id.equals("2")&&language_id.equals("1")) {
            %>
                    <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/out?language_id=<%="1"%>" name="Signout"><%=Signout%></a>
                        </li>

                        <%
                            if(profile_lang!=null){
                if(profile_lang.equals("1")||profile_lang.equals("2")){


                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                        </li>
                        <%
                        }} else if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                        </li>
                        <%
                            }}else{
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>">RUS</a>
                        </li>
                    </ul>
                        <%
                } } else if(category_id.equals("2")&&language_id.equals("2")) {
            %>
                    <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/out?language_id=<%="2"%>" name="Signout"><%=Signout%></a>
                        </li>

                        <%
                            if(profile_lang!=null){
                   if(profile_lang.equals("1")||profile_lang.equals("2")){


                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                        </li>
                        <%
                        }} else if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                        </li>
                        <%
                            }}  else{
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home?category_id=<%="2"%>&&language_id=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home?category_id=<%="2"%>&&language_id=<%="2"%>">RUS</a>
                        </li>
                    </ul>

                        <%
                } }
            else if(category_id.equals("3")&&language_id.equals("1")) {
            %>
                    <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/out?language_id=<%="1"%>" name="Signout"><%=Signout%></a>
                        </li>

                        <%
                            if(profile_lang!=null) {
                                if(profile_lang.equals("1")||profile_lang.equals("2")){

                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                        </li>
                        <%
                        } }else if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2")){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                        </li>
                        <%
                            }} else{
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>">RUS</a>


                        </li>
                    </ul>
                        <% } }
                 if (category_id.equals("3")&&language_id.equals("2"))  {
                      %>
                    <ul class="navbar-nav mb-2 mb-lg-0 justify-content-end" >
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/out?language_id=<%="2"%>" name="Signout"><%=Signout%></a>
                        </li>

                        <% if (profile_lang!=null ) {
                                if(profile_lang.equals("1")||profile_lang.equals("2")){

                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/profile?profile_lang=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/profile?profile_lang=<%="2"%>">RUS</a>
                        </li>
                        <%
                        }} else  if(admin_language!=null) {
                            if(admin_language.equals("1")||admin_language.equals("2") ){
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="adminPanel?admin_language=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/adminPanel?admin_language=<%="2"%>">RUS</a>
                        </li>
                        <%
                            }} else{
                        %>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/home?category_id=<%="3"%>&&language_id=<%="1"%>" >ENG</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/home?category_id=<%="3"%>&&language_id=<%="2"%>">RUS</a>
                        </li>
                    </ul>
            </div>
            <%
                } }
                }}}

            %>

</div>
    </div>

</nav>