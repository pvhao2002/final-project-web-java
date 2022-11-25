package hcmute.edu.tuantran.project_phone.dao;

import hcmute.edu.tuantran.project_phone.entities.Category;
import hcmute.edu.tuantran.project_phone.entities.ProductEntity;
import hcmute.edu.tuantran.project_phone.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    protected ResultSet rs = null;

    public List<Category> getAll(){
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM categories";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));

                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    // Đưa danh sách sản phẩm theo tên sp và miêu tả
    public List<ProductEntity> searchByKey(String key){
        List<ProductEntity> list = new ArrayList<>();
        String sql = "SELECT * FROM product where title like ?";
        try{
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + key + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductEntity product = new ProductEntity();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getLong("price"));
                product.setSize(rs.getString("size"));
                product.setDescription(rs.getString("description"));
                product.setImage(rs.getString("image"));
                product.setType(rs.getString("type"));
                product.setCatid(rs.getInt("catid"));

                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
//    public Category getCategoryById(int id){
//        String sql = "select * from categories where id=?";
//        try {
//            conn = ConnectionUtil.getConnection();
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, id);
//            rs = ps.executeQuery();
//            if(rs.next()) {
//                Category c = new Category(rs.getInt("id"), rs.getString("name"));
//            }
//        }catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
    public List<ProductEntity> getProductByCid(int cid) {
        List<ProductEntity> list = new ArrayList<>();
        String sql = "SELECT * FROM product where catid=?";
        try{
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductEntity product = new ProductEntity();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getLong("price"));
                product.setSize(rs.getString("size"));
                product.setDescription(rs.getString("description"));
                product.setImage(rs.getString("image"));
                product.setType(rs.getString("type"));
                product.setCatid(rs.getInt("catid"));

                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    //lấy ds sp theo ds category id
    public List<ProductEntity> searchByCheck(int[] cid, int index) {
        List<ProductEntity> list = new ArrayList<>();
        String sql = "SELECT * FROM product";
        if(cid != null && cid[0] != 0){
            sql += " where catid in(";
            for(int i = 0; i < cid.length;i++){
                sql += cid[i] + ",";
            }
            if(sql.endsWith(",")){
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ") ORDER BY id LIMIT 12 OFFSET ?";
        }
        try{
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, (index-1)*12);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductEntity product = new ProductEntity();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getLong("price"));
                product.setSize(rs.getString("size"));
                product.setDescription(rs.getString("description"));
                product.setImage(rs.getString("image"));
                product.setType(rs.getString("type"));
                product.setCatid(rs.getInt("catid"));

                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<ProductEntity> getProductsByPrice(double from, double to, int index) {
        List<ProductEntity> list = new ArrayList<>();
        String sql = "SELECT * FROM product where price between ? and ? ORDER BY id LIMIT 12 OFFSET ?";
        try{
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setDouble(1, from);
            ps.setDouble(2, to);
            ps.setInt(3, (index-1)*12);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductEntity product = new ProductEntity();
                product.setId(rs.getInt("id"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getLong("price"));
                product.setSize(rs.getString("size"));
                product.setDescription(rs.getString("description"));
                product.setImage(rs.getString("image"));
                product.setType(rs.getString("type"));
                product.setCatid(rs.getInt("catid"));
                list.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
