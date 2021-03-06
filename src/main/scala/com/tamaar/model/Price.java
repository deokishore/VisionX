package com.tamaar.model;// default package
// Generated Jan 17, 2016 1:12:59 PM by Hibernate Tools 3.4.0.CR1

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Price generated by hbm2java
 */
@Entity
@Table(name = "price", catalog = "ozuygqof_tamaar")
public class Price implements java.io.Serializable {

	private int priceId;
	private BigDecimal amount;
	private BigDecimal discount;
	private Set<Product> products = new HashSet(0);

	public Price() {
	}

	public Price(int priceId) {
		this.priceId = priceId;
	}

	public Price(int priceId, BigDecimal amount, BigDecimal discount,
			Set<Product> products) {
		this.priceId = priceId;
		this.amount = amount;
		this.discount = discount;
		this.products = products;
	}

	@Id
	@Column(name = "price_id", unique = true, nullable = false)
	public int getPriceId() {
		return this.priceId;
	}

	public void setPriceId(int priceId) {
		this.priceId = priceId;
	}

	@Column(name = "amount", precision = 5)
	public BigDecimal getAmount() {
		return this.amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	@Column(name = "discount", precision = 5)
	public BigDecimal getDiscount() {
		return this.discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "price")
	@JsonIgnore
	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}
