package com.uteshop.controller.shop;

import com.uteshop.model.dao.RoleDAO;
import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CustomerProfileServlet", value = "/customer")
public class CustomerProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/customer_profile.jsp";

        String roleName = LoginServlet.RoleName;
        request.setAttribute("roleName", roleName);

        request.getRequestDispatcher(url).forward(request, response);
    }
}
