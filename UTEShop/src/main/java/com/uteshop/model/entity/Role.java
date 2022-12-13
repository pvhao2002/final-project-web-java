package com.uteshop.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "roles")
@NamedQueries({
        @NamedQuery(name = "Role.getAll", query = "SELECT r FROM Role r"),
        @NamedQuery(name = "Role.countAll", query = "SELECT COUNT(*) FROM Role r"),
        @NamedQuery(name = "User.getByroleId", query = "SELECT r FROM Role r WHERE r.roleId = :roleId"),
})
public class Role implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name="roleid")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer roleId;

    @Column(name="rolename")
    private String roleName;

    @OneToMany(mappedBy = "roleid", cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<User> users;

    public Role() {
    }

    public Role(Integer roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

}