package Servlets;
import java.util.ArrayList;
public class Translations {
    public static ArrayList<ArrayList<String>> translations = new ArrayList<>();
    static {
        ArrayList<String> russian = new ArrayList<>();
        ArrayList<String> english = new ArrayList<>();
        english.add("Home");
        english.add("World");
        english.add("Technologies");
        english.add("Science");
        english.add("Sign in");
        english.add("Posted at");
       english.add("comments");
       english.add("Email");
       english.add("Password");
       english.add("Registration");
       english.add("Profile");
       english.add("Sign out");
       english.add("You are logged in as ");
       english.add("Write a comment");
       english.add("Send");
       english.add("Full name");
       english.add("Save");
       english.add("Admin Panel");
       english.add("Admin");
       english.add("User");
       english.add("Register as :");
       english.add("Another account is using this email");
        english.add("Add");
        english.add("Title");
        english.add("Post date");
        english.add("Language");
        english.add("Details");
        english.add("Add news");
        english.add("Cancel");
        english.add("Content");
        english.add("Category");
        english.add("Delete");






        russian.add("Домой");
        russian.add("Мир");
        russian.add("Технология");
        russian.add("Наука");
        russian.add("Войти");
        russian.add("Опубликовано");
        russian.add("Комментарий");
        russian.add("Почта");
        russian.add("Пороль");
        russian.add("Регистарция");
        russian.add("Профиль");
        russian.add("Выйти");
        russian.add("Вы авторизованы как ");
        russian.add("Написать комметарий");
        russian.add("Отправить");
        russian.add("Ф.И.О");
        russian.add("Сохранить");
        russian.add("Админ панель");
        russian.add("Админ");
        russian.add("Пользователь");
        russian.add("Зарегистрироваться как:");
        russian.add("Электронная почта уже используется другим аккаунтом.");
        russian.add("Добавить");

        russian.add("Заголовок");
        russian.add("Дата публикации");
        russian.add("Язык");
        russian.add("Подробнее");
        russian.add("Добавить новости");
        russian.add("Отмена");
        russian.add("Сожержание");
        russian.add("Категория");
        russian.add("Удалить");



        translations.add(english);
        translations.add(russian);

    }


}