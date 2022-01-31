package DB;

import java.util.Date;

public class News {
    private Long id;
    private Date post_date;
    private NewsCategories categories;
    private Languages language;
    private String title;
    private String content;

    public News(Long id, Date post_date, NewsCategories categories, Languages language, String title, String content) {
        this.id = id;
        this.post_date = post_date;
        this.categories = categories;
        this.language = language;
        this.title = title;
        this.content = content;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getPost_date() {
        return post_date;
    }

    public void setPost_date(Date post_date) {
        this.post_date = post_date;
    }

    public NewsCategories getCategories() {
        return categories;
    }

    public void setCategories(NewsCategories categories) {
        this.categories = categories;
    }



    public Languages getLanguage() {
        return language;
    }

    public void setLanguage(Languages language) {
        this.language = language;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
