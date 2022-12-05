package hcmute.edu.tuantran.project_phone.dao;

import hcmute.edu.tuantran.project_phone.entities.Category;
import hcmute.edu.tuantran.project_phone.entities.ProductEntity;
import hcmute.edu.tuantran.project_phone.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Product_cheapDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    protected ResultSet rs = null;

    public List<ProductEntity> getAllProduct(){
        List<ProductEntity> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE type = 're'"; //rẻ
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
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

                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}