package DB;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/newsblogdata?useUnicode=true&serverTimeZone=UTC", "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<News> getNews() {
        ArrayList<News> news = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement("" +"SELECT n.id,n.post_date,n.category_id,nc.name as categoryName,n.language_id,l.name as languageName,l.code,n.title,n.content " +
                    "FROM news n" +
                    " INNER JOIN news_categories nc on n.category_id = nc.id" +
                    " INNER JOIN languages l on n.language_id = l.id");
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                news.add( new News(
                        resultSet.getLong("id"),
                        resultSet.getDate("post_date"),
                        new NewsCategories(
                                resultSet.getLong("category_id"),
                                resultSet.getString("categoryName")
                        ),new Languages(
                        resultSet.getLong("language_id"),
                        resultSet.getString("languageName"),
                        resultSet.getString("code")
                ),
                        resultSet.getString("title"),
                        resultSet.getString("content")
                ));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return news;

    }


    public static ArrayList<Comments> getComments() {
        ArrayList<Comments> comments = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement("" + "SELECT  c.id,c.comment,c.post_date,c.user_id,u.email,u.password,u.full_name,u.role_id,c.news_id,n.id,n.post_date as NewsPostDate,n.category_id,nc.name AS categoryName,n.language_id ,l.name AS languageName,l.code, n.title,n.content " +
                    " FROM comments c " +
                    " INNER JOIN users u on c.user_id = u.id " +
                    " INNER JOIN news n on c.news_id = n.id " +
                    " INNER JOIN news_categories nc on n.category_id = nc.id " +
                    " INNER JOIN languages l on n.language_id = l.id");
            ResultSet resultSet = statement.executeQuery();


            while (resultSet.next()) {
                comments.add(new Comments(
                        resultSet.getLong("id"),
                        resultSet.getString("comment"),
                        resultSet.getDate("post_date"),
                        new Users(
                                resultSet.getLong("user_id"),
                                resultSet.getString("email"),
                                resultSet.getString("password"),
                                resultSet.getString("full_name"),
                                resultSet.getString("role_id")

                        ), new News(
                        resultSet.getLong("news_id"),
                        resultSet.getDate("NewsPostDate"),
                        new NewsCategories(
                                resultSet.getLong("category_id"),
                                resultSet.getString("categoryName")
                        ),new Languages(
                        resultSet.getLong("language_id"),
                        resultSet.getString("languageName"),
                        resultSet.getString("code")
                ),
                        resultSet.getString("title"),
                        resultSet.getString("content")
                )


                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return comments;

    }


    public static ArrayList<Users> getUsers(){
        ArrayList<Users> users=new ArrayList<>();
        try {
            PreparedStatement statement=connection.prepareStatement(""+"SELECT  * FROM users");
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                users.add(new Users(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("full_name"),
                        resultSet.getString("role_id")
                ));

            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return users;

    }



    public static ArrayList<Languages> getLanguages(){
        ArrayList<Languages> languages=new ArrayList<>();
        try {
            PreparedStatement statement=connection.prepareStatement(""+"SELECT  * FROM languages");
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                languages.add(new Languages(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("code")
                ));

            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return languages;

    }


    public static ArrayList<NewsCategories> getCategories(){
        ArrayList<NewsCategories> newsCategories=new ArrayList<>();
        try {
            PreparedStatement statement=connection.prepareStatement(""+"SELECT  * FROM news_categories");
            ResultSet resultSet=statement.executeQuery();

            while (resultSet.next()){
                newsCategories.add(new NewsCategories(
                        resultSet.getLong("id"),
                        resultSet.getString("name")

                ));

            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return newsCategories;

    }



    public static void addComment(Comments  comment){

        try {
            PreparedStatement statement=connection.prepareStatement(""+"INSERT INTO comments(id,comment,post_date,user_id,news_id) "+" VALUES (NULL ,?,?,?,?)");
            java.util.Date date=new java.util.Date();



            statement.setString(1,comment.getComment());
            statement.setDate(2,java.sql.Date.valueOf(LocalDate.now()));
            statement.setLong(3,comment.getUser().getId());
            statement.setLong(4,comment.getNews().getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static News getNews(Long id){
        News news=null;

        try {
            PreparedStatement statement=connection.prepareStatement("" +"SELECT n.id,n.post_date,n.category_id,nc.name as categoryName,n.language_id,l.name as languageName,l.code,n.title,n.content " +
                    "FROM news n" +
                    " INNER JOIN news_categories nc on n.category_id = nc.id" +
                    " INNER JOIN languages l on n.language_id = l.id"
            +" WHERE n.id="+id);
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                news=new News(
                        resultSet.getLong("id"),
                        resultSet.getDate("post_date"),
                        new NewsCategories(
                                resultSet.getLong("category_id"),
                                resultSet.getString("categoryName")
                        ),new Languages(
                        resultSet.getLong("language_id"),
                        resultSet.getString("languageName"),
                        resultSet.getString("code")
                ),
                        resultSet.getString("title"),
                        resultSet.getString("content")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return news;

    }



    public static Users getUser(Long id){
        Users user=null;

        try {
            PreparedStatement statement=connection.prepareStatement("" +"SELECT * FROM  users WHERE id="+id);
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                user=new Users(
                        resultSet.getLong("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("full_name"),
                        resultSet.getString("role_id")

                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;

    }

    public static void saveUser(Users user){

        try {
            PreparedStatement statement=connection.prepareStatement(""+"UPDATE  users SET  email=?, password=? ,full_name=? ,role_id=? WHERE  id=? ");
            statement.setString(1, user.getEmail());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getFull_name());
            statement.setString(4, user.getRole_id());
            statement.setLong(5,user.getId());

            statement.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public static void addUser(Users user){

        try {
            PreparedStatement statement=connection.prepareStatement(""+"INSERT INTO users(id,email,password,full_name,role_id) "+" VALUES (NULL ,?,?,?,?)");
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getPassword());
            statement.setString(3,user.getFull_name());
            statement.setString(4,user.getRole_id());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public static void addNews(News  news){

        try {
            PreparedStatement statement=connection.prepareStatement(""+"INSERT INTO news(id,post_date,category_id,language_id,title,content) "+" VALUES (NULL ,?,?,?,?,?)");
            java.util.Date date=new java.util.Date();



            statement.setDate(1,java.sql.Date.valueOf(LocalDate.now()));
            statement.setLong(2,news.getCategories().getId());
            statement.setLong(3,news.getLanguage().getId());
            statement.setString(4,news.getTitle());
            statement.setString(5,news.getContent());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static NewsCategories getCategory(Long id){
        NewsCategories newsCategories=null;

        try {
            PreparedStatement statement=connection.prepareStatement("" +"SELECT * FROM  news_categories WHERE id="+id);
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                newsCategories=new NewsCategories(
                        resultSet.getLong("id"),
                        resultSet.getString("name")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return newsCategories;

    }


    public static Languages getLanguage(Long id){
        Languages languages=null;

        try {
            PreparedStatement statement=connection.prepareStatement("" +"SELECT * FROM  languages WHERE id="+id);
            ResultSet resultSet=statement.executeQuery();
            while (resultSet.next()){
                languages=new Languages(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("code")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return languages;

    }


    public static void saveNews(News news){

        try {
            PreparedStatement statement=connection.prepareStatement(""+"UPDATE  news SET  post_date=? ,category_id=?,language_id=?,title=?,content=?  WHERE  id=?");

            statement.setDate(1,java.sql.Date.valueOf(LocalDate.now()));
            statement.setLong(2,news.getCategories().getId());
            statement.setLong(3,news.getLanguage().getId());
            statement.setString(4,news.getTitle());
            statement.setString(5,news.getContent());
            statement.setLong(6,news.getId());
            statement.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }



    public static boolean deleteNews(News news){
        int row = 0;

        try{
            PreparedStatement preparedStatement=connection.prepareStatement(""+"DELETE  FROM news WHERE id=?");


            preparedStatement.setLong(1,news.getId());
           row= preparedStatement.executeUpdate();
            preparedStatement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return row>0;
    }


}
