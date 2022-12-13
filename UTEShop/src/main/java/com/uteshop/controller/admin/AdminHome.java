/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.uteshop.controller.admin;

import com.uteshop.model.dao.*;
import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Category;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author haodeptrai
 */
@WebServlet(urlPatterns = {"/admin-home"})
public class AdminHome extends HttpServlet {

    private static final long serialVersionUID = 1L;
	private ProductDAO proDao;
	private UserDAO userDAO;
	private CategoryDAO categoryDAO;
	private BrandDAO brandDAO;
	private InformationDAO infoDAO;
	private RoleDAO roleDAO;
	private OrderDAO orderDAO;
	private OrderDetailDAO orderDetailDAO;

	@Override
	public void init() throws ServletException {
		super.init();
		proDao = new ProductDAO();
		userDAO = new UserDAO();
		categoryDAO = new CategoryDAO();
		brandDAO = new BrandDAO();
		infoDAO = new InformationDAO();
		roleDAO = new RoleDAO();
		orderDAO = new OrderDAO();
		orderDetailDAO = new OrderDetailDAO();
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	try ( PrintWriter out = response.getWriter()) {
	    /* TODO output your page here. You may use following sample code. */
	    out.println("<!DOCTYPE html>");
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Servlet AdminHome</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Servlet AdminHome at " + request.getContextPath() + "</h1>");
	    out.println("</body>");
	    out.println("</html>");
	}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

		int countPro = proDao.count();
		int countUser = userDAO.count();
		int countcate = categoryDAO.count();
		int countorder = orderDAO.count();
		int countorderdetail = orderDetailDAO.count();
		int countinfor = infoDAO.count();
		int countbrand = brandDAO.count();
		int countrole = roleDAO.count();

		request.setAttribute("countPro", countPro);
		request.setAttribute("countUser", countUser);
		request.setAttribute("countCate", countcate);
		request.setAttribute("countOrder", countorder);
		request.setAttribute("countOrderDetail", countorderdetail);
		request.setAttribute("countInfo", countinfor);
		request.setAttribute("countBrand", countbrand);
		request.setAttribute("countRole", countrole);

		request.getRequestDispatcher("/view/admin/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
	return "Short description";
    }// </editor-fold>

}
