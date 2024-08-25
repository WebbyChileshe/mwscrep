package testing;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.harmtedyshop.dao.admin.ProductDAO;
import com.harmtedyshop.model.Product;

public class Test {

	public static List<Product> retrieveProducts() {
	    // Create an instance of ProductDAO
	    ProductDAO pd = new ProductDAO();
	    List<Product> products = new ArrayList<>();

	    try {
	        // Retrieve products from the database
	        products = pd.getAllProducts();
	    } catch (SQLException e) {
	        // Handle SQL exceptions
	        e.printStackTrace();
	        // Optionally, log the error or notify the user
	    }

	    // Return the list of products
	    return products;
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println(Test.retrieveProducts());
	}

}
