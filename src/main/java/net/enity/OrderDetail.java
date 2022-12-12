package net.enity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;


@Entity
@Table(name = "orderDetails")
@NamedQuery(name = "OrderDetail.findAll", query = "SELECT od FROM OrderDetail od")
public class OrderDetail implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "oderDetailId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer oderDetailId;

    @Column(name = "price")
    private Double price;

    @Column(name = "quantity")
    private Integer quantity;

    @ManyToOne
    @JoinColumn(name = "orderId")
    @JsonIgnore
    private Orders orderId;

    @ManyToOne
    @JoinColumn(name = "productId")
    @JsonIgnore
    private Product productId;

    public OrderDetail() {
    }

    public OrderDetail(Integer oderDetailId, Double price, Integer quantity, Orders orderId, Product productId) {
        this.oderDetailId = oderDetailId;
        this.price = price;
        this.quantity = quantity;
        this.orderId = orderId;
        this.productId = productId;
    }

    public Integer getOderDetailId() {
        return oderDetailId;
    }

    public void setOderDetailId(Integer oderDetailId) {
        this.oderDetailId = oderDetailId;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Orders getOrderId() {
        return orderId;
    }

    public void setOrderId(Orders orderId) {
        this.orderId = orderId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }


}
