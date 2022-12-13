package com.uteshop.controller.shop;

import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Product;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import com.uteshop.util.EmailUtil;
import com.uteshop.util.SesstionUtil;
import org.junit.jupiter.api.Assertions;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "SignUpServlet", value = "/signup")
public class SignUpServlet extends HttpServlet {
    public static User createdUser;
    public static String code_email;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/view/web/registration.jsp";

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
        String re_pass = request.getParameter("re_pass");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String check = null;
        Matcher matcher = null;
        try {
            if(phone != null ) {
                //check phoneNumber
                Pattern pattern = Pattern.compile("\\d*");
                matcher = pattern.matcher(phone);
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        try {
            if(name != null && email != null && password != null && re_pass != null && address != null && phone != null) {
                if (!password.equals(re_pass)) {
                    check = "1";
                    request.setAttribute("message", "Mật khẩu nhập lại không trùng khớp!");
                    request.setAttribute("check", check);
                }
                else if (!matcher.matches() || (phone.length() != 10 && phone.length() != 11)) {
                    check = "2";
                    request.setAttribute("message", "Vui lòng nhập đúng số điện thoại!");
                    request.setAttribute("check", check);
                } else {
                    UserDAO userDAO = new UserDAO();
                    User user = userDAO.checkEmail(email);
                    if (user == null) {
                        String code = EmailUtil.getRandomCode();
                        SesstionUtil.getInstance().putValue(request,"email_code", code);
                        SesstionUtil.getInstance().settimeValue(request);

                        check = "0";
                        User acc = new User();
                        acc.setFullName(name);
                        acc.setEmail(email);
                        acc.setPassword(password);
                        acc.setPhoneNumber(phone);
                        acc.setAddress(address);

                        Role roleid = new Role();
                        roleid.setRoleId(1);
                        acc.setRoleid(roleid);
                        createdUser = acc;

                        code_email = (String) SesstionUtil.getInstance().getValue(request, "email_code");
                        String list = "Vui lòng xác minh tài khoản của bạn bằng mã này: " + code_email;
                        EmailUtil.sendEmail(email, "Xác minh email UTEShop", list);

                        request.setAttribute("message", "Xác thực mã được gửi trong Email!!!");
                        request.setAttribute("check", check);
                    } else {
                        check = "3";
                        request.setAttribute("message", "Email đã tồn tại!");
                        request.setAttribute("check", check);
                    }
                }
            }
            request.getRequestDispatcher(url).forward(request, response);
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
