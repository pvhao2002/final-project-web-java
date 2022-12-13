package com.uteshop.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "category")
@NamedQueries({@NamedQuery(name = "Category.getAll", query = "SELECT c FROM Category c"),
        @NamedQuery(name = "Category.countAll", query = "SELECT COUNT(*) FROM Category c")
//        @NamedQuery(name = "Category.findByName", query = "SELECT c FROM Category c WHERE c.categoryName = :categoryName")
})
public class Category implements java.io.Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "categoryId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer categoryId;

    @Column(name = "categoryName")
    private String categoryName;

    @OneToMany(mappedBy = "categoryId",fetch = FetchType.LAZY)
    @JsonIgnore
    private Set<Product> products = new HashSet<>(0);

    public Category() {
        super();
    }

    public Category(Integer categoryId, String categoryName, Set<Product> products) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.products = products;
    }

    public Integer getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return this.categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Set<Product> getProducts() {
        return this.products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

}
