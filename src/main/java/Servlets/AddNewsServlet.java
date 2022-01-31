package Servlets;

import DB.DBManager;
import DB.News;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet( value = "/addNews")
public class AddNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         DBManager.addNews(new News(null,new Date(),  DBManager.getCategory(Long.valueOf(request.getParameter("category_id"))),DBManager.getLanguage(Long.valueOf(request.getParameter("language_id"))),request.getParameter("title"),request.getParameter("content")));
         response.sendRedirect("/adminPanel");
    }
}
