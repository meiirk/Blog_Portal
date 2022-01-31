package DB;

import javax.xml.stream.events.DTD;
import java.util.Date;

public class Comments {
    private Long id;
    private String comment;
    private Date post_date;
    private Users user;
    private News news;

    public Comments(Long id, String comment, Date post_date, Users user, News news) {
        this.id = id;
        this.comment = comment;
        this.post_date = post_date;
        this.user = user;
        this.news = news;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getPost_date() {
        return post_date;
    }

    public void setPost_date(Date post_date) {
        this.post_date = post_date;
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public News getNews() {
        return news;
    }

    public void setNews(News news) {
        this.news = news;
    }
}
