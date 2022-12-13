package com.uteshop.controller.shop;

import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import com.uteshop.util.EmailUtil;
import com.uteshop.util.SesstionUtil;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import org.junit.jupiter.api.Assertions;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

@WebServlet(name = "EmailCodeServlet", value = "/email-code")
public class EmailCodeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/email_code.jsp";
        String code = request.getParameter("code");
        String check = null;

        String code_email = SignUpServlet.code_email;
        try {
            if (code != null) {
                if (code.equals(code_email)) {
                    check = "1";
                    UserDAO userDAO = new UserDAO();
                    userDAO.create(SignUpServlet.createdUser);

                    request.setAttribute("message", "Đăng ký thành công, vui lòng đăng nhập lại!!!");
                    request.setAttribute("check", check);
                } else {
                    check = "2";
                    request.setAttribute("message", "Mã xác thực sai!!!");
                    request.setAttribute("check", check);
                }
                request.getRequestDispatcher(url).forward(request, response);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        if(check == null){
            request.getRequestDispatcher(url).forward(request, response);
        }
    }
}
