package hcmute.edu.tuantran.project_phone.dao;

import hcmute.edu.tuantran.project_phone.entities.Category;
import hcmute.edu.tuantran.project_phone.entities.ProductEntity;
import hcmute.edu.tuantran.project_phone.util.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductsDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    protected ResultSet rs = null;

    public int getNumberPage(){
        String sql = "SELECT COUNT(*) FROM product";
        try {
            conn = ConnectionUtil.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 12;
                if(total % 12 != 0){
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<ProductEntity> getAllProduct(int index){
        List<ProductEntity> products = new ArrayList<>();
        String sql = "SELECT * FROM product ORDER BY id LIMIT 12 OFFSET ?";
        try {
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

                products.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
}
