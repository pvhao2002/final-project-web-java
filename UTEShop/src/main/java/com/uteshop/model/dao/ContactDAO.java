package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Contact;
import com.uteshop.model.entity.Product;

import java.util.List;

public class ContactDAO extends AbstractDAO<Contact> implements GenericDAO<Contact>{

    @Override
    public Contact create(Contact contact) {
        return super.create(contact);
    }

    @Override
    public void delete(Object contactId) {
        super.delete(Contact.class, contactId);
    }
    @Override
    public int count() {
        return super.countWithNamedQuery("Contact.countAll");
    }

    @Override
    public Contact find(Object contactId) {
        return super.find(Contact.class, contactId);
    }

    public List<Contact> getAll() {
        return super.findWithNamedQuery("Contact.getAll");
    }
}
