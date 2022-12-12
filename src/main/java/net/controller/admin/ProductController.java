/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package net.controller.admin;
import java.text.SimpleDateFormat;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.dao.*;
import net.enity.*;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.converters.*;
import org.apache.commons.beanutils.ConvertUtils;

/**
 *
 * @author haodeptrai
 */
@WebServlet(urlPatterns = {"/admin-product", "/admin-edit-product", "/admin-add-product", "/admin-delete-product"})
public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ProductDao dao;
    private CategoryDao categoryDao;
    private BrandDao brandDao;
    private InformationDao infoDao;

    @Override
    public void init() throws ServletException {
	super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
	dao = new ProductDao();
	categoryDao = new CategoryDao();
	brandDao = new BrandDao();
	infoDao = new InformationDao();
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
	    out.println("<title>Servlet ProductController</title>");
	    out.println("</head>");
	    out.println("<body>");
	    out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
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
		List<Category> listCate = categoryDao.findAll();
		List<Brand> listBrand = brandDao.findAll();
		List<Information> listInfo = infoDao.findAll();

		request.setAttribute("listCate", listCate);
		request.setAttribute("listBrand", listBrand);
		request.setAttribute("listInfo", listInfo);
		request.getRequestDispatcher("/view/admin/add/add-product.jsp").forward(request, response);
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

    @SuppressWarnings("unchecked")
    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
//	    DateTimeConverter dtc = new DateConverter(new Date());
//	    dtc.setPattern("dd/MM/yyyy");
//	    ConvertUtils.register(dtc, Date.class);
//	    Product item = new Product();

	    String proName = request.getParameter("productName");
	    String proImg = request.getParameter("image");
	    String proDecr = request.getParameter("description");
	    Long price = Long.valueOf(request.getParameter("price"));
	    Date releaseDate = new SimpleDateFormat("yyyy-dd-MM").parse(request.getParameter("releaseDate"));
	    Category cate = categoryDao.getItem(Integer.valueOf(request.getParameter("category")));
//	    Brand brand = brandDao.getItem(Integer.parseInt(request.getParameter("brand")));
//	    Information info = infoDao.getItem(Integer.parseInt(request.getParameter("info")));
	    System.out.println(proName);
	    System.out.println(proImg);
	    System.out.println(proDecr);
	    System.out.println(price.toString());
	    System.out.println(cate.toString());
	    
	    
//	    System.out.println(request.getParameter("category"));
//	    System.out.println(request.getParameter("brand"));
//	    System.out.println(request.getParameter("info"));
	   // BeanUtils.populate(item, request.getParameterMap());
	    
//	    String proName = request.getParameter("productName");
//	    String image = request.getParameter("image");
//	    String decrib = request.getParameter("description");
//	    Long price = Long.valueOf(request.getParameter("price"));
//	    Date releaseDate = 
	    //dao.insert(item);
	    list(request, response);
	} catch (Exception e) {
	    System.out.println("error");
	}
    }

    public void list(HttpServletRequest request, HttpServletResponse response) throws Exception {
	List<Product> list = null;
	list = dao.findAll();
	request.setAttribute("list", list);
	request.getRequestDispatcher("view/admin/admin-product.jsp").forward(request, response);
    }

    @SuppressWarnings("unchecked")
    public void edit(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("id"));
	Product item = new Product();

	BeanUtils.populate(item, request.getParameterMap());
	item.setProductId(id);
	dao.update(item);
	list(request, response);
    }

    public void load(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("id"));
	Product item = dao.getItem(id);
	request.setAttribute("item", item);
	request.getRequestDispatcher("view/admin/edit/edit-product.jsp").forward(request, response);
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
	Integer id = Integer.parseInt(request.getParameter("id"));
	dao.delete(id);
	list(request, response);
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
