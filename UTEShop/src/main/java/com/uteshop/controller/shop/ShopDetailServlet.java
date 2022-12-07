package com.uteshop.controller.shop;

import com.uteshop.model.dao.CategoryDAO;
import com.uteshop.model.dao.InformationDAO;
import com.uteshop.model.dao.ProductDAO;
import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Information;
import com.uteshop.model.entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "ShopDetailServlet", value = "/shopDetail")
public class ShopDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/shopDetail.jsp";
        InformationDAO information = new InformationDAO();

        Product p = null;
        String id = request.getParameter("pid");
        try {
            if (id == null) {
                p = null;
            } else {
                int pid = Integer.parseInt(id);
                p = information.getProductById(pid);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }

        CategoryDAO categoryDAO = new CategoryDAO();
        ProductDAO productDAO = new ProductDAO();
        List<Category> category = categoryDAO.getAll();

        List<Product> product_randomList = productDAO.randomProduct();

        request.setAttribute("data", category);
        request.setAttribute("product", p);
        request.setAttribute("product_randomList", product_randomList);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
