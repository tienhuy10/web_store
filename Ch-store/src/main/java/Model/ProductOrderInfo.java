package Model;

public class ProductOrderInfo {

	private int totalProducts;
	private double totalCapital;
	private double totalSales;
	private double totalProfit;

	public ProductOrderInfo(int totalProducts, double totalCapital, double totalSales, double totalProfit) {
	        this.totalProducts = totalProducts;
	        this.totalCapital = totalCapital;
	        this.totalSales = totalSales;
	        this.totalProfit = totalProfit;
	    }

	public int getTotalProducts() {
		return totalProducts;
	}

	public double getTotalCapital() {
		return totalCapital;
	}

	public double getTotalSales() {
		return totalSales;
	}

	public double getTotalProfit() {
		return totalProfit;
	}
}
