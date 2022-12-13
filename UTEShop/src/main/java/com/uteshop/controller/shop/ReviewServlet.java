package com.uteshop.controller.shop;

import com.uteshop.model.dao.ProductDAO;
import com.uteshop.model.dao.ReviewDAO;
import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Review;
import com.uteshop.model.entity.User;
import com.uteshop.util.SesstionUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "ReviewServlet", value = "/send-review")
public class ReviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/view/web/shopDetail?pid=" + request.getParameter("productId");

        Review review = new Review();
        ProductDAO productDAO = new ProductDAO();
        UserDAO userDAO = new UserDAO();
        ReviewDAO reviewDAO = new ReviewDAO();

        User user = (User) SesstionUtil.getInstance().getValue(request, "account");
        int userId = user.getId();
        try {
            Double a = Double.parseDouble(request.getParameter("hdrating"));
//            System.out.println(a);
        }catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
        Double check = Double.parseDouble(request.getParameter("hdrating"));
        System.out.println(Double.parseDouble(request.getParameter("hdrating")));
        System.out.println(check);

        review.setUserId(userDAO.find(userId));
        review.setProductId(productDAO.find(Integer.parseInt(request.getParameter("productId"))));
//        review.setRating(Double.parseDouble(request.getParameter("hdrating")));
//        review.setContent(request.getParameter("message"));
//        review.setReviewTime(new Date());

//        reviewDAO.create(review);
        request.getRequestDispatcher(url).forward(request, response);
    }
}
