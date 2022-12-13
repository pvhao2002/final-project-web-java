package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RoleDAO extends AbstractDAO<Role> implements GenericDAO<Role> {
    @Override
    public Role create(Role role) {return super.create(role);}

    @Override
    public Role update(Role role) {return super.update(role);}

    @Override
    public void delete(Object roleId) {
        super.delete(Role.class, roleId);
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("Role.countAll");
    }

    @Override
    public Role find(Object roleId) {
        return super.find(Role.class, roleId);
    }

    public List<Role> getAll() {
        return super.findWithNamedQuery("Role.getAll");
    }
}
