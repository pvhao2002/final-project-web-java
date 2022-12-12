/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uteshop.controller.shop;

/**
 *
 * @author lethi
 */
import com.uteshop.model.cart.Cart;
import com.uteshop.model.dao.CartDAO;
import com.uteshop.model.dao.ProductDAO;
import com.uteshop.model.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AddToCartServlet",urlPatterns ="/AddCart")
public class AddToCartServlet extends HttpServlet {

    private ProductDAO productDao;
	
    @Override
    public void init() {
        productDao = new ProductDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
	String productId = request.getParameter("productId");
        String numberItem = request.getParameter("number");
        System.out.println(productId);
        
        Product product = productDao.detailProductById(Integer.parseInt(productId));    
        System.out.println(product);
        
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        cart.addItem(product);
        response.sendRedirect("shopDetail?pid="+productId);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
	doGet(request, response);
    }

}