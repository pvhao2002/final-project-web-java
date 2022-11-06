package hcmute.edu.tuantran.project_phone.dao;

import hcmute.edu.tuantran.project_phone.entities.ProductEntity;
import hcmute.edu.tuantran.project_phone.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Product_discountDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    protected ResultSet rs = null;

    public List<ProductEntity> getAllProduct() {
        List<ProductEntity> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE type = 'giamgia'"; //giảm giá
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                ProductEntity product = new ProductEntity();
                product.setId(rs.getLong("id"));
                product.setTitle(rs.getString("title"));
                product.setPrice(rs.getString("price"));
                product.setSize(rs.getString("size"));
                product.setDescription(rs.getString("description"));
                product.setImage(rs.getString("image"));
                product.setType(rs.getString("type"));

                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}
