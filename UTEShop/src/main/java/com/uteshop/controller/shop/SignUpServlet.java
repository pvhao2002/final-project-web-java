package com.uteshop.controller.shop;

import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Product;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import org.junit.jupiter.api.Assertions;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "SignUpServlet", value = "/signup")
public class SignUpServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/registration.jsp";
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String re_pass = request.getParameter("re_pass");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        System.out.println(password);
        String check = null;

        //check phoneNumber
        Pattern pattern = Pattern.compile("\\d*");
        Matcher matcher = pattern.matcher(phone);

        //không vô if này
        if(name == null || email == null || password == null || re_pass == null || phone == null || address == null){
            check = "1";
            request.setAttribute("message", "Please fill out all the information below!");
            request.setAttribute("check", check);
            request.getRequestDispatcher(url).forward(request, response);
        }else if(!password.equals(re_pass)) {
            check = "2";
            request.setAttribute("message", "Re-entered password does not match!");
            request.setAttribute("check", check);
            request.getRequestDispatcher(url).forward(request, response);
        }else if(!matcher.matches() || (phone.length() != 10 && phone.length() != 11) ){
            check = "3";
            request.setAttribute("message", "Please enter the correct phone number!");
            request.setAttribute("check", check);
            request.getRequestDispatcher(url).forward(request, response);
        }else{
            UserDAO userDAO = new UserDAO();
            User user = userDAO.checkAccountExist(email);
            if(user == null){
                check = "0";
                User acc = new User();
                acc.setFullName(name);
                acc.setEmail(email);
                acc.setPassword(password);
                acc.setPhoneNumber(phone);
                acc.setAddress(address);

                Role roleid = new Role();
                roleid.setRoleId(0);
                acc.setRoleid(roleid);

                User createdUser = userDAO.create(acc);
                Assertions.assertTrue(createdUser.getId() > 0);
                request.setAttribute("message", "Sign Up Success! Please login again!!!");
                request.setAttribute("check", check);

                request.getRequestDispatcher(url).forward(request, response);
            }else{
                check = "4";
                request.setAttribute("message", "Your name or email already exists!");
                request.setAttribute("check", check);
                request.getRequestDispatcher(url).forward(request, response);
            }
        }
    }
}
