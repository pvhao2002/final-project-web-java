package com.uteshop.controller.shop;

import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.User;
import com.uteshop.util.EmailUtil;
import com.uteshop.util.SesstionUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EmailPasswordServlet", value = "/email-password")
public class EmailPasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/email_password.jsp";
        String username = request.getParameter("username");
        String check = null;

        UserDAO userDAO = new UserDAO();
        User user = userDAO.checkEmail(username);
        try {
            if (user != null) {
                check = "1";
                request.setAttribute("message", "Mật khẩu đã được gửi về email của bạn!!!");
                request.setAttribute("check", check);
                System.out.println(user.getPassword());
                String list = "Mật khẩu: " + user.getPassword();
                EmailUtil.sendEmail(username, "Xem lại mật khẩu tài khoản UTEShop", list);
            }else if(user == null && username != null){
                check = "2";
                request.setAttribute("message", "Tài khoản của bạn chưa được đăng kí!!!");
                request.setAttribute("check", check);
            }
            request.getRequestDispatcher(url).forward(request, response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
