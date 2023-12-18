package Model;

public class UserOrderInfo {
    private int userId;
    private int totalProducts;
    private double total_price;
    private String phone;
    private String address;
    private String fullname;
    private String orderDate;

    public UserOrderInfo(int userId, int totalProducts, double total_price,
                         String phone, String address, String fullname, String orderDate) {
        this.userId = userId;
        this.totalProducts = totalProducts;
        this.total_price = total_price;
        this.phone = phone;
        this.address = address;
        this.fullname = fullname;
        this.orderDate = orderDate;
    }

    public int getUserId() {
        return userId;
    }

    public int getTotalProducts() {
        return totalProducts;
    }

    public double getTotalPrice() {
        return total_price;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public String getFullname() {
        return fullname;
    }

    public String getOrderDate() {
        return orderDate;
    }

    @Override
    public String toString() {
        return "UserOrderInfo [userId=" + userId + ", totalProducts=" + totalProducts
                + ", total_price=" + total_price + ", phone=" + phone + ", address=" + address
                + ", fullname=" + fullname + ", orderDate=" + orderDate + "]";
    }
}
