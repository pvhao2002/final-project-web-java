package net.enity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.security.Timestamp;
import java.util.*;


@Entity
@Table(name = "orders")
@NamedQuery(name = "Order.findAll", query = "SELECT o FROM Orders o")
public class Orders implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "orderId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer orderId;

    @Column(name = "oderDate")
    private Timestamp oderDate;

    @Column(name = "address")
    private String address;

    @Column(name = "phoneNumber")
    private String phoneNumber;

    @Column(name = "totalPrice")
    private Double totalPrice;

    @Column(name = "status")
    private Byte status;


    @ManyToOne
    @JoinColumn(name = "userId")
    @JsonIgnore
    private User userId;
    @OneToMany(mappedBy = "orderId",cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<OrderDetail> orderDetails;

    public Orders() {
    }

    public Orders(Integer orderId, Timestamp oderDate, String address, String phoneNumber, Double totalPrice, Byte status, User userId, Set<OrderDetail> orderDetails) {
        this.orderId = orderId;
        this.oderDate = oderDate;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.totalPrice = totalPrice;
        this.status = status;
        this.userId = userId;
        this.orderDetails = orderDetails;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Timestamp getOderDate() {
        return oderDate;
    }

    public void setOderDate(Timestamp oderDate) {
        this.oderDate = oderDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public Set<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(Set<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }



}
