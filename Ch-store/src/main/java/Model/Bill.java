package Model;

public class Bill {
    @Override
	public String toString() {
		return "Bill [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", orderQuantity=" + orderQuantity + ", orderDate=" + orderDate + "]";
	}

	private int productId;
    private String productName;
    private double productPrice;
    private int orderQuantity;
    private String orderDate;

    public Bill(int productId, String productName, double productPrice, int orderQuantity, String orderDate) {
        this.productId = productId;
        this.productName = productName;
        this.productPrice = productPrice;
        this.orderQuantity = orderQuantity;
        this.orderDate = orderDate;
    }

    public int getProductId() {
        return productId;
    }

    public String getProductName() {
        return productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public int getOrderQuantity() {
        return orderQuantity;
    }

    public String getOrderDate() {
        return orderDate;
    }
}
