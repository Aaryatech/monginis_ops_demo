package com.monginis.ops.model.newpos;

public class ItemListForCustomerBill {
	
	private int itemId;
	private float orignalMrp;
	private float qty; 
	private String itemName;
	private String uom;
	private int isDecimal;
	private float taxPer;
	private float taxableAmt;
	private float taxAmt;
	private float total;
	private String hsn;
	
	
	
	
	public String getHsn() {
		return hsn;
	}
	public void setHsn(String hsn) {
		this.hsn = hsn;
	}
	public int getIsDecimal() {
		return isDecimal;
	}
	public void setIsDecimal(int isDecimal) {
		this.isDecimal = isDecimal;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public float getOrignalMrp() {
		return orignalMrp;
	}
	public void setOrignalMrp(float orignalMrp) {
		this.orignalMrp = orignalMrp;
	} 
	public float getQty() {
		return qty;
	}
	public void setQty(float qty) {
		this.qty = qty;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public float getTaxPer() {
		return taxPer;
	}
	public void setTaxPer(float taxPer) {
		this.taxPer = taxPer;
	}
	public float getTaxableAmt() {
		return taxableAmt;
	}
	public void setTaxableAmt(float taxableAmt) {
		this.taxableAmt = taxableAmt;
	}
	public float getTaxAmt() {
		return taxAmt;
	}
	public void setTaxAmt(float taxAmt) {
		this.taxAmt = taxAmt;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	
	public String getUom() {
		return uom;
	}
	public void setUom(String uom) {
		this.uom = uom;
	}
	
	
	@Override
	public String toString() {
		return "ItemListForCustomerBill [itemId=" + itemId + ", orignalMrp=" + orignalMrp + ", qty=" + qty
				+ ", itemName=" + itemName + ", uom=" + uom + ", isDecimal=" + isDecimal + ", taxPer=" + taxPer
				+ ", taxableAmt=" + taxableAmt + ", taxAmt=" + taxAmt + ", total=" + total + ", hsn=" + hsn + "]";
	}
	
}
