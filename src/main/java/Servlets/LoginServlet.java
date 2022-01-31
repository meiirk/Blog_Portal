package Servlets;

import DB.DBManager;
import DB.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet( value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String loginPage_lang=request.getParameter("loginPage_lang");
        request.setAttribute("loginPage_lang",loginPage_lang);




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
            request.setAttribute("Add", Translations.translations.get(0).get(22));
            request.setAttribute("Title", Translations.translations.get(0).get(23));
            request.setAttribute("Postdate", Translations.translations.get(0).get(24));
            request.setAttribute("Language", Translations.translations.get(0).get(25));
            request.setAttribute("Details", Translations.translations.get(0).get(26));
            request.setAttribute("Addnews", Translations.translations.get(0).get(27));
            request.setAttribute("Cancel", Translations.translations.get(0).get(28));
            request.setAttribute("Content", Translations.translations.get(0).get(29));
            request.setAttribute("Category", Translations.translations.get(0).get(30));
            request.setAttribute("Delete", Translations.translations.get(0).get(31));




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
            Cookie Add = new Cookie("Add", request.getParameter("Add"));
            Cookie Title = new Cookie("Title", request.getParameter("Title"));
            Cookie Postdate = new Cookie("Postdate", request.getParameter("Postdate"));
            Cookie Language = new Cookie("Language", request.getParameter("Language"));
            Cookie Details = new Cookie("Details", request.getParameter("Details"));
            Cookie Addnews = new Cookie("Addnews", request.getParameter("Addnews"));
            Cookie Cancel = new Cookie("Cancel", request.getParameter("Cancel"));
            Cookie Content = new Cookie("Content", request.getParameter("Content"));
            Cookie Category = new Cookie("Category", request.getParameter("Category"));
            Cookie Delete = new Cookie("Delete", request.getParameter("Delete"));


            Cookie cookies[] = {Home, World, Technologies, Science, Signin, Postedat, Email, Password, Comments, Registration, Profile, Signout, Youareloggedinas, Writeacomment, Send, Fullname, Save, AdminPanel, Admin, User, Registeras, Error, Add, Title, Postdate, Language, Details, Addnews, Cancel, Content, Category, Delete};

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
            response.addCookie(Add);
            response.addCookie(Title);
            response.addCookie(Postdate);
            response.addCookie(Language);
            response.addCookie(Details);
            response.addCookie(Addnews);
            response.addCookie(Cancel);
            response.addCookie(Content);
            response.addCookie(Category);
            response.addCookie(Delete);

         if(loginPage_lang!=null) {
             if (loginPage_lang.equals("2")) {


                 Cookie cookiess[] = request.getCookies();
                 String Home_ = null;
                 String World_ = null;
                 String Technologies_ = null;
                 String Science_ = null;
                 String Signin_ = null;
                 String Postedat_ = null;
                 String Email_ = null;
                 String Password_ = null;
                 String Comments_ = null;
                 String Registration_ = null;
                 String Profile_ = null;
                 String Signout_ = null;
                 String Youareloggedinas_ = null;
                 String Writeacomment_ = null;
                 String Send_ = null;
                 String Fullname_ = null;
                 String Save_ = null;
                 String AdminPanel_ = null;
                 String Admin_ = null;
                 String User_ = null;
                 String Registeras_ = null;
                 String Error_ = null;
                 String Add_ = null;
                 String Title_ = null;
                 String Postdate_ = null;
                 String Language_ = null;
                 String Details_ = null;
                 String Addnews_ = null;
                 String Cancel_ = null;
                 String Content_ = null;
                 String Category_ = null;
                 String Delete_ = null;


                 if (cookiess != null) {
                     for (Cookie c : cookiess) {


                         if (c.getName().equals("Home")) {
                             Home_ = Translations.translations.get(1).get(0);
                         } else if (c.getName().equals("World")) {
                             World_ = Translations.translations.get(1).get(1);
                         } else if (c.getName().equals("Technologies")) {
                             Technologies_ = Translations.translations.get(1).get(2);
                         } else if (c.getName().equals("Science")) {
                             Science_ = Translations.translations.get(1).get(3);
                         } else if (c.getName().equals("Signin")) {
                             Signin_ = Translations.translations.get(1).get(4);
                         } else if (c.getName().equals("Postedat")) {
                             Postedat_ = Translations.translations.get(1).get(5);
                         } else if (c.getName().equals("Email")) {
                             Email_ = Translations.translations.get(1).get(7);
                         } else if (c.getName().equals("Password")) {
                             Password_ = Translations.translations.get(1).get(8);
                         } else if (c.getName().equals("Comments")) {
                             Comments_ = Translations.translations.get(1).get(6);
                         } else if (c.getName().equals("Registration")) {
                             Registration_ = Translations.translations.get(1).get(9);
                         } else if (c.getName().equals("Profile")) {
                             Profile_ = Translations.translations.get(1).get(10);
                         } else if (c.getName().equals("Signout")) {
                             Signout_ = Translations.translations.get(1).get(11);
                         } else if (c.getName().equals("Youareloggedinas")) {
                             Youareloggedinas_ = Translations.translations.get(1).get(12);
                         } else if (c.getName().equals("Writeacomment")) {
                             Writeacomment_ = Translations.translations.get(1).get(13);
                         } else if (c.getName().equals("Send")) {
                             Send_ = Translations.translations.get(1).get(14);
                         } else if (c.getName().equals("Fullname")) {
                             Fullname_ = Translations.translations.get(1).get(15);
                         } else if (c.getName().equals("Save")) {
                             Save_ = Translations.translations.get(1).get(16);
                         } else if (c.getName().equals("AdminPanel")) {
                             AdminPanel_ = Translations.translations.get(1).get(17);
                         } else if (c.getName().equals("Admin")) {
                             Admin_ = Translations.translations.get(1).get(18);
                         } else if (c.getName().equals("User")) {
                             User_ = Translations.translations.get(1).get(19);
                         } else if (c.getName().equals("Registeras")) {
                             Registeras_ = Translations.translations.get(1).get(20);
                         } else if (c.getName().equals("Error")) {
                             Error_ = Translations.translations.get(1).get(21);
                         } else if (c.getName().equals("Add")) {
                             Add_ = Translations.translations.get(1).get(22);
                         } else if (c.getName().equals("Title")) {
                             Title_ = Translations.translations.get(1).get(23);
                         } else if (c.getName().equals("Postdate")) {
                             Postdate_ = Translations.translations.get(1).get(24);
                         } else if (c.getName().equals("Language")) {
                             Language_ = Translations.translations.get(1).get(25);
                         } else if (c.getName().equals("Details")) {
                             Details_ = Translations.translations.get(1).get(26);
                         } else if (c.getName().equals("Addnews")) {
                             Addnews_ = Translations.translations.get(1).get(27);
                         } else if (c.getName().equals("Cancel")) {
                             Cancel_ = Translations.translations.get(1).get(28);
                         } else if (c.getName().equals("Content")) {
                             Content_ = Translations.translations.get(1).get(29);
                         } else if (c.getName().equals("Category")) {
                             Category_ = Translations.translations.get(1).get(30);
                         } else if (c.getName().equals("Delete")) {
                             Delete_ = Translations.translations.get(1).get(31);
                         }

                     }

                 }


                 request.setAttribute("Home", Home_);
                 request.setAttribute("World", World_);
                 request.setAttribute("Technologies", Technologies_);
                 request.setAttribute("Science", Science_);
                 request.setAttribute("Signin", Signin_);
                 request.setAttribute("Postedat", Postedat_);
                 request.setAttribute("Email", Email_);
                 request.setAttribute("Password", Password_);
                 request.setAttribute("Comments", Comments_);
                 request.setAttribute("Registration", Registration_);
                 request.setAttribute("Profile", Profile_);
                 request.setAttribute("Signout", Signout_);
                 request.setAttribute("Youareloggedinas", Youareloggedinas_);
                 request.setAttribute("Writeacomment", Writeacomment_);
                 request.setAttribute("Send", Send_);
                 request.setAttribute("Fullname", Fullname_);
                 request.setAttribute("Save", Save_);
                 request.setAttribute("AdminPanel", AdminPanel_);
                 request.setAttribute("Admin", Admin_);
                 request.setAttribute("User", User_);
                 request.setAttribute("Registeras", Registeras_);
                 request.setAttribute("Error", Error_);
                 request.setAttribute("Add", Add_);
                 request.setAttribute("Title", Title_);
                 request.setAttribute("Postdate", Postdate_);
                 request.setAttribute("Language", Language_);
                 request.setAttribute("Details", Details_);
                 request.setAttribute("Addnews", Addnews_);
                 request.setAttribute("Cancel", Cancel_);
                 request.setAttribute("Content", Content_);
                 request.setAttribute("Category", Category_);
                 request.setAttribute("Delete", Delete_);


             }
         }

        request.getRequestDispatcher("/login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Users user = new Users(null, email, password, null, null);

         String   redirect = "/login?emailError";


        ArrayList<Users> users = DBManager.getUsers();
        for (Users u : users) {
            if (user.getEmail().equals(u.getEmail())) {
                redirect = "/login?passwordError";
            }
        }

        for (Users u : users) {
                if (user.getEmail().equals(u.getEmail()) && user.getPassword().equals(u.getPassword())) {
                    request.getSession().setAttribute("CURRENT_USER", u);
                    redirect="/home";
                }
            }


        response.sendRedirect(redirect);
    }
}
