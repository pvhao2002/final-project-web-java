package com.uteshop.model.dao;

import com.uteshop.model.entity.Role;
import org.junit.jupiter.api.*;

import javax.servlet.http.HttpSession;
import java.util.Random;
import  javax.servlet.http.HttpSession;

class RoleDAOTest {
    private static RoleDAO roleDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        roleDAO = new RoleDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
        roleDAO.close();
    }


//    @Test
//    void testUser()
//    {
//        RoleDAO roleDAO = new RoleDAO();
//        Role role = roleDAO.getByroleId(1);
//        System.out.println(role.getRoleId());
//    }
//    void testCode(){
//        Random rnd = new Random();
//        int number = rnd.nextInt(999999);
//
//        System.out.println(String.format("%06d", number));
//
//        HttpSession session = request.getSession();
//
//        session.setAttribute("email_code", String.format("%06d", number));
//        session.setMaxInactiveInterval(-1);
//
//        String code_email = (String) session.getAttribute("email_code");
//        System.out.println(code_email);
//    }
}