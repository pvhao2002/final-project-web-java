/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package net.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.dao.RoleDao;
import net.enity.Role;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author haodeptrai
 */
@WebServlet(urlPatterns = {"/admin-role", "/admin-add-role", "/admin-edit-role", "/admin-delete-role"})
public class RoleController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private RoleDao role;

    @Override
    public void init() throws ServletException {
	super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody\
	role = new RoleDao();
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
	    out.println("<title>Servlet RoleController</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Servlet RoleController at " + request.getContextPath() + "</h1>");
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
		request.getRequestDispatcher("view/admin/add/add-role.jsp").forward(request, response);
	    } else if (url.contains("edit")) {
		loadRole(request, response);
		//request.getRequestDispatcher("view/admin/edit/edit-role.jsp").forward(request, response);
	    } else if (url.contains("delete")) {
		delete(request, response);
	    } else {
		listRole(request, response);
	    }
	} catch (Exception e) {
	}
    }

    public void addRole(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    Role item = new Role();
	    BeanUtils.populate(item, request.getParameterMap());

	    role.insert(item);
	    listRole(request, response);
	} catch (Exception e) {
	}
    }

    public void listRole(HttpServletRequest request, HttpServletResponse response) throws Exception {
	List<Role> list = new ArrayList<Role>();
	list = role.findAll();
	request.setAttribute("listRole", list);
	request.getRequestDispatcher("view/admin/admin-role.jsp").forward(request, response);
    }

    public void editRole(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("roleID"));
	String rName = request.getParameter("roleName");
	Role item = new Role();
	item.setRoleId(id);
	item.setRoleName(rName);
	System.out.println("%" + id + "" + rName);
	log("%" + item.getRoleId() + item.getRoleName());
	role.update(item);
	listRole(request, response);
    }

    public void loadRole(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("rId"));
	Role item = role.getItem(id);
	System.out.println(id + " " + item.getRoleName());
	request.setAttribute("roleItem", item);
	request.getRequestDispatcher("view/admin/edit/edit-role.jsp").forward(request, response);
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("rId"));
	role.delete(id);
	listRole(request, response);
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
		    addRole(request, response);
		    break;
		case "LIST":
		    listRole(request, response);
		    break;
		case "EDIT":
		    editRole(request, response);
		    break;
		case "LOAD":
		    loadRole(request, response);
		    break;
		case "DELETE":
		    delete(request, response);
		    break;

		default:
		    listRole(request, response);
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
