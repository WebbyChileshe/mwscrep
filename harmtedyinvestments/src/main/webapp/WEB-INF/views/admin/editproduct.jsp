<%@ page import="com.harmtedyshop.model.Product" %>
<%@ page import="com.harmtedyshop.dao.admin.ProductService" %>
<%
    Product product = (Product) request.getAttribute("product");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/path/to/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2>Edit Product</h2>
        <form action="${pageContext.request.contextPath}/updateProduct" method="post">
            <input type="hidden" name="productId" value="<%= product.getProductId() %>">
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" id="productName" name="productName" class="form-control" value="<%= product.getProductName() %>" required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price</label>
                <input type="number" id="price" name="price" class="form-control" value="<%= product.getPrice() %>" required step="0.01">
            </div>
            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity</label>
                <input type="number" id="quantity" name="quantity" class="form-control" value="<%= product.getQuantityInStock() %>" required min="1">
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea id="description" name="description" class="form-control" rows="3" required><%= product.getDescription() %></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Save Changes</button>
            <a href="${pageContext.request.contextPath}/warehouseproducts" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
    <script src="${pageContext.request.contextPath}/path/to/bootstrap.bundle.min.js"></script>
</body>
</html>
