package net.enity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "product")
@NamedQueries(value = {
        @NamedQuery(name = "Product.getAll", query = "SELECT p FROM Product p"),
        @NamedQuery(name = "Product.getProductsByPrice", query = "SELECT p FROM Product p WHERE p.price between :from and :to ORDER BY p.price"),
        @NamedQuery(name = "Product.countAll", query = "SELECT COUNT(*) FROM Product p"),
        @NamedQuery(name = "Product.findByCategory", query = "SELECT p FROM Product p WHERE p.categoryId.categoryId = :categoryId"),
        @NamedQuery(name = "Product.findByBrand", query = "SELECT p FROM Product p WHERE p.brandId.brandId = :brandId"),
        @NamedQuery(name = "Product.listNewProducts", query = "SELECT p FROM Product p ORDER BY p.releaseDate DESC"),
        @NamedQuery(name = "Product.listOldProducts", query = "SELECT p FROM Product p ORDER BY p.releaseDate"),
        @NamedQuery(name = "Product.listDiscountProducts", query = "SELECT p FROM Product p WHERE p.releaseDate between :from1 and :to1 and p.price between :from2 and :to2"),
        @NamedQuery(name = "Product.listCheapProducts", query = "SELECT p FROM Product p ORDER BY p.price"),
        @NamedQuery(name = "Product.searchHeader", query = "SELECT p FROM Product p WHERE p.productName LIKE '%' || :keyword || '%' OR p.description LIKE '%' || :keyword || '%'"),
        @NamedQuery(name = "Product.search", query = "SELECT p FROM Product p WHERE p.productName LIKE '%' || :keyword || '%'"),
        @NamedQuery(name = "Product.sortByPriceDesc", query = "SELECT p FROM Product p ORDER BY p.price DESC"),
        @NamedQuery(name = "Product.sortByPriceAsc", query = "SELECT p FROM Product p ORDER BY p.price"),
        @NamedQuery(name = "Product.sortByNameDesc", query = "SELECT p FROM Product p ORDER BY p.productName DESC"),
        @NamedQuery(name = "Product.sortByNameAsc", query = "SELECT p FROM Product p ORDER BY p.productName"),
        @NamedQuery(name = "Product.randomProduct", query = "SELECT p FROM Product p ORDER BY rand()")
})
public class Product implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "productId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer productId;

    @Column(name = "productName")
    private String productName;

    @Column(name = "image")
    private String image;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private Long price;

    @Column(name = "releaseDate")
    private Date releaseDate;

    @ManyToOne
    @JoinColumn(name = "categoryId")
    @JsonIgnore
    private Category categoryId;

    @ManyToOne
    @JoinColumn(name = "brandId")
    @JsonIgnore
    private Brand brandId;

    @ManyToOne
    @JoinColumn(name = "infoId")
    @JsonIgnore
    private Information infoId;

    @OneToMany(mappedBy = "productId",cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<OrderDetail> orderDetailId;

    public Product() {
    }

    public Product(Integer productId, String productName, String image, String description, Long price, Date releaseDate, Category categoryId, Brand brandId, Information infoId, Set<OrderDetail> orderDetailId) {
	this.productId = productId;
	this.productName = productName;
	this.image = image;
	this.description = description;
	this.price = price;
	this.releaseDate = releaseDate;
	this.categoryId = categoryId;
	this.brandId = brandId;
	this.infoId = infoId;
	this.orderDetailId = orderDetailId;
    }

    public Integer getProductId() {
	return productId;
    }

    public void setProductId(Integer productId) {
	this.productId = productId;
    }

    public String getProductName() {
	return productName;
    }

    public void setProductName(String productName) {
	this.productName = productName;
    }

    public String getImage() {
	return image;
    }

    public void setImage(String image) {
	this.image = image;
    }

    public String getDescription() {
	return description;
    }

    public void setDescription(String description) {
	this.description = description;
    }

    public Long getPrice() {
	return price;
    }

    public void setPrice(Long price) {
	this.price = price;
    }

    public Date getReleaseDate() {
	return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
	this.releaseDate = releaseDate;
    }

    public Category getCategoryId() {
	return categoryId;
    }

    public void setCategoryId(Category categoryId) {
	this.categoryId = categoryId;
    }

    public Brand getBrandId() {
	return brandId;
    }

    public void setBrandId(Brand brandId) {
	this.brandId = brandId;
    }

    public Information getInfoId() {
	return infoId;
    }

    public void setInfoId(Information infoId) {
	this.infoId = infoId;
    }

    public Set<OrderDetail> getOrderDetailId() {
	return orderDetailId;
    }

    public void setOrderDetailId(Set<OrderDetail> orderDetailId) {
	this.orderDetailId = orderDetailId;
    }

    @Override
    public String toString() {
	return "Product{" + "productId=" + productId + ", productName=" + productName + ", image=" + image + ", description=" + description + ", price=" + price + ", releaseDate=" + releaseDate + ", categoryId=" + categoryId + ", brandId=" + brandId + ", infoId=" + infoId + ", orderDetailId=" + orderDetailId + '}';
    }

   
    
}
