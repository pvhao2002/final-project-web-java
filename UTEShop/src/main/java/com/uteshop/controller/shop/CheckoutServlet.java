/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uteshop.controller.shop;

import com.uteshop.model.cart.Cart;
import com.uteshop.model.dao.ProductDAO;
import com.uteshop.model.entity.Product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

@WebServlet(name = "CheckoutServlet", value = "/checkout")
public class CheckoutServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        System.out.println(cart.getItems());
        
        List<Product> productsList = new ArrayList<Product>(cart.getItems().keySet());

        
        request.setAttribute("products", productsList);

        String url = "/checkout.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
	doGet(request, response);
    }

}