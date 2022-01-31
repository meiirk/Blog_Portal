package Servlets;

import DB.DBManager;
import DB.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet( value = "/registration")
public class RegistrationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("Home", Translations.translations.get(0).get(0));
        request.setAttribute("World", Translations.translations.get(0).get(1));
        request.setAttribute("Technologies", Translations.translations.get(0).get(2));
        request.setAttribute("Science", Translations.translations.get(0).get(3));
        request.setAttribute("Signin", Translations.translations.get(0).get(4));
        request.setAttribute("Posted at", Translations.translations.get(0).get(5));
        request.setAttribute("Comments", Translations.translations.get(0).get(6));
        request.setAttribute("Email", Translations.translations.get(0).get(7));
        request.setAttribute("Password", Translations.translations.get(0).get(8));
        request.setAttribute("Registration", Translations.translations.get(0).get(9));
        request.setAttribute("Profile", Translations.translations.get(0).get(10));
        request.setAttribute("Signout", Translations.translations.get(0).get(11));
        request.setAttribute("Youareloggedinas", Translations.translations.get(0).get(12));
        request.setAttribute("Writeacomment", Translations.translations.get(0).get(13));
        request.setAttribute("Send", Translations.translations.get(0).get(14));
        request.setAttribute("Fullname", Translations.translations.get(0).get(15));
        request.setAttribute("Save", Translations.translations.get(0).get(16));
        request.setAttribute("AdminPanel", Translations.translations.get(0).get(17));
        request.setAttribute("Admin", Translations.translations.get(0).get(18));
        request.setAttribute("User", Translations.translations.get(0).get(19));
        request.setAttribute("Registeras", Translations.translations.get(0).get(20));
        request.setAttribute("Error", Translations.translations.get(0).get(21));

        int defaulte_lang = 1;
        request.setAttribute("defaulte_lang", defaulte_lang);
        Cookie Home = new Cookie("Home", request.getParameter("Home"));
        Cookie World = new Cookie("World", request.getParameter("World"));
        Cookie Technologies = new Cookie("Technologies", request.getParameter("Technologies"));
        Cookie Science = new Cookie("Science", request.getParameter("Science"));
        Cookie Signin = new Cookie("Signin", request.getParameter("Signin"));
        Cookie Postedat = new Cookie("Postedat", request.getParameter("Postedat"));
        Cookie Email = new Cookie("Email", request.getParameter("Email"));
        Cookie Password = new Cookie("Password", request.getParameter("Password"));
        Cookie Comments = new Cookie("Comments", request.getParameter("Comments"));
        Cookie Registration = new Cookie("Registration", request.getParameter("Registration"));
        Cookie Profile = new Cookie("Profile", request.getParameter("Profile"));
        Cookie Signout = new Cookie("Signout", request.getParameter("Signout"));
        Cookie Youareloggedinas = new Cookie("Youareloggedinas", request.getParameter("Youareloggedinas"));
        Cookie Writeacomment = new Cookie("Writeacomment", request.getParameter("Writeacomment"));
        Cookie Send = new Cookie("Send", request.getParameter("Send"));
        Cookie Fullname = new Cookie("Fullname", request.getParameter("Fullname"));
        Cookie Save = new Cookie("Save", request.getParameter("Save"));
        Cookie AdminPanel = new Cookie("AdminPanel", request.getParameter("AdminPanel"));
        Cookie Admin = new Cookie("Admin", request.getParameter("Admin"));
        Cookie User = new Cookie("User", request.getParameter("User"));
        Cookie Registeras = new Cookie("Registeras", request.getParameter("Registeras"));
        Cookie Error = new Cookie("Error", request.getParameter("Error"));


        Cookie cookies[] = {Home, World, Technologies, Science, Signin, Postedat, Email, Password, Comments, Registration, Profile, Signout, Youareloggedinas, Writeacomment, Send, Fullname, Save, AdminPanel, Admin, User, Registeras, Error};

        for (Cookie c : cookies) {
            c.setMaxAge(3 * 30 * 24 * 3600);

        }
        response.addCookie(Home);
        response.addCookie(World);
        response.addCookie(Technologies);
        response.addCookie(Science);
        response.addCookie(Signin);
        response.addCookie(Postedat);
        response.addCookie(Comments);
        response.addCookie(Email);
        response.addCookie(Password);
        response.addCookie(Registration);
        response.addCookie(Profile);
        response.addCookie(Signout);
        response.addCookie(Youareloggedinas);
        response.addCookie(Writeacomment);
        response.addCookie(Send);
        response.addCookie(Fullname);
        response.addCookie(Save);
        response.addCookie(AdminPanel);
        response.addCookie(Admin);
        response.addCookie(User);
        response.addCookie(Registeras);
        response.addCookie(Error);


        request.getRequestDispatcher("/registration.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String full_name = request.getParameter("full_name");
        String role_id = request.getParameter("role_id");

        Users user = new Users(null, email, password, full_name, role_id);
        ArrayList<Users> users = DBManager.getUsers();
        String redirect = "/login";
        for (Users u : users) {
            if (u.getEmail().equals(email)) {
                redirect = "/registration?emailError";
            }

        }
        if (redirect.equals("/login")) {
            DBManager.addUser(user);
        }
        response.sendRedirect(redirect);


    }
}
