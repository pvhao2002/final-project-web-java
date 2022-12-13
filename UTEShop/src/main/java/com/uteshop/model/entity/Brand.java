package com.uteshop.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

@Entity
@Table(name = "brands")
@NamedQueries({@NamedQuery(name = "Brand.getAll", query = "SELECT c FROM Brand c"),
        @NamedQuery(name = "Brand.countAll", query = "SELECT COUNT(*) FROM Brand c"),
        @NamedQuery(name = "Brand.findByName", query = "SELECT c FROM Brand c WHERE c.brandName = :brandName")})
public class Brand implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "brandId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer brandId;

    @Column(name = "brandName")
    private String brandName;

    @Column(name = "logo")
    private String logo;


    @OneToMany(mappedBy = "brandId",cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<Product> products;

    public Brand() {
    }

    public Brand(Integer brandId, String brandName, String logo) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.logo = logo;
    }

    public Brand(Integer brandId, String brandName, String logo, Set<Product> products) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.logo = logo;
        this.products = products;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Set<Product> getProducts() {
        return products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }
}
