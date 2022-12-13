package com.uteshop.controller.shop;

import com.uteshop.model.dao.BrandDAO;
import com.uteshop.model.dao.CategoryDAO;
import com.uteshop.model.dao.ProductDAO;
import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Product;

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

    //Kiểm tra có chọn checkbox không
    private boolean ischeck(int d, int[] id){
        if(id ==null){
            return false;
        }else{
            for(int i = 0; i < id.length; i++){
                if(id[i] == d){
                    return true;
                }
            }
            return false;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url ="/view/web/shop.jsp";

        String[] pp={"Dưới 2 triệu","Từ 2-4 triệu","Từ 4-7 triệu","Từ 7-13 triệu","Từ 13-20 triệu","Trên 20 triệu"};
        int numberPage = 0;
        String index = request.getParameter("index");
        if(index==null) {
            index = "1";
        }
        int indexPage = Integer.parseInt(index);

        boolean[] pb=new boolean[pp.length+1];
        CategoryDAO categoryDAO = new CategoryDAO();
        BrandDAO brandDAO = new BrandDAO();
        ProductDAO productsDAO = new ProductDAO();
        List<Product> products = new ArrayList<>();

        List<Brand> brand = brandDAO.getAll();
        List<Category> category = categoryDAO.getAll();
        boolean[] chid = new boolean[brand.size()+1];

        String sortprice1 = request.getParameter("sortprice1");
        String sortprice2 = request.getParameter("sortprice2");
        try {
            if (sortprice1 != null) {
                if (sortprice1.equals("1")) {
                    products = productsDAO.sortByPriceDesc((indexPage - 1) * 12);
                    numberPage = productsDAO.getNumberPage();
                }
            }
            if (sortprice2 != null) {
                if (sortprice2.equals("2")) {
                    products = productsDAO.sortByPriceAsc((indexPage - 1) * 12);
                    numberPage = productsDAO.getNumberPage();
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        String sortname1 = request.getParameter("sortname1");
        String sortname2 = request.getParameter("sortname2");
        try {
            if (sortname1 != null) {
                if (sortname1.equals("1")) {
                    products = productsDAO.sortByNameDesc((indexPage - 1) * 12);
                    numberPage = productsDAO.getNumberPage();
                }
            }
            if (sortname2 != null) {
                if (sortname2.equals("2")) {
                    products = productsDAO.sortByNameAsc((indexPage - 1) * 12);
                    numberPage = productsDAO.getNumberPage();
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        String cid_raw = request.getParameter("cid"); // category ở trang home
        int cid=0;
        try {
            if (cid_raw != null) {
                cid = Integer.parseInt(cid_raw);
                products = productsDAO.listByCategory(cid);
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        String brandId_raw = request.getParameter("brandId"); // brand ở trang home
        int brandId=0;
        try {
            if (brandId_raw != null) {
                brandId = Integer.parseInt(brandId_raw);
                products = productsDAO.listByBrand(brandId);

            }else{
                chid[0]=true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        String keyheader = request.getParameter("search");
        try {
            if (keyheader != null) {
                products = productsDAO.searchHeader(keyheader);
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        String key = request.getParameter("key");
        try {
            if (key != null) {
                products = productsDAO.search(key);
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        String [] cidd_raw = request.getParameterValues("cidd"); //thương hiệu
        int[] cidd = null;
        int check = 0;
        try{
            if(cidd_raw != null){
                cidd = new int[cidd_raw.length];
                for(int i=0; i<cidd.length;i++){
                    cidd[i] = Integer.parseInt(cidd_raw[i]);
                    if(cidd[i] == 0) { // tít lại all thì sẽ getAll lại
                        chid[0] = true;
                        products = productsDAO.getAllProduct((indexPage-1)*12);
                        numberPage = productsDAO.getNumberPage();
                        check = 1;
                        break;
                    }
                }
                if(check == 0) {
                    products = productsDAO.searchByCheck(cidd); // lấy từng sp khi check từng brand
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        // tít checkbox được chọn
        try {
            if ((cidd_raw != null) && (cidd[0] != 0)) {
                chid[0] = false;
                for (int i = 1; i < chid.length; i++) {
                    if (ischeck(brand.get(i - 1).getBrandId(), cidd)) {
                        chid[i] = true;
                    } else {
                        chid[i] = false;
                    }
                }
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        String [] price = request.getParameterValues("price");
        try {
            if (price != null) {
                long from = 0, to = 0;
                for (int i = 0; i < price.length; i++) {
                    List<Product> temp = new ArrayList<>();
                    if (price[i].equals("0")) {
                        pb[0] = true;
                        products = productsDAO.getAllProduct((indexPage - 1) * 12);
                        numberPage = productsDAO.getNumberPage();
                        break;
                    } else {
                        if (price[i].equals("1")) {
                            from = 0;
                            to = 2000000;
                            temp = productsDAO.getProductsByPrice(from, to);
                            products.addAll(temp);
                            pb[1] = true;

                            for (Product product : products) {
                                System.out.println(product.getProductName() + " - " + product.getProductName());
                            }
                        }
                        if (price[i].equals("2")) {
                            from = 2000000;
                            to = 4000000;
                            temp = productsDAO.getProductsByPrice(from, to);
                            products.addAll(temp);
                            pb[2] = true;
                        }
                        if (price[i].equals("3")) {
                            from = 4000000;
                            to = 7000000;
                            temp = productsDAO.getProductsByPrice(from, to);
                            products.addAll(temp);
                            pb[3] = true;
                        }
                        if (price[i].equals("4")) {
                            from = 7000000;
                            to = 13000000;
                            temp = productsDAO.getProductsByPrice(from, to);
                            products.addAll(temp);
                            pb[4] = true;
                        }
                        if (price[i].equals("5")) {
                            from = 13000000;
                            to = 20000000;
                            temp = productsDAO.getProductsByPrice(from, to);
                            products.addAll(temp);
                            pb[5] = true;
                        }
                        if (price[i].equals("6")) {
                            from = 20000000;
                            to = 50000000;
                            temp = productsDAO.getProductsByPrice(from, to);
                            products.addAll(temp);
                            pb[6] = true;
                        }
                    }
                }
            }else{
                pb[0] = true;
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        try {
            if ((price == null && cidd_raw == null && cid_raw == null && key == null && keyheader == null && brandId_raw == null
                    && sortprice1 == null && sortprice2 == null && sortname1 == null && sortname2 == null)) {
                products = productsDAO.getAllProduct((indexPage - 1) * 12);
                numberPage = productsDAO.getNumberPage();
            }
        }catch(Exception e){
            e.printStackTrace();
        }

        request.setAttribute("databrand", brand);
        request.setAttribute("data", category);
        request.setAttribute("products", products);
        request.setAttribute("pp", pp);
        request.setAttribute("pb", pb);
        request.setAttribute("cid", cid);
        request.setAttribute("chid", chid);
        request.setAttribute("brandId", brandId);
        request.setAttribute("numberPage", numberPage);
        request.setAttribute("indexPage", indexPage);
        request.setAttribute("sortname1", sortname1);
        request.setAttribute("sortname2", sortname2);
        request.setAttribute("sortprice1", sortprice1);
        request.setAttribute("sortprice2", sortprice2);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
