package com.uteshop.model.dao;

import com.uteshop.model.entity.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDAO extends AbstractDAO<User> implements GenericDAO<User> {
    @Override
    public User create(User user) {return super.create(user);}

    @Override
    public User update(User user) {return super.update(user);}

    @Override
    public void delete(Object userId) {
        super.delete(User.class, userId);
    }

    public User get(Object userId) {
        return super.find(User.class, userId);
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("User.countAll");
    }

    public User checkAccountExist(String email) {
        List<User> listUser = super.findWithNamedQuery("User.checkAccountExist", "email", email);
        if (listUser != null && listUser.size() == 1) {
            return listUser.get(0);
        }
        return null;
    }

    public User checkEmailAndPassword(String email, String password) {

        List<User> user = super.findWithNamedQuery("User.checkEmailAndPassword", "email", email, "password", password);

        if (user != null && user.size() == 1) {
            return user.get(0);
        }
        return null;
    }
}
