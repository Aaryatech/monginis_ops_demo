package com.monginis.ops.model;

public class GetTotalAmt {

	private String id;
	private float totalAmt;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public float getTotalAmt() {
		return totalAmt;
	}

	public void setTotalAmt(float totalAmt) {
		this.totalAmt = totalAmt;
	}

	@Override
	public String toString() {
		return "GetTotalAmt [id=" + id + ", totalAmt=" + totalAmt + "]";
	}

}
