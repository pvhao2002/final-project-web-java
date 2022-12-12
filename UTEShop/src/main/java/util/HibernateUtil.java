/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

/**
 *
 * @author lethithanhtuyet
 */
import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Information;
import com.uteshop.model.entity.OrderDetail;
import com.uteshop.model.entity.Orders;
import com.uteshop.model.entity.Product;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;
import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {

    private static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();

                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
                settings.put(Environment.URL, "jdbc:mysql://localhost:3306/uteshop");
                settings.put(Environment.USER, "root");
                settings.put(Environment.PASS, "12345");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");
                settings.put(Environment.SHOW_SQL, "true");
                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
                settings.put(Environment.HBM2DDL_AUTO, "update");

                configuration.setProperties(settings);
                configuration.addAnnotatedClass(Product.class);                                                                                                                                                                                                                                 
                configuration.addAnnotatedClass(Brand.class);
                configuration.addAnnotatedClass(Category.class);
                configuration.addAnnotatedClass(Information.class);
                configuration.addAnnotatedClass(Orders.class);
                configuration.addAnnotatedClass(OrderDetail.class);
                configuration.addAnnotatedClass(User.class);
                configuration.addAnnotatedClass(Role.class);

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties())
                        .build();

                sessionFactory = configuration.buildSessionFactory(serviceRegistry);

                return sessionFactory;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return sessionFactory;
    }
}
