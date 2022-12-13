package com.uteshop.controller.shop;

import com.uteshop.model.dao.ContactDAO;
import com.uteshop.model.entity.Contact;
import org.junit.jupiter.api.Assertions;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ContactServlet", value = "/contact")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/contact.jsp";
        String check = null;
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String phone = request.getParameter("company_name");
        String message = request.getParameter("message");

        ContactDAO contactDAO = new ContactDAO();
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setSubject(subject);
        contact.setPhoneNumber(phone);
        contact.setMessage(message);

        if(email != null && name != null && subject != null && phone != null && message != null) {
            contactDAO.create(contact);
            check = "1";
            request.setAttribute("message", "Cảm ơn bạn đã liên hệ với chúng tôi!!!");
            request.setAttribute("check", check);
        }

        request.getRequestDispatcher(url).forward(request, response);
    }
}
