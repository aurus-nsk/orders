package com.orders.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
@Entity
@Table(name = "settings")
public class Settings {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String skey;
    private String svalue;

	public Settings() {
	}

	public Settings(Long id, String skey, String svalue) {
		super();
		this.id = id;
		this.skey = skey;
		this.svalue = svalue;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSkey() {
		return skey;
	}

	public void setSkey(String skey) {
		this.skey = skey;
	}

	public String getSvalue() {
		return svalue;
	}

	public void setSvalue(String svalue) {
		this.svalue = svalue;
	}

	@Override
	public String toString() {
		return "Settings [id=" + id + ", skey=" + skey + ", svalue=" + svalue + "]";
	}
	
}
