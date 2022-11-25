package hcmute.edu.tuantran.project_phone.controllers;

import hcmute.edu.tuantran.project_phone.dao.*;
import hcmute.edu.tuantran.project_phone.entities.Category;
import hcmute.edu.tuantran.project_phone.entities.ProductEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShopServlet", value = "/shop")
public class ShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/shop.jsp";

        String index = request.getParameter("index");
        if(index==null) {
            index = "1";
        }
        int indexPage = Integer.parseInt(index);
        List<ProductEntity> products = new ArrayList<>();
        ProductsDAO productsDAO = new ProductsDAO();

        products = productsDAO.getAllProduct(indexPage);
        request.setAttribute("products", products);
        request.setAttribute("indexPage", indexPage);

        int numberPage = 0;
        numberPage = productsDAO.getNumberPage();
        request.setAttribute("numberPage", numberPage);


        CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> list = categoryDAO.getAll();

        String[] pp={"Dưới 2 triệu","Từ 2-4 triệu","Từ 4-7 triệu","Từ 7-13 triệu","Từ 13-20 triệu","Trên 20 triệu"};
        boolean[] pb=new boolean[pp.length+1];
        pb[0]=true; /*load trang luôn chọn all*/

        boolean[] chid = new boolean[list.size()+1]; /*thương hiệu*/
        chid[0]=true; /*load trang luôn chọn all*/
        
        request.setAttribute("data", list);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        request.setAttribute("chid", chid);
        request.setAttribute("cid", 0);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
