/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package net.test;

import net.dao.RoleDao;
import net.enity.Role;
import java.util.*;
/**
 *
 * @author haodeptrai
 */
public class TestHibernate {

    public static void main(String[] args) {
	try {
	    RoleDao r = new RoleDao();
	    List<Role> list = r.findAll();
	    for (Role role : list) {
		System.out.println(role.getRoleName());
	    }
	} catch (Exception e) {
	    System.out.println("failed");
	}
    }
}
