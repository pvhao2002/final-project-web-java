package hcmute.edu.tuantran.project_phone.entities;

public class ProductEntity {
    private long id;
    private String title;
    private String price;
    private String size;
    private String color;
    private String description;
    private String type;
    private String image;

    public ProductEntity() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) { this.image = image;}

    public String getType() {
        return type;
    }

    public void setType(String type) { this.type = type; }
}
