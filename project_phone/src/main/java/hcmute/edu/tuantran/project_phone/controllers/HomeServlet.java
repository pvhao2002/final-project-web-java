package hcmute.edu.tuantran.project_phone.controllers;

import hcmute.edu.tuantran.project_phone.dao.*;
import hcmute.edu.tuantran.project_phone.entities.ProductEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name="HomeServlet",value="/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/index.jsp";

        List<ProductEntity> product_trending = new ArrayList<>();
        Product_trendingDAO product_trendingDAO = new Product_trendingDAO();
        product_trending = product_trendingDAO.getAllProduct();
        request.setAttribute("product_trending", product_trending);


        List<ProductEntity> product_discount = new ArrayList<>();
        Product_discountDAO product_discountDAO = new Product_discountDAO();
        product_discount = product_discountDAO.getAllProduct();
        request.setAttribute("product_discount", product_discount);

        List<ProductEntity> product_new = new ArrayList<>();
        Product_newDAO product_newDAO = new Product_newDAO();
        product_new = product_newDAO.getAllProduct();
        request.setAttribute("product_new", product_new);

        List<ProductEntity> product_installment = new ArrayList<>();
        Product_installmentDAO product_installmentDAO = new Product_installmentDAO();
        product_installment = product_installmentDAO.getAllProduct();
        request.setAttribute("product_installment", product_installment);

        List<ProductEntity> product_cheap = new ArrayList<>();
        Product_cheapDAO product_cheapDAO = new Product_cheapDAO();
        product_cheap = product_cheapDAO.getAllProduct();
        request.setAttribute("product_cheapList", product_cheap);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
