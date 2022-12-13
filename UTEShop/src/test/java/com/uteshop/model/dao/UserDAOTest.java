package com.uteshop.model.dao;

import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import org.junit.jupiter.api.*;

class UserDAOTest {
    private static UserDAO userDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        userDAO = new UserDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
        userDAO.close();
    }

//    @Test
//    void testDeleteUser() {
//        Integer userId = 3;
//        userDAO.delete(userId);
//    }

//    @Test
//    void testUser()
//    {
//        UserDAO userDAO = new UserDAO();
//        User user = userDAO.checkEmailOrNameAndPassword("Admin", "admin");
//        System.out.println(user.getRoleid().getRoleId().intValue());
//    }
}