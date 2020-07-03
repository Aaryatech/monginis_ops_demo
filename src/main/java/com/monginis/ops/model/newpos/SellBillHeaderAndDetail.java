package com.monginis.ops.model.newpos;

import java.util.List;
  
public class SellBillHeaderAndDetail {
	
	private int sellBillNo; 
	private String invoiceNo; 
	private String billDate; 
	private char billType; 
	private String timestamp; 
	private int frId; 
	private String frCode; 
	private float taxableAmt; 
	private float total_tax; 
	private float grandTotal; 
	private int discType;   
	private float discountPer; 
	private float discountAmt; 
	private float payableAmt; 
	private int paymentMode; 
	private float paidAmt; 
	private float remainingAmt; 
	private float discAmtItem;  
	private float advanceAmt;   
	private int custId; 
	private String userName; 
	private String userGstNo; 
	private String userPhone; 
	private int status; 
	private int isDairyMartBill; 
	private String couponNo; 
	private float custLoyaltyPtRate; 
	private float custLoyaltyPt; 
	private int delStatus; 
	private String custName;
	private String gstNo; 
	private int extInt1; //cashier//salesperson

	private List<SellBillDetailForPos> list;
	private List<TaxLabListForPos> taxlabList;
	
	public int getExtInt1() {
		return extInt1;
	}
	public void setExtInt1(int extInt1) {
		this.extInt1 = extInt1;
	}
	public int getSellBillNo() {
		return sellBillNo;
	}
	public void setSellBillNo(int sellBillNo) {
		this.sellBillNo = sellBillNo;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public String getBillDate() {
		return billDate;
	}
	public void setBillDate(String billDate) {
		this.billDate = billDate;
	}
	public char getBillType() {
		return billType;
	}
	public void setBillType(char billType) {
		this.billType = billType;
	}
	public String getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}
	public int getFrId() {
		return frId;
	}
	public void setFrId(int frId) {
		this.frId = frId;
	}
	public String getFrCode() {
		return frCode;
	}
	public void setFrCode(String frCode) {
		this.frCode = frCode;
	}
	public float getTaxableAmt() {
		return taxableAmt;
	}
	public void setTaxableAmt(float taxableAmt) {
		this.taxableAmt = taxableAmt;
	}
	public float getTotal_tax() {
		return total_tax;
	}
	public void setTotal_tax(float total_tax) {
		this.total_tax = total_tax;
	}
	public float getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(float grandTotal) {
		this.grandTotal = grandTotal;
	}
	public int getDiscType() {
		return discType;
	}
	public void setDiscType(int discType) {
		this.discType = discType;
	}
	public float getDiscountPer() {
		return discountPer;
	}
	public void setDiscountPer(float discountPer) {
		this.discountPer = discountPer;
	}
	public float getDiscountAmt() {
		return discountAmt;
	}
	public void setDiscountAmt(float discountAmt) {
		this.discountAmt = discountAmt;
	}
	public float getPayableAmt() {
		return payableAmt;
	}
	public void setPayableAmt(float payableAmt) {
		this.payableAmt = payableAmt;
	}
	public int getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(int paymentMode) {
		this.paymentMode = paymentMode;
	}
	public float getPaidAmt() {
		return paidAmt;
	}
	public void setPaidAmt(float paidAmt) {
		this.paidAmt = paidAmt;
	}
	public float getRemainingAmt() {
		return remainingAmt;
	}
	public void setRemainingAmt(float remainingAmt) {
		this.remainingAmt = remainingAmt;
	}
	public float getDiscAmtItem() {
		return discAmtItem;
	}
	public void setDiscAmtItem(float discAmtItem) {
		this.discAmtItem = discAmtItem;
	}
	public float getAdvanceAmt() {
		return advanceAmt;
	}
	public void setAdvanceAmt(float advanceAmt) {
		this.advanceAmt = advanceAmt;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGstNo() {
		return userGstNo;
	}
	public void setUserGstNo(String userGstNo) {
		this.userGstNo = userGstNo;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getIsDairyMartBill() {
		return isDairyMartBill;
	}
	public void setIsDairyMartBill(int isDairyMartBill) {
		this.isDairyMartBill = isDairyMartBill;
	}
	public String getCouponNo() {
		return couponNo;
	}
	public void setCouponNo(String couponNo) {
		this.couponNo = couponNo;
	}
	public float getCustLoyaltyPtRate() {
		return custLoyaltyPtRate;
	}
	public void setCustLoyaltyPtRate(float custLoyaltyPtRate) {
		this.custLoyaltyPtRate = custLoyaltyPtRate;
	}
	public float getCustLoyaltyPt() {
		return custLoyaltyPt;
	}
	public void setCustLoyaltyPt(float custLoyaltyPt) {
		this.custLoyaltyPt = custLoyaltyPt;
	}
	public int getDelStatus() {
		return delStatus;
	}
	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}
	public List<SellBillDetailForPos> getList() {
		return list;
	}
	public void setList(List<SellBillDetailForPos> list) {
		this.list = list;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getGstNo() {
		return gstNo;
	}
	public void setGstNo(String gstNo) {
		this.gstNo = gstNo;
	}
	public List<TaxLabListForPos> getTaxlabList() {
		return taxlabList;
	}
	public void setTaxlabList(List<TaxLabListForPos> taxlabList) {
		this.taxlabList = taxlabList;
	}
	@Override
	public String toString() {
		return "SellBillHeaderAndDetail [sellBillNo=" + sellBillNo + ", invoiceNo=" + invoiceNo + ", billDate="
				+ billDate + ", billType=" + billType + ", timestamp=" + timestamp + ", frId=" + frId + ", frCode="
				+ frCode + ", taxableAmt=" + taxableAmt + ", total_tax=" + total_tax + ", grandTotal=" + grandTotal
				+ ", discType=" + discType + ", discountPer=" + discountPer + ", discountAmt=" + discountAmt
				+ ", payableAmt=" + payableAmt + ", paymentMode=" + paymentMode + ", paidAmt=" + paidAmt
				+ ", remainingAmt=" + remainingAmt + ", discAmtItem=" + discAmtItem + ", advanceAmt=" + advanceAmt
				+ ", custId=" + custId + ", userName=" + userName + ", userGstNo=" + userGstNo + ", userPhone="
				+ userPhone + ", status=" + status + ", isDairyMartBill=" + isDairyMartBill + ", couponNo=" + couponNo
				+ ", custLoyaltyPtRate=" + custLoyaltyPtRate + ", custLoyaltyPt=" + custLoyaltyPt + ", delStatus="
				+ delStatus + ", custName=" + custName + ", gstNo=" + gstNo + ", extInt1=" + extInt1 + ", list=" + list
				+ ", taxlabList=" + taxlabList + "]";
	}
    
}
