package com.harmtedyshop.dao.admin;

import java.sql.SQLException;
import java.util.List;

import com.harmtedyshop.model.Product;

public class ProductService {
    private ProductDAO productDAO = new ProductDAO();

    public List<Product> getProducts() throws SQLException {
        return productDAO.getAllProducts();
    }

    public Product getProductById(int id) throws SQLException {
        return productDAO.getProductById(id);
    }

    public void updateProduct(Product product) throws SQLException {
        productDAO.updateProduct(product);
    }

    public void deleteProduct(int id) throws SQLException {
        productDAO.deleteProduct(id);
    }
}
