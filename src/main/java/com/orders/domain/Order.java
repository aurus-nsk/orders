package com.orders.domain;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
@Entity
@Table(name = "beauty_order")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@OneToOne
    private Person person;

    private String shopName;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd.MM.yyyy")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dateCreate;
    
    @NotNull
    @Size(min = 2)
    private String productName;

    private String colour;

    private String sizeName;

    @NotNull
    private BigDecimal priceOriginDollars;

    @NotNull
    private BigDecimal priceOrgSaleDollars;

    @NotNull
    private BigDecimal taxDollars;

    private BigDecimal deliveryUsaDollars;

    @NotNull
    private BigDecimal totalDollars;
    
    @NotNull
    private BigDecimal currency;

    @NotNull
    private BigDecimal totalRubles;

    @NotNull
    private Integer weight;
    
    @NotNull
    private BigDecimal priceOfKgDollars;

    @NotNull
    private BigDecimal deliveryRussiaDollars;

    @NotNull
    private BigDecimal currencyDelivery;
    
    @NotNull
    private BigDecimal deliveryRussiaRubles;

    @NotNull
    private BigDecimal totalSumRubles;

	public Order(Person person, String shopName, Date dateCreate, String productName, String colour, String sizeName,
			BigDecimal priceOriginDollars, BigDecimal priceOrgSaleDollars, BigDecimal taxDollars,
			BigDecimal deliveryUsaDollars, BigDecimal totalDollars, BigDecimal currency, BigDecimal totalRubles,
			Integer weight, BigDecimal priceOfKgDollars, BigDecimal deliveryRussiaDollars, BigDecimal currencyDelivery,
			BigDecimal deliveryRussiaRubles, BigDecimal totalSumRubles) {
		this.person = person;
		this.shopName = shopName;
		this.dateCreate = dateCreate;
		this.productName = productName;
		this.colour = colour;
		this.sizeName = sizeName;
		this.priceOriginDollars = priceOriginDollars;
		this.priceOrgSaleDollars = priceOrgSaleDollars;
		this.taxDollars = taxDollars;
		this.deliveryUsaDollars = deliveryUsaDollars;
		this.totalDollars = totalDollars;
		this.currency = currency;
		this.totalRubles = totalRubles;
		this.weight = weight;
		this.priceOfKgDollars = priceOfKgDollars;
		this.deliveryRussiaDollars = deliveryRussiaDollars;
		this.currencyDelivery = currencyDelivery;
		this.deliveryRussiaRubles = deliveryRussiaRubles;
		this.totalSumRubles = totalSumRubles;
	}

	public Order() {
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public Date getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getColour() {
		return colour;
	}

	public void setColour(String colour) {
		this.colour = colour;
	}

	public String getSizeName() {
		return sizeName;
	}

	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}

	public BigDecimal getPriceOriginDollars() {
		return priceOriginDollars;
	}

	public void setPriceOriginDollars(BigDecimal priceOriginDollars) {
		this.priceOriginDollars = priceOriginDollars;
	}

	public BigDecimal getPriceOrgSaleDollars() {
		return priceOrgSaleDollars;
	}

	public void setPriceOrgSaleDollars(BigDecimal priceOrgSaleDollars) {
		this.priceOrgSaleDollars = priceOrgSaleDollars;
	}

	public BigDecimal getTaxDollars() {
		return taxDollars;
	}

	public void setTaxDollars(BigDecimal taxDollars) {
		this.taxDollars = taxDollars;
	}

	public BigDecimal getDeliveryUsaDollars() {
		return deliveryUsaDollars;
	}

	public void setDeliveryUsaDollars(BigDecimal deliveryUsaDollars) {
		this.deliveryUsaDollars = deliveryUsaDollars;
	}

	public BigDecimal getTotalDollars() {
		return totalDollars;
	}

	public void setTotalDollars(BigDecimal totalDollars) {
		this.totalDollars = totalDollars;
	}

	public BigDecimal getCurrency() {
		return currency;
	}

	public void setCurrency(BigDecimal currency) {
		this.currency = currency;
	}

	public BigDecimal getTotalRubles() {
		return totalRubles;
	}

	public void setTotalRubles(BigDecimal totalRubles) {
		this.totalRubles = totalRubles;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public BigDecimal getPriceOfKgDollars() {
		return priceOfKgDollars;
	}

	public void setPriceOfKgDollars(BigDecimal priceOfKgDollars) {
		this.priceOfKgDollars = priceOfKgDollars;
	}

	public BigDecimal getDeliveryRussiaDollars() {
		return deliveryRussiaDollars;
	}

	public void setDeliveryRussiaDollars(BigDecimal deliveryRussiaDollars) {
		this.deliveryRussiaDollars = deliveryRussiaDollars;
	}

	public BigDecimal getCurrencyDelivery() {
		return currencyDelivery;
	}

	public void setCurrencyDelivery(BigDecimal currencyDelivery) {
		this.currencyDelivery = currencyDelivery;
	}

	public BigDecimal getDeliveryRussiaRubles() {
		return deliveryRussiaRubles;
	}

	public void setDeliveryRussiaRubles(BigDecimal deliveryRussiaRubles) {
		this.deliveryRussiaRubles = deliveryRussiaRubles;
	}

	public BigDecimal getTotalSumRubles() {
		return totalSumRubles;
	}

	public void setTotalSumRubles(BigDecimal totalSumRubles) {
		this.totalSumRubles = totalSumRubles;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", person=" + person + ", shopName=" + shopName + ", dateCreate=" + dateCreate
				+ ", productName=" + productName + ", colour=" + colour + ", sizeName=" + sizeName
				+ ", priceOriginDollars=" + priceOriginDollars + ", priceOrgSaleDollars=" + priceOrgSaleDollars
				+ ", taxDollars=" + taxDollars + ", deliveryUsaDollars=" + deliveryUsaDollars + ", totalDollars="
				+ totalDollars + ", currency=" + currency + ", totalRubles=" + totalRubles + ", weight=" + weight
				+ ", priceOfKgDollars=" + priceOfKgDollars + ", deliveryRussiaDollars=" + deliveryRussiaDollars
				+ ", currencyDelivery=" + currencyDelivery + ", deliveryRussiaRubles=" + deliveryRussiaRubles
				+ ", totalSumRubles=" + totalSumRubles + "]";
	}
	
}