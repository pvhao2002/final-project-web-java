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

    @Test
    void testCreateUser() {
        User user = new User();
        user.setEmail("tranquoctuantqd2002@gmail.com");
        user.setFullName("Tran Quoc Tuan");
        user.setPassword("123");
        user.setPhoneNumber("0337981963");
        user.setAddress("TPHCM");
        Role roleid = new Role();
        roleid.setRoleId(0);
        user.setRoleid(roleid);
        user = userDAO.create(user);

        Assertions.assertTrue(user.getId() > 0);
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