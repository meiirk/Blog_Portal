package Servlets;

import DB.Comments;
import DB.DBManager;
import DB.News;
import DB.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet( value = "/addComment")
public class AddCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int defaulte_lang=1;
        request.setAttribute("defaulte_lang",defaulte_lang);
        ArrayList<Comments>comments= DBManager.getComments();
        request.setAttribute("comments",comments);


        ArrayList<News> news= DBManager.getNews();
        request.setAttribute("news",news);
        Users user  = (Users) request.getSession().getAttribute("CURRENT_USER");
        Long news_id= Long.valueOf(request.getParameter("news_id"));
        News news1=DBManager.getNews(news_id);


        DBManager.addComment(new Comments(null,request.getParameter("comment"),new Date(),user, news1));
        response.sendRedirect("/home");


    }
}
