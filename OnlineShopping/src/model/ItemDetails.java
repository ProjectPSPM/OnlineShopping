package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ItemDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	int userId;

	String itemName;
	int discount;
	String category;
	String subCategory;
	float originalPrice;
	float discountedPrice;
	String brieftDescription;
	String detailedDescription;

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}

	public float getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(float originalPrice) {
		this.originalPrice = originalPrice;
	}

	public float getDiscountedPrice() {
		return discountedPrice;
	}

	public void setDiscountedPrice(float discountedPrice) {
		this.discountedPrice = discountedPrice;
	}


	public String getBrieftDescription() {
		return brieftDescription;
	}

	public void setBrieftDescription(String brieftDescription) {
		this.brieftDescription = brieftDescription;
	}

	public String getDetailedDescription() {
		return detailedDescription;
	}

	public void setDetailedDescription(String detailedDescription) {
		this.detailedDescription = detailedDescription;
	}

	public String getLongDescription() {
		return longDescription;
	}

	public void setLongDescription(String longDescription) {
		this.longDescription = longDescription;
	}

	public String getBrand_or_seller() {
		return brand_or_seller;
	}

	public void setBrand_or_seller(String brand_or_seller) {
		this.brand_or_seller = brand_or_seller;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	String longDescription;
	String brand_or_seller;
	float rating;
}
