package com.uteshop.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "contact")
@NamedQueries({@NamedQuery(name = "Contact.getAll", query = "SELECT c FROM Contact c"),
        @NamedQuery(name = "Contact.countAll", query = "SELECT COUNT(*) FROM Contact c")})
public class Contact implements java.io.Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "contactId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "phoneNumber")
    private String phoneNumber;

    @Column(name = "message")
    private String message;

    @Column(name="name")
    private String name;

    @Column(name = "subject")
    private String subject;

    @Column(name = "email")
    private String email;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {this.subject = subject;}

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {this.email = email;}

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Contact(Integer id, String phoneNumber, String message, String name, String subject) {
        this.id = id;
        this.phoneNumber = phoneNumber;
        this.message = message;
        this.name = name;
        this.subject = subject;
    }

    public Contact() {
    }

}
