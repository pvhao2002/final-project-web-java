/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package net.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.dao.UserDao;
import net.enity.Brand;
import net.enity.User;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author haodeptrai
 */
@WebServlet(urlPatterns = {"/admin-user", "/admin-add-user", "/admin-edit-user", "/admin-delete-user"})
public class UserController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private UserDao dao;

    @Override
    public void init() throws ServletException {
	super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
	dao = new UserDao();
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	try ( PrintWriter out = response.getWriter()) {
	    /* TODO output your page here. You may use following sample code. */
	    out.println("<!DOCTYPE html>");
	    out.println("<html>");
	    out.println("<head>");
	    out.println("<title>Servlet UserController</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Servlet UserController at " + request.getContextPath() + "</h1>");
	    out.println("</body>");
	    out.println("</html>");
	}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	try {

	    String url = request.getRequestURL().toString();
	    if (url.contains("add")) {
		request.getRequestDispatcher("view/admin/add/add-user.jsp").forward(request, response);
	    } else if (url.contains("edit")) {
		load(request, response);
		//request.getRequestDispatcher("view/admin/edit/edit-role.jsp").forward(request, response);
	    } else if (url.contains("delete")) {
		delete(request, response);
	    } else {
		list(request, response);
	    }
	} catch (Exception e) {
	}
    }

    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    User item = new User();
	    BeanUtils.populate(item, request.getParameterMap());
	    dao.insert(item);
	    list(request, response);
	} catch (Exception e) {
	}
    }

    public void list(HttpServletRequest request, HttpServletResponse response) throws Exception {
	List<User> list = null;
	list = dao.findAll();
	request.setAttribute("list", list);
	request.getRequestDispatcher("view/admin/admin-user.jsp").forward(request, response);
    }

    public void edit(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("id"));
	User item = new User();
	
	BeanUtils.populate(item, request.getParameterMap());
	item.setId(id);
	dao.update(item);
	list(request, response);
    }

    public void load(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("id"));
	User item = dao.getItem(id);
	request.setAttribute("item", item);
	request.getRequestDispatcher("view/admin/edit/edit-user.jsp").forward(request, response);
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("id"));
	dao.delete(id);
	list(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	try {
	    String cmd = request.getParameter("command");
	    if (cmd == null) {
		cmd = "LIST";
	    }
	    switch (cmd) {
		case "ADD":
		    add(request, response);
		    break;
		case "LIST":
		    list(request, response);
		    break;
		case "EDIT":
		    edit(request, response);
		    break;
		case "LOAD":
		    load(request, response);
		    break;
		case "DELETE":
		    delete(request, response);
		    break;

		default:
		    list(request, response);
	    }
	} catch (Exception e) {
	}
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
