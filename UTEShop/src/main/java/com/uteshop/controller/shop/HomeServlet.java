package com.uteshop.controller.shop;

import com.uteshop.model.dao.BrandDAO;
import com.uteshop.model.dao.CategoryDAO;
import com.uteshop.model.dao.ProductDAO;
import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/view/web/home.jsp";

        ProductDAO productDAO = new ProductDAO();
        CategoryDAO categoryDAO = new CategoryDAO();
        BrandDAO brandDAO = new BrandDAO();
        List<Brand> brands = brandDAO.getAll();
        List<Category> category = categoryDAO.getAll();


        String from ="2015-01-01";
        String to ="2018-01-01";
        Date date1 = null;
        try {
            date1 = new SimpleDateFormat("yyyy-MM-dd").parse(from);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Date date2 = null;
        try {
            date2 = new SimpleDateFormat("yyyy-MM-dd").parse(to);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        List<Product> product_discountList = productDAO.listDiscountProducts( date1, date2, 3000000, 8000000);
        List<Product> product_trendList = productDAO.listTrendProducts(20000000, 25000000);
        List<Product> product_cheapList = productDAO.listCheapProducts();
        List<Product> product_newList = productDAO.listNewProducts();
        List<Product> product_oldList = productDAO.listOldProducts();

        request.setAttribute("data", category);
        request.setAttribute("brands", brands);
        request.setAttribute("product_trendList", product_trendList);
        request.setAttribute("product_discountList", product_discountList);
        request.setAttribute("product_newList", product_newList);
        request.setAttribute("product_oldList", product_oldList);
        request.setAttribute("product_cheapList", product_cheapList);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
