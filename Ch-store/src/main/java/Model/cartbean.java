package Model;

public class cartbean {
	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public cartbean(Products products, int quantity) {
		super();
		this.products = products;
		this.quantity = quantity;
	}

	private Products products;
	private int quantity;



}
