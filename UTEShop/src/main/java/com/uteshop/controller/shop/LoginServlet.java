package com.uteshop.controller.shop;

import com.uteshop.model.dao.RoleDAO;
import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import com.uteshop.util.CookieUtil;
import com.uteshop.util.SesstionUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    public static String RoleName;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        String userC = CookieUtil.getCookieValue(cookies, "user");
        String passC = CookieUtil.getCookieValue(cookies, "pass");
        request.setAttribute("userC",userC);
        request.setAttribute("passC",passC);

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/view/web/login.jsp";
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember-me");
        String checklogin = null;
        UserDAO userDAO = new UserDAO();
        User user = userDAO.checkEmailAndPassword(username, password);
        try {
            if (user != null) {
                RoleDAO roleDAO = new RoleDAO();
                Role role = roleDAO.find((user.getRoleid().getRoleId()));
                if (role != null) {
                    RoleName = role.getRoleName();
                }

                SesstionUtil.getInstance().putValue(request,"account", user);
                SesstionUtil.getInstance().settimeValue(request);

                Cookie u = new Cookie("user", username);
                Cookie p = new Cookie("pass", password);
                u.setMaxAge(60*60);
                if (remember != null) {
                    p.setMaxAge(60*60);
                } else {
                    p.setMaxAge(0);
                }
                response.addCookie(u);
                response.addCookie(p);

                response.sendRedirect("home");
            } else if (username != null || password != null) {
                checklogin = "1";
                request.setAttribute("message", "Đăng nhập thất bại!");
                request.setAttribute("checklogin", checklogin);

                System.out.println(username);

                request.getRequestDispatcher(url).forward(request, response);
            } else {
                request.setAttribute("checklogin", checklogin);
                request.getRequestDispatcher(url).forward(request, response);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
