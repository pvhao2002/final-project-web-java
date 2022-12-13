package com.uteshop.model.dao;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.uteshop.model.entity.Product;
import com.uteshop.model.entity.Review;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import com.uteshop.util.SesstionUtil;
import org.junit.jupiter.api.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

class ReviewDAOTest {
    private static ReviewDAO reviewDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        reviewDAO = new ReviewDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
        reviewDAO.close();
    }

    @Test
    void testCreateReview() {
//        Review review = new Review();
//        ProductDAO productDAO = new ProductDAO();
//        UserDAO userDAO = new UserDAO();
//
//        review.setProductId(productDAO.get(2));
//        review.setUserId(userDAO.get(2));
//        review.setRating(4.5);
//        review.setContent("good");
//        review.setReviewTime(new Date());
//
//        reviewDAO.create(review);
    }
}