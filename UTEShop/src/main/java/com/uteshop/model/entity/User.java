package com.uteshop.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "users")
@NamedQueries({
        @NamedQuery(name = "User.findAll", query = "SELECT u FROM User u"),
        @NamedQuery(name = "User.countAll", query = "SELECT COUNT(*) FROM User u"),
        @NamedQuery(name = "User.checkEmailAndPassword", query = "SELECT u FROM User u WHERE u.email = :email AND password = :password"),
        @NamedQuery(name = "User.checkAccountExist", query = "SELECT u FROM User u WHERE u.email = :email")
})
public class User implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "userId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="password")
    private String password;

    @Column(name = "fullName")
    private String fullName;

    @Column(name = "email")
    private String email;

    @Column(name = "phoneNumber")
    private String phoneNumber;

    @Column(name = "address")
    private String address;

    @ManyToOne
    @JoinColumn(name="roleId")
    @JsonIgnore
    private Role roleid;

    @OneToMany(mappedBy = "userId", cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<Orders> order;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {this.password = password;}

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Set<Orders> getOrder() {
        return order;
    }

    public void setOrder(Set<Orders> order) {
        this.order = order;
    }

    public Role getRoleid() {
        return roleid;
    }

    public void setRoleid(Role roleid) {
        this.roleid = roleid;
    }

    public User() {
    }

    public User(Integer id, String password, String fullName, String email, String phoneNumber, String address, Role roleid,Set<Orders> order) {
        this.id = id;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.roleid = roleid;
        this.order = order;
    }

}
