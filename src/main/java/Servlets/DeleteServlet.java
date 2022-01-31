package Servlets;

import DB.DBManager;
import DB.News;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet( value = "/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id= Long.parseLong(request.getParameter("id"));

        News news = DBManager.getNews(id);


        if (DBManager.deleteNews(news)){
            response.sendRedirect("/");
        }else {
            response.sendRedirect("/edit?id="+news.getId());
        }

    }

}
