package DB;

public class NewsContents {
    private Long id;
    private  String title;
    private  String content;
    private Languages languages;

    public NewsContents(Long id, String title, String content, Languages languages) {

        this.id = id;
        this.title = title;
        this.content = content;
        this.languages = languages;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public Languages getLanguages() {
        return languages;
    }

    public void setLanguages(Languages languages) {
        this.languages = languages;
    }
}
