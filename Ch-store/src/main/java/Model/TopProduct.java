package Model;

public class TopProduct {
	private int id;
	private String images;
	private String title;
	private double price;
	private int totalQuantitySold;

	public TopProduct(int id, String images, String title, double price, int totalQuantitySold) {
		this.id = id;
		this.images = images;
		this.title = title;
		this.price = price;
		this.totalQuantitySold = totalQuantitySold;
	}

	// Các phương thức getter cho các thuộc tính

	public int getId() {
		return id;
	}

	public String getImages() {
		return images;
	}

	public String getTitle() {
		return title;
	}

	public double getPrice() {
		return price;
	}

	public int getTotalQuantitySold() {
		return totalQuantitySold;
	}

	@Override
	public String toString() {
		return "TopProduct [id=" + id + ", images=" + images + ", title=" + title + ", price=" + price
				+ ", totalQuantitySold=" + totalQuantitySold + "]";
	}
	
}
