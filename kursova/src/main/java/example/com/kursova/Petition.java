package example.com.kursova;


public class Petition {
    private String category;
    private String title;
    private String text;
    private int votes;


    public Petition(String category, String title, String text) {
        this.category = category;
        this.title = title;
        this.text = text;
        this.votes = 0;
    }


    public String getCategory() {
        return category;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }


    public int getVotes() {
        return votes;
    }


    public void vote() {
        if (votes < 1) {
            this.votes++;
        }
    }

}
