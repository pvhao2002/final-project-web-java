package com.uteshop.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "review")
@NamedQueries({
        @NamedQuery(name = "Review.findAll", query = "SELECT r FROM Review r"),
        @NamedQuery(name = "Review.countAll", query = "SELECT COUNT(*) FROM Review r")
})
public class Review implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "reviewId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer reviewId;

    @Column(name="rating")
    private Double rating;

    @Column(name = "content")
    private String content;

    @Column(name = "reviewTime")
    private Date reviewTime;

    @ManyToOne
    @JoinColumn(name="userId")
    @JsonIgnore
    private User userId;

    @ManyToOne
    @JoinColumn(name="productId")
    @JsonIgnore
    private Product productId;

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getReviewTime() {
        return reviewTime;
    }

    public void setReviewTime(Date reviewTime) {
        this.reviewTime = reviewTime;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public Review() {
    }

    public Review(Integer reviewId, Double rating, String content, Date reviewTime, User userId, Product productId) {
        this.reviewId = reviewId;
        this.rating = rating;
        this.content = content;
        this.reviewTime = reviewTime;
        this.userId = userId;
        this.productId = productId;
    }
}
