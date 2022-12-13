package com.uteshop.controller.shop;

import com.uteshop.model.dao.UserDAO;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import org.junit.jupiter.api.Assertions;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "EditCustomerProfileServlet", value = "/edit-customer")
public class EditCustomerProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/view/web/edit_profile.jsp";

        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String passwordOld = request.getParameter("passwordOld");
        String passwordNew = request.getParameter("passwordNew");
        String passwordComfirm = request.getParameter("passwordComfirm");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String check = null;

        //check phoneNumber
        Pattern pattern = Pattern.compile("\\d*");
        Matcher matcher = pattern.matcher(phone);
        try {
            if (!passwordNew.equals(passwordComfirm)) {
                check = "1";
                request.setAttribute("message", "Mật khẩu nhập lại không trùng khớp!");
                request.setAttribute("check", check);
                request.getRequestDispatcher(url).forward(request, response);
            } else if (!matcher.matches() || (phone.length() != 10 && phone.length() != 11)) {
                check = "2";
                request.setAttribute("message", "Vui lòng nhập đúng số điện thoại!");
                request.setAttribute("check", check);
                request.getRequestDispatcher(url).forward(request, response);
            } else {
                UserDAO userDAO = new UserDAO();
                User checkuser = userDAO.checkEmail(email);
                if (checkuser != null && !checkuser.getPassword().equals(passwordOld)) {
                    check = "3";
                    request.setAttribute("message", "Mật khẩu cũ sai!!!");
                    request.setAttribute("check", check);
                    request.getRequestDispatcher(url).forward(request, response);
                } else if(checkuser != null){
                    check = "0";
                    User user = userDAO.find(checkuser.getId());
                    user.setFullName(name);
                    user.setPassword(passwordNew);
                    user.setPhoneNumber(phone);
                    user.setAddress(address);
                    userDAO.update(user);
                    request.setAttribute("message", "Cập nhật thành công!!!");
                    request.setAttribute("check", check);
                    request.getRequestDispatcher(url).forward(request, response);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
