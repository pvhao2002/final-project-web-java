package hcmute.edu.tuantran.project_phone.entities;

public class ProductEntity {
    private int id;
    private String title;
    private long price;
    private String size;
    private String color;
    private String description;
    private String type;
    private String image;
    private int catid;

    public ProductEntity() {
    }

    public ProductEntity(int id, String title, long price, String size, String color, String description, String type, String image, int catid) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.size = size;
        this.color = color;
        this.description = description;
        this.type = type;
        this.image = image;
        this.catid = catid;
    }

    public int getCatid() {return catid;}

    public void setCatid(int catid) {this.catid = catid;}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getPrice() { return price;}

    public void setPrice(long price) { this.price = price;}

    public String getSize() {return size;}

    public void setSize(String size) {this.size = size;}

    public String getColor() {return color;}

    public void setColor(String color) {this.color = color;}

    public String getDescription() {return description;}

    public void setDescription(String description) {this.description = description;}

    public String getImage() {return image;}

    public void setImage(String image) { this.image = image;}

    public String getType() {return type;}

    public void setType(String type) { this.type = type; }
}
