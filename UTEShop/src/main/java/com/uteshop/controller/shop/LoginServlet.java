package com.uteshop.controller.shop;

import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie arr[] = request.getCookies();
        for(Cookie o : arr) {
            if(o.getName().equals("user")){
                request.setAttribute("userC",o.getValue());
            }
            if(o.getName().equals("pass")){
                request.setAttribute("passC",o.getValue());
            }
        }
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/login.jsp";
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember-me");
        String checklogin = null;
        UserDAO userDAO = new UserDAO();
        User user = userDAO.checkEmailAndPassword(username, password);
        if(user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("account", user);
            session.setMaxInactiveInterval(-1); //lưu sesion đến khi đóng trình duyệt

            Cookie u = new Cookie("user", username);
            Cookie p = new Cookie("pass", password);
            u.setMaxAge(3600);
            if(remember != null) {
                p.setMaxAge(3600);
            }else{
                p.setMaxAge(0);
            }
            response.addCookie(u);
            response.addCookie(p);

            response.sendRedirect("home");
        }else if(username != null || password != null){
            checklogin = "1";
            request.setAttribute("message", "Login failed!");
            request.setAttribute("checklogin", checklogin);

            System.out.println(username);

            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
        }else {
            request.setAttribute("checklogin", checklogin);
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
        }
    }
}
