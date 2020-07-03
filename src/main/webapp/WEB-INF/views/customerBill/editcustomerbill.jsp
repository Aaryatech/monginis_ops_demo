<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Madhvi</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0" />
<meta name="keywords" content="Madhvi" />
<meta name="description" content="Madhvi" />
<meta name="author" content="Madhvi">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/newpos/css/monginis.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/newpos/css/jquery.classyscroll.css"
	type="text/css" />

<link rel="icon"
	href="${pageContext.request.contextPath}/resources/newpos/images/favicon.png"
	type="images/png" sizes="32x32">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/customerBill/chosen.css">
<!--font-family: 'Source Sans Pro', sans-serif;-->

</head>

<!--commanJS-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/newpos/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/newpos/js/jquery.classyscroll.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/newpos/js/jquery.mousewheel.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/newpos/js/jquery.mousewheel.js"></script>


<!--commanJS-->
<!-- jQuery Popup Overlay -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/newpos/js/jquery.popupoverlay.js"></script>
<c:url var="saveCustomerFromBill" value="/saveCustomerFromBill" />
<c:url var="editCustomerFromBill" value="/editCustomerFromBill" />
<c:url var="getCategoryListForCustomerBill"
	value="/getCategoryListForCustomerBill" />
<c:url var="getSubCategoryListForCustomerBill"
	value="/getSubCategoryListForCustomerBill" />
<c:url var="getAllItemlistForCustomerBill"
	value="/getAllItemlistForCustomerBill" />
<c:url var="getItemListByCatSubCatForCustomerBill"
	value="/getItemListByCatSubCatForCustomerBill" />
<c:url var="addItemInBillList" value="/addItemInBillList" />
<c:url var="deleteItemInBillList" value="/deleteItemInBillList" />
<c:url var="getCurrentItemList" value="/getCurrentItemList" />
<c:url var="billOnHold" value="/billOnHold" />
<c:url var="revertHoldBillOnCurrent" value="/revertHoldBillOnCurrent" />
<c:url var="cancelFromHoldBill" value="/cancelFromHoldBill" />
<c:url var="submitBill" value="/submitBill" />
<c:url var="submitBillByPaymentOption"
	value="/submitEditBillByPaymentOption" />
<c:url var="editItemQty" value="/editItemQty" />
<c:url var="checkEmailText" value="/checkEmailText" />
<c:url var="getCustAmts" value="/getCustAmts" />
<c:url var="getCustCreditBills" value="/getCustCreditBills" />
<c:url var="getCustBills" value="/getCustBills" />
<c:url var="getCustBillsTransaction" value="/getCustBillsTransaction" />
<c:url var="deleteSellBill" value="/deleteSellBill" />

<c:url var="getItemsOfBill" value="/getItemsOfBill" />

<c:url var="uomWiseBillQtyList" value="/uomWiseBillQtyList" />

<c:url var="getItemCurrentStockForOps"
	value="/getItemCurrentStockForOps" />


<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
/* @media only screen and (min-width: 768px) {
body {
	font-family: Arial, Helvetica, sans-serif;
	overflow-y: hidden;
}
} */

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 555; /* Sit on top */
	padding-top: 60px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 8px 20px 20px 20px;
	border: 1px solid #888;
	width: 30%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

#overlay2 {
	position: fixed;
	display: none;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(239, 219, 219, 0.5);
	z-index: 9992;
	cursor: pointer;
}

#text2 {
	position: absolute;
	top: 50%;
	left: 50%;
	font-size: 25px;
	color: white;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
}

.itemDummyClass {
	cursor: pointer;
}
</style>
<body onload="validateDefCustomer(${tempCust})">
	<form action="" method="get">

		<!--wrapper-start-->
		<div class="wrapper">

			<header>
				<div class="logo">
					<a href="${pageContext.request.contextPath}/home"><img
						src="${pageContext.request.contextPath}/resources/newpos/images/madhvi_logo.jpg"
						alt="madhvi_logo"></a>
				</div>



				<div class="drop_menu">

					<div class="franchise_nm">${sessionScope.frName}
						<span>(${sessionScope.frEmpName})</span>
					</div>

					<div class="logout_btn pos">
						<div class="full_scrn" id="fs-doc-button" alt="F">
							<a href="#"><abbr title="Full Screen"><i
									class="fa fa-arrows-alt" aria-hidden="true"></i></abbr></a>
						</div>
						<a href="${pageContext.request.contextPath}/logoutEmp"> <abbr
							title="Logout"><i class="fa fa-sign-out"
								aria-hidden="true"></i></abbr></a>
					</div>
					<div class="customer_one" style="width: auto;">
						<select name="holdBillNo" id="holdBillNo"
							data-placeholder="Select Bill No" class="input_add chosen-select"
							onchange="revertHoldBillOnCurrent()">
							<option value="" disabled="disabled" selected>Select
								Bill No</option>
							<c:forEach items="${holdingList}" var="holdingList">
								<c:choose>
									<c:when test="${holdingList.key==key}">
										<option value="${holdingList.key}" style="text-align: left;"
											selected>${holdingList.value.tempCustomerName}</option>
									</c:when>
									<c:otherwise>
										<option value="${holdingList.key}" style="text-align: left;">${holdingList.value.tempCustomerName}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select>
					</div>

				</div>

				<div class="clr"></div>
			</header>

			<section class="main_container">

				<!--right-side-box-->
				<div class="cat_r">
					<!--item search row-->


					<div class="top_radio_area">
						<label id="actionName" class="gradient-multiline"
							style="font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Droid Sans, Helvetica Neue, sans-serif; padding-top: 0px; padding-right: 30px; font-weight: bold;">${actionName}</label>
						<div class="radio_row_one">
							<h3 class="item_head">Item Search</h3>
							<div class="radio_row">
								<ul>
									<li><input type="radio" id="f-option" name="serachBy"
										checked onclick="getCatListAndSubCatList(1)"> <label
										for="f-option">Category</label>
										<div class="check"></div></li>
									<!-- <li><label
										for="s-option">Sub Category </label>
										<div class="check">
											<div class="inside"></div>
										</div></li> -->

									<input type="hidden" id="s-option" name="serachBy"
										onclick="getCatListAndSubCatList(2)">
									<li><input type="radio" id="g-option" name="serachBy"
										onclick="getCatListAndSubCatList(3)"> <label
										for="g-option">All Items</label>
										<div class="check"></div></li>


									<li>&nbsp;&nbsp;<a href="#" class="pending_btn"
										style="padding: 2px 11px;" onclick="showOutOfStockModal()">Out
											Of Stock </a></li>


									<!-- 	<li><div class="cat_srach">
											<input name="myInput1" id="myInput1" type="text"
												class="input_cat" onkeyup="myFunction1()"
												placeholder="Search Item" />
										</div></li> -->


								</ul>
							</div>
						</div>

						<div class="item_src">
							<input name="myInput1" id="myInput1" type="text"
								class="input_cat" onkeyup="myFunction1()"
								placeholder="Search Item" />
						</div>

					</div>

					<!--category box start here-->
					<div id="catSubCatDivHideShow">
						<div class="cat_bx_one">
							<div class="category_list">
								<div class="category_scrollbars" id="catSubCatDiv">
									<c:forEach items="${catList}" var="catList">
										<div class="cat_one catDummyClass">
											<a href="#" onclick="getsubcatlist(${catList.catId})"><img
												title="${catList.catName}"
												src="${pageContext.request.contextPath}/resources/newpos/images/${catList.itemImage}"
												onerror="imgError(this);" alt="${catList.catName}"> <span>${catList.catName}</span></a>
										</div>
									</c:forEach>

								</div>
							</div>
						</div>

					</div>
					<!--listing box start here-->


					<div class="dual_bx" style="">
						<div class="dual_l">
							<div class="bx_tabs">
								<ul id="subcatUl">
									<!-- <li class="subCatDummyClass"><a href="#"
										style="margin-bottom: 5px;">Sweet</a></li>
									<li class="subCatDummyClass"><a href="#">Lassi</a></li>
									<li class="subCatDummyClass"><a href="#">Kaju &amp;
											Combo</a></li>
									<li class="subCatDummyClass"><a href="#">Bengal Namkin</a></li>
									<li class="subCatDummyClass"><a href="#">Sweet</a></li>
									<li class="subCatDummyClass"><a href="#">Lassi</a></li>
									<li class="subCatDummyClass"><a href="#">Sweet</a></li>
									<li class="subCatDummyClass"><a href="#">Lassi</a></li>
									<li class="subCatDummyClass"><a href="#">Kaju &amp;
											Combo</a></li>
									<li class="subCatDummyClass"><a href="#">Bengal Namkin</a></li>
									<li class="subCatDummyClass"><a href="#">Sweet</a></li>
									<li class="subCatDummyClass"><a href="#">Lassi</a></li> -->

								</ul>
							</div>
						</div>
						<div class="dual_r"></div>
					</div>

					<div class="dual_bx" style=""></div>
					<div class="cat_list_bx" id="catItmDiv">

						<div class="cat_list" style="height: 400px;">
							<div class="carlist_scrollbars" id="scrollDiv"
								style="height: 380px;">
								<!--<div class="cat_one cat"><a href="#" class="initialism quantity_open"><img src="images/laddu.jpg" alt="laddu"> <p>210</p> <span>Order Booking</span></a></div>-->


								<div class="sweet_list" id="aaaaaa">
									<ul id="itemDiv">
										<!-- <li class="itemDummyClass">
											<div class="sweet_one">
												<a href="#"><p>210</p> Maramari <span>Qty : 6</span></a>
											</div>
										</li> -->

									</ul>


								</div>



							</div>
						</div>
					</div>

					<div class="cat_list_bx" id="itmDiv" style="display: none;">

						<div class="cat_list" style="height: 440px;">
							<div class="carlist_scrollbars" id="scrollDiv"
								style="height: 380px;">
								<!--<div class="cat_one cat"><a href="#" class="initialism quantity_open"><img src="images/laddu.jpg" alt="laddu"> <p>210</p> <span>Order Booking</span></a></div>-->


								<div class="sweet_list" id="aaaaaa">
									<ul id="itemDivForItem">
										<!-- <li class="itemDummyClass">
											<div class="sweet_one">
												<a href="#"><p>210</p> Maramari <span>Qty : 6</span></a>
											</div>
										</li> -->

									</ul>


								</div>



							</div>
						</div>
					</div>

				</div>

				<div class="cat_l">

					<input type="hidden" name="sellBillNo" id="sellBillNo"
						value="${sellBillNo}" /> <input type="hidden" name="trAdvAmt"
						id="trAdvAmt" value="${advAmtTransaction}" />


					<!--top-buttons row-->
					<div class="pending_row" style="display: none;">
						<a href="#" class="    pending_btn"
							onclick="openMyModal('myModalForCredit',0)">Pending Amt : <span
							id="credAmt">00.00</span>
						</a><a href="#" class="pending_btn"
							onclick="openMyModal('custBills',1)">Customer Bills </a> <a
							href="#" class="pending_btn" onclick="openMyModal('custBills',2)">Today's
							Bills <span id="credAmt1"></span>
						</a>

						<c:if test="${advanceAmt>0}">
							<label id="advBillLable">Advance Amt : <span id="advAmt1">${advanceAmt}</span>
							</label>
						</c:if>
						<input type="hidden" id="advAmt" name="advAmt"
							value="${advAmtTransaction}"> <input type="hidden"
							id="advOrderDate" name="advOrderDate" value="${advOrderDate}">
						<input type="hidden" id="isAdvanceOrder" name="isAdvanceOrder"
							value="${isAdvanceOrder}">
					</div>

					<!--customer drop down here-->
					<div class="add_customer_bx">
						<!--customer row 1-->
						<div class="customer_row">
							<input name="defaultCustomer" id="defaultCustomer" type="hidden"
								value="${defaultCustomer}" /><input name="frtype" id="frtype"
								type="hidden" value="${frtype}" />
							<div class="customer_one">Customer</div>
							<div class="customer_two">
								<select name="cust" id="cust" data-placeholder="Select Customer"
									class="input_add chosen-select" onchange="setCustAmt()"
									required>
									<!-- <option value="0">Select Customer</option> -->

									<c:choose>
										<c:when test="${key>0}">
											<c:forEach items="${customerList}" var="customerList">
												<c:choose>
													<c:when test="${customerList.custId==holdBill.custId}">
														<option value="${customerList.custId}"
															style="text-align: left;" selected>${customerList.custName}
															&nbsp;${customerList.phoneNumber}</option>
													</c:when>
													<c:otherwise>
														<option value="${customerList.custId}"
															style="text-align: left;">${customerList.custName}
															&nbsp;${customerList.phoneNumber}</option>
													</c:otherwise>
												</c:choose>

											</c:forEach>
										</c:when>
										<c:when test="${tempCust>0}">
											<c:forEach items="${customerList}" var="customerList">
												<c:choose>
													<c:when test="${customerList.custId==tempCust}">
														<option value="${customerList.custId}"
															style="text-align: left;" selected>${customerList.custName}
															&nbsp;${customerList.phoneNumber}</option>
													</c:when>
													<c:otherwise>
														<option value="${customerList.custId}"
															style="text-align: left;">${customerList.custName}
															&nbsp;${customerList.phoneNumber}</option>
													</c:otherwise>
												</c:choose>

											</c:forEach>
										</c:when>
										<c:otherwise>
											<c:forEach items="${customerList}" var="customerList">
												<c:choose>
													<c:when test="${customerList.custId==defaultCustomer}">
														<option value="${customerList.custId}"
															style="text-align: left;" selected>${customerList.custName}
															&nbsp;${customerList.phoneNumber}</option>
													</c:when>
													<c:otherwise>
														<option value="${customerList.custId}"
															style="text-align: left;">${customerList.custName}
															&nbsp;${customerList.phoneNumber}</option>
													</c:otherwise>
												</c:choose>

											</c:forEach>
										</c:otherwise>
									</c:choose>

								</select>
							</div>
							<div class="customer_three">
								<button class="plus_btn addcust_open" type="button">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</button>
							</div>
							<div class="customer_three" id="defCust">
								<button class="plus_btn" type="button" onclick="editCustomer()">
									<i class="fa fa-pencil" aria-hidden="true"></i>
								</button>
							</div>
							<div class="clr"></div>
						</div>
						<input id=frRateCat name="frRateCat" value="${frRateCat}"
							type="hidden"> <input id=key name="key" value="${key}"
							type="hidden"> <input name="popupType" id="popupType"
							type="hidden" value="0" />
						<%-- <input id=advKey name="advKey" value="${advKey}"
							type="text"> --%>
						<!--customer row 2-->
						<%-- <div class="customer_row">
							<div class="customer_one">Item</div>
							<div class="customer_two">
								<input list="items" id="itemName" name="itemName"
									class="input_add chosen" autocomplete="off"
									placeholder="Select Item" onchange="onSelectItem()"
									style="border-radius: 5px; padding: 2px 1px 0px 8px; height: 26px; text-align: left; background: linear-gradient(#fff 20%, #f6f6f6 50%, #eee 52%, #f4f4f4 100%); color: #444;"
									type="text">
								<datalist id="items">
									<c:forEach items="${newItemsList}" var="newItemsList">
										<option value='${newItemsList.id}'
											data-value='${newItemsList.itemName}'
											data-id='${newItemsList.id}'>${newItemsList.itemName}</option>
									</c:forEach>
								</datalist>
							</div>
							<div class="customer_three">
								<button class="plus_btn">
									<i class="fa fa-plus" aria-hidden="true"></i>
								</button>
							</div>
							<div class="clr"></div>
						</div> --%>
					</div>
					<c:set var="totalItemCount" value="0"></c:set>
					<c:set var="totalTaxableAmt" value="0"></c:set>
					<c:set var="totalTaxAmt" value="0"></c:set>
					<c:set var="totalAmt" value="0"></c:set>


					<%-- <h2>${mode}</h2>
					<h2>
						<label>ADV = </label>${advAmtTransaction}</h2>
					<h2>
						<label>TOT AMT = </label>${totalAmt}</h2>
					<h2>
						<label>DISC = </label>${tempHeader.discountAmt}</h2>
					<h2>
						<label>PAID AMT = </label>${tempHeader.paidAmt}</h2> --%>


					<!--product table-->
					<div class="total_table_one" id="printDivid">
						<div class="scrollbars">
							<table id="itemBillTable">

								<thead>
									<tr>
										<th style="text-align: center;" width="2%">Sr</th>
										<th style="text-align: center;">Product</th>
										<th style="text-align: center;" width="10%">QTY</th>
										<th style="text-align: center;" width="10%">UOM</th>

										<th style="text-align: center;" width="13%">Price</th>
										<th style="text-align: center;" width="13%">Total</th>
										<th style="text-align: center;" width="2%">Del</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${holdBill.itemList}" var="itemList"
										varStatus="count">
										<c:set var="totalItemCount" value="${totalItemCount+1}"></c:set>
										<tr>
											<td>${count.index+1}</td>
											<td style="">${itemList.itemName}</td>
											<td style="text-align: right;"
												onclick="opnItemPopup('${itemList.taxPer}','${itemList.itemId}','${itemList.orignalMrp}','${itemList.itemName}','${itemList.uom}','${itemList.isDecimal}')">
												<c:choose>
													<c:when test="${itemList.isDecimal==1}">
														<fmt:formatNumber type="number" groupingUsed="false"
															value="${itemList.qty}" maxFractionDigits="3"
															minFractionDigits="3" />

													</c:when>
													<c:otherwise>
														<fmt:formatNumber type="number" groupingUsed="false"
															value="${itemList.qty}" maxFractionDigits="0"
															minFractionDigits="0" />
													</c:otherwise>
												</c:choose>
											</td>
											<td>${itemList.uom}</td>
											<td style="text-align: right;"><fmt:formatNumber
													type="number" groupingUsed="false"
													value="${itemList.orignalMrp}" maxFractionDigits="0"
													minFractionDigits="0" /></td>
											<td style="text-align: right;"><fmt:formatNumber
													type="number" groupingUsed="false"
													value="${itemList.total}" maxFractionDigits="2"
													minFractionDigits="2" /></td>
											<td style="text-align: center;"><a href="#"
												title="Delete"
												onclick="deleteItemInBillList(${count.index})"><i
													class="fa fa-trash"></i></a></td>
										</tr>
										<c:set var="totalTaxableAmt"
											value="${totalTaxableAmt+itemList.taxableAmt}"></c:set>
										<c:set var="totalTaxAmt"
											value="${totalTaxAmt+itemList.taxAmt}"></c:set>
										<c:set var="totalAmt" value="${totalAmt+itemList.total}"></c:set>
									</c:forEach>
									<!-- <tr>
										<td>1</td>
										<td>Cakes</td>
										<td style="text-align: right;">350</td>
										<td style="text-align: right;">2</td>
										<td style="text-align: right;">350</td>
										<td style="text-align: center;"><a href="#"
											title="Delete"><i class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Chocolates</td>
										<td style="text-align: right;">200</td>
										<td style="text-align: right;">1</td>
										<td style="text-align: right;">200</td>
										<td style="text-align: center;"><a href="#"
											title="Delete"><i class="fa fa-trash"></i></a></td>
									</tr> -->
								</tbody>
							</table>
						</div>
					</div>

					<!--total-table start here-->
					<div class="total_tab">
						<%-- <c:choose>
							<c:when test="${key>0}"> --%>
						<table width="100%">
							<tr bgcolor="#fefcd5" style="border-top: 1px solid #f4f4f4;">
								<td>Total UOM</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>

								<c:set value="" var="data"></c:set>
								<c:set value="0" var="dataQty"></c:set>

								<c:forEach items="${uomList}" var="list">

									<c:set value="${dataQty+list.qty}" var="dataQty"></c:set>
									<c:set
										value="${data}&nbsp;&nbsp;&nbsp;${list.uom}&nbsp;=&nbsp;${list.qty}"
										var="data"></c:set>

								</c:forEach>

								<c:set
									value="${data}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TOTAL&nbsp;=&nbsp;${dataQty}"
									var="data"></c:set>

								<td style="font-weight: 600; text-align: right;" id="totaluom">
									${data}</td>
							</tr>
							<tr bgcolor="#ffe5e6">
								<td>Total Items</td>
								<td id="totalItemLable">${totalItemCount}</td>
								<td>Total :</td>
								<td style="text-align: right;" id="taxableAmtLable"><fmt:formatNumber
										type="number" groupingUsed="false" value="${totalTaxableAmt}"
										maxFractionDigits="2" minFractionDigits="2" /></td>
							</tr>
							<tr bgcolor="#ffe5e6" style="border-top: 1px solid #f4f4f4;">
								<td>
									<!-- Discount -->
								</td>
								<td>
									<!-- (0.00) 0.00 -->
								</td>
								<td>Order Tax</td>
								<td style="text-align: right;" id="taxAmtLable"><fmt:formatNumber
										type="number" groupingUsed="false" value="${totalTaxAmt}"
										maxFractionDigits="2" minFractionDigits="2" /></td>
							</tr>
							<tr bgcolor="#fefcd5" style="border-top: 1px solid #f4f4f4;">
								<td style="font-weight: 600;">Total Payable</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td style="font-weight: 600; text-align: right;" id="totalLable"><fmt:formatNumber
										type="number" groupingUsed="false" value="${totalAmt}"
										maxFractionDigits="2" minFractionDigits="2" /></td>
							</tr>
						</table>
						<%-- </c:when>
							<c:otherwise>
								<table width="100%">
									<tr bgcolor="#ffe5e6">
										<td>Total Items</td>
										<td id="totalItemLable">0</td>
										<td>Total :</td>
										<td style="text-align: right;" id="taxableAmtLable">0.00</td>
									</tr>
									<tr bgcolor="#ffe5e6" style="border-top: 1px solid #f4f4f4;">
										<td>Discount</td>
										<td>(0.00) 0.00</td>
										<td>Order Tax</td>
										<td style="text-align: right;" id="taxAmtLable">0.00</td>
									</tr>
									<tr bgcolor="#fefcd5" style="border-top: 1px solid #f4f4f4;">
										<td style="font-weight: 600;">Total Payable</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
										<td style="font-weight: 600; text-align: right;"
											id="totalLable">0.00</td>
									</tr>
								</table>
							</c:otherwise>
						</c:choose> --%>

					</div>

					<c:set var="holdStyle" value=""></c:set>
					<c:if test="${isAdvanceOrder==1}">
						<c:set var="holdStyle" value=" style='pointer-events: none;'"></c:set>
					</c:if>
					<!--five button here-->
					<div class="buttons_row">
						<div class="button_one">
							<a href="#" class="hold hold_btn" onclick="billOnHold()"
								style="pointer-events: none;" ${holdStyle}>Hold</a> <a href="#"
								class="hold can_btn" onclick="cancelFromHoldBill(${key})">Cancel</a>
						</div>
						<div class="button_one">
							<a href="#" class="hold print_btn" onclick="openPaymentPopup()">Payment
								Option</a>



							<!-- <button onclick="openPaymentPopup()" value="pay"></button> -->

							<a href="#" class="hold bill_btn " style="pointer-events: none;"
								onclick="submitBill(2)">Print GST Bill</a>
						</div>
						<div class="button_two">
							<a href="#" class="hold pay_btn " onclick="submitBill(1)"
								style="pointer-events: none;">KOT Bill</a>
						</div>
					</div>


				</div>


			</section>

		</div>



		<!--Add Customer-->
		<div id="addcust" class="add_customer" style="display: none;">
			<button class="addcust_close close_popup"
				onclick="clearAddCustomerpopup()">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>
			<h3 class="pop_head" id="add_cust_head_name">Add Customer</h3>

			<div class="add_frm">
				<div class="add_frm_one">
					<div class="add_customer_one">Customer Name *</div>
					<div class="add_input">
						<input type="text" class="input_add"
							placeholder="Enter Customer Name" name="customerName"
							onchange="trim(this)" id="customerName" /> <input type="hidden"
							name="custId" id="custId" value="0" />
					</div>
					<div class="clr"></div>
				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Address *</div>
					<div class="add_input">
						<input placeholder="Enter Address" name="custAdd" id="custAdd"
							onchange="trim(this)" type="text" class="input_add" />
					</div>
					<div class="clr"></div>
				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Pin Code</div>
					<div class="add_input">

						<input type="text" class="input_add" placeholder="Enter Pin Code"
							name="pincode" id="pincode" onchange="trim(this)" maxlength="6"
							pattern="[0-9]" />
					</div>
					<div class="clr"></div>
				</div>
				<div class="add_frm_one">
					<div class="add_customer_one">Distance(In Kms)</div>
					<div class="add_input">
						<input placeholder="Enter distance in kms" name="kms" id="kms"
							onchange="trim(this)" type="text" class="input_add" />
					</div>
					<div class="clr"></div>
				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Mobile Number *</div>
					<div class="add_input">
						<input type="text" class="input_add"
							placeholder="Enter Mobile Number" name="mobileNo" id="mobileNo"
							onchange="trim(this)" maxlength="10" />
					</div>
					<div class="clr"></div>
				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Gender *</div>
					<div class="add_input">
						<div class="radio_row popup_radio">
							<ul>
								<li><input type="radio" type="radio" name="gender"
									id="moption" checked value="1"> <label for="moption">M</label>
									<div class="check"></div></li>
								<li><input type="radio" id="foption" name="gender"
									value="2"> <label for="foption">F </label>
									<div class="check">
										<div class="inside"></div>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div class="add_frm_one" style="display: none;">
					<div class="add_customer_one">Type</div>
					<div class="add_input">
						<select name="custType" id="custType"
							data-placeholder="Customer Type" class="input_add"
							style="text-align: left;" required>
							<option value="0" style="text-align: left;">Select
								Customer Type</option>
							<option value="1">Owner</option>
							<option value="2">Employee</option>
							<option value="3">Customer</option>
						</select>
					</div>
				</div>
				<div class="add_frm_one">
					<div class="add_customer_one">Age-Group *</div>
					<div class="add_input">
						<select name="ageRange" id="ageRange"
							data-placeholder="Customer Age-Group" class="input_add"
							style="text-align: left;" required>
							<option value="0" style="text-align: left;">Customer
								Age-Group</option>
							<option value="14-21">14-21 Years</option>
							<option value="22-28">22-28 Years</option>
							<option value="29-35">29-35 Years</option>
							<option value="36-42">36-42 Years</option>
							<option value="43-49">43-49 Years</option>
							<option value="50-56">50-56 Years</option>
							<option value="57 & above">57 & above</option>

						</select>
					</div>
				</div>
				<div class="add_frm_one">
					<div class="add_customer_one">DOB</div>
					<div class="add_input">
						<input autocomplete="off" placeholder="Date Of Birth"
							name="dateOfBirth" id="dateOfBirth" type="date" class="input_add" />
					</div>
					<div class="clr"></div>
				</div>
				<div class="add_frm_one">
					<div class="add_customer_one">Business</div>
					<div class="add_input">
						<div class="radio_row popup_radio">
							<ul>
								<li><input type="radio" type="radio" name="selector"
									id="y-option" onclick="isBuissness(1)"> <label
									for="y-option">Yes</label>
									<div class="check"></div></li>
								<li><input type="radio" id="n-option" name="selector"
									onclick="isBuissness(0)" checked> <label for="n-option">No
								</label>
									<div class="check">
										<div class="inside"></div>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div style="display: none;" id="isbuissnessdiv">
					<div class="add_frm_one">
						<div class="add_customer_one">Company Name *</div>
						<div class="add_input">
							<input placeholder="Enter Company Name" name="companyName"
								onchange="trim(this)" id="companyName" type="text"
								class="input_add" />
						</div>
						<div class="clr"></div>
					</div>
					<div class="add_frm_one">
						<div class="add_customer_one">GST Number *</div>
						<div class="add_input">
							<input placeholder="Enter GST Number" name="gstNo" id="gstNo"
								onchange="trim(this)" type="text" class="input_add" />
						</div>
						<div class="clr"></div>
					</div>
				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Remark</div>
					<div class="add_input">

						<input type="text" class="input_add" placeholder="Enter Remark"
							name="remark" id="remark" onchange="trim(this)" />
					</div>
					<div class="clr"></div>
				</div>
			</div>

			<div class="pop_btns">
				<div class="close_l">
					<button class="addcust_close close_btn"
						onclick="clearAddCustomerpopup()">Close</button>
				</div>
				<div class="close_r">
					<a href="#" onclick="addCustomer()" id="saveCust">Save</a>
				</div>
				<div class="clr"></div>
			</div>


		</div>

		<!--pending amount popup-->


		<div id="payment" class="add_customer" style="display: none;">
			<button class="payment_close close_popup">
				<i class="fa fa-times" aria-hidden="true"></i>
			</button>
			<h3 class="pop_head">Payment</h3>

			<div class="add_frm">


				<div class="add_frm_one">
					<div class="add_customer_one">Total AMT</div>
					<div class="add_input" hidden>
						<fmt:formatNumber type="number" groupingUsed="false"
							value="${totalAmt}" maxFractionDigits="2" minFractionDigits="2" />
					</div>
					<div id="totalAmtPopup">

						<%-- <fmt:formatNumber type="number" groupingUsed="false"
							value="${totalAmt-tempHeader.discountAmt}" maxFractionDigits="2"
							minFractionDigits="2" /> --%>

						<fmt:formatNumber type="number" groupingUsed="false"
							value="${totalAmt}" maxFractionDigits="2" minFractionDigits="2" />
					</div>
					<div class="clr"></div>
				</div>


				<%-- 
					<div class="add_frm_one">
					<div class="add_customer_one1">Advance AMT</div>
					<div class="add_input1" id="advAmtPopup">
						<fmt:formatNumber type="number" groupingUsed="false"
							value="${advanceAmt}" maxFractionDigits="2" minFractionDigits="2" />
					</div>
					<div class="clr"></div>
				</div>
				  --%>

				<div class="add_frm_one">
					<div class="add_customer_one">Discount %</div>
					<div class="add_input" id="discountPopup">

						<c:choose>
							<c:when test="${defaultCustomer==tempCust}">
								<input type="number" name="discPer" id="discPer"
									readonly="readonly" onchange="itemDiscPerCalculation(1)"
									onkeyup="itemDiscPerCalculation(1)" class="form-control"
									value="${tempHeader.discountPer}" placeholder="Disc %"
									style="text-align: center; width: 90px; border-radius: 20px;"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
							</c:when>

							<c:otherwise>
								<input type="number" name="discPer" id="discPer"
									onchange="itemDiscPerCalculation(1)"
									onkeyup="itemDiscPerCalculation(1)" class="form-control"
									value="${tempHeader.discountPer}" placeholder="Disc %"
									style="text-align: center; width: 90px; border-radius: 20px;"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
							</c:otherwise>
						</c:choose>


						<label for="discAmtLabel"
							style="font-weight: 700; padding-left: 5px;">&nbsp;Disc
							Amt&nbsp;</label>

						<c:choose>
							<c:when test="${defaultCustomer==tempCust}">
								<input type="number" name="discAmt" id="discAmt"
									readonly="readonly" onchange="itemDiscPerCalculation(2)"
									onkeyup="itemDiscPerCalculation(2)" class="form-control"
									value="${tempHeader.discountAmt}" placeholder="Disc Amt"
									style="text-align: center; width: 90px; border-radius: 20px;"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
							</c:when>

							<c:otherwise>
								<input type="number" name="discAmt" id="discAmt"
									onchange="itemDiscPerCalculation(2)"
									onkeyup="itemDiscPerCalculation(2)" class="form-control"
									value="${tempHeader.discountAmt}" placeholder="Disc Amt"
									style="text-align: center; width: 90px; border-radius: 20px;"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
							</c:otherwise>
						</c:choose>



					</div>
					<div class="clr"></div>
				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Advance AMT</div>
					<div class="add_input">
						<%-- <fmt:formatNumber type="number" groupingUsed="false"
							value="${advAmtTransaction}" maxFractionDigits="2"
							minFractionDigits="2" /> --%>


						<input type="number" class="form-control" disabled="disabled"
							value="${advAmtTransaction}" placeholder="0"
							style="text-align: center; width: 90px; border-radius: 20px;" />

						<c:choose>
							<c:when test="${mode==0}">
								<label for="discAmtLabel"
									style="font-weight: 700; padding-left: 5px;">&nbsp;Paid
									Amt&nbsp;</label>
								<input type="number" class="form-control" value="0"
									placeholder="0"
									style="text-align: center; width: 90px; border-radius: 20px;"
									disabled="disabled" />
							</c:when>

							<c:otherwise>
								<label for="discAmtLabel"
									style="font-weight: 700; padding-left: 5px;">&nbsp;Paid
									Amt&nbsp;</label>
								<input type="number" class="form-control"
									value="${tempHeader.paidAmt-advAmtTransaction}" placeholder="0"
									style="text-align: center; width: 90px; border-radius: 20px;"
									disabled="disabled" />
							</c:otherwise>
						</c:choose>



					</div>

				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Previous AMT</div>
					<div class="add_input">
						<%-- <fmt:formatNumber type="number" groupingUsed="false"
							value="${advAmtTransaction}" maxFractionDigits="2"
							minFractionDigits="2" /> --%>


						<input type="number" class="form-control" disabled="disabled"
							value="${tempHeader.paidAmt-advAmtTransaction}" placeholder="0"
							style="text-align: center; width: 90px; border-radius: 20px;" />


						<label for="discAmtLabel"
							style="font-weight: 700; padding-left: 5px;">&nbsp;Add
							Amt&nbsp;</label> <input type="number" class="form-control"
							id="additionalAmt"
							value="${tempHeader.paidAmt-advAmtTransaction-tempHeader.paidAmt-advAmtTransaction}"
							placeholder="0"
							style="text-align: center; width: 90px; border-radius: 20px;"
							disabled="disabled" />

					</div>

				</div>

				<div class="add_frm_one">
					<div class="add_customer_one">Total Payable</div>
					<div class="add_input" id="totalPayableAmt">
						<fmt:formatNumber type="number" groupingUsed="false"
							value="${tempHeader.paidAmt}" maxFractionDigits="2"
							minFractionDigits="2" />
						<%-- <c:choose>
							<c:when test="${mode==0}">
								<fmt:formatNumber type="number" groupingUsed="false"
									value="${tempHeader.paidAmt}"
									maxFractionDigits="2" minFractionDigits="2" />
							</c:when>

							<c:otherwise>
								<fmt:formatNumber type="number" groupingUsed="false"
									value="${totalAmt-tempHeader.discountAmt-tempHeader.paidAmt}"
									maxFractionDigits="2" minFractionDigits="2" />
							</c:otherwise>
						</c:choose> --%>


					</div>
					<div class="clr"></div>
				</div>
				<div class="add_frm_one">
					<div class="add_customer_one">Credit Bill</div>
					<div class="add_input">
						<div class="radio_row popup_radio">
							<ul>
								<li><input type="radio" id="creditBillyes"
									name="creditBill" onclick="modeOfPayDivHideShow(1)"> <label
									for="creditBillyes">Yes</label>
									<div class="check"></div></li>
								<li><input type="radio" id="creditBillno" name="creditBill"
									checked onclick="modeOfPayDivHideShow(2)"> <label
									for="creditBillno">No </label>
									<div class="check">
										<div class="inside"></div>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="clr"></div>
				</div>
				<div id="modeOfPayDiv">

					<div class="add_frm_one">
						<div class="add_customer_one">Mode of Pay</div>
						<div class="add_input">
							<div class="radio_row popup_radio">
								<ul>
									<li><input type="radio" id="single" name="modePay"
										onclick="changeSplitSingle(1)" checked> <label
										for="single">Single</label>
										<div class="check"></div></li>
									<li style="display: none;"><input type="radio" id="split" name="modePay"
										onclick="changeSplitSingle(2)"> <label for="split">Split
									</label>
										<div class="check">
											<div class="inside"></div>
										</div></li>
								</ul>
							</div>
						</div>
						<div class="clr"></div>
					</div>
					<div id="splitDiv" style="display: none;">
						<div class="add_frm_one">
							<div class="add_customer_one">Cash</div>
							<div class="add_input">
								<div class="radio_row popup_radio">
									<ul>
										<li>
											<!-- <input type="checkbox" id="cashCheck"
											name="cashCheck" checked> &nbsp;  --> <input type="text"
											id="cashAmt" name="cashAmt" class=" input_add numberOnly"
											oninput="matchSplitAmt(1)" onchange="matchSplitAmt(1)"
											placeholder="Cash Amount" value="0">
										</li>
									</ul>
								</div>
							</div>
							<div class="clr"></div>
						</div>

						<div class="add_frm_one">
							<div class="add_customer_one">Card</div>
							<div class="add_input">
								<div class="radio_row popup_radio">
									<ul style="padding-left: 5px;">
										<li>
											<!-- <input type="checkbox" id="cardCheck"
											name="cardCheck"> &nbsp;  --> <input type="text" id="cardAmt"
											name="cardAmt" class=" input_add numberOnly"
											placeholder="Card Amount" value="0"
											oninput="matchSplitAmt(2)" onchange="matchSplitAmt(2)">
										</li>
										<li style="padding-left: 5px;"><select
											name="cardTypeSplit" id="cardTypeSplit"
											data-placeholder="Card Type" class="input_add "
											style="text-align: left;">
												<option value="" style="text-align: left;">Select
													Card</option>

												<option value="4" style="text-align: left;">Debit
													Card</option>
												<option value="5" style="text-align: left;">Credit
													Card</option>
										</select></li>
									</ul>
								</div>
							</div>
							<div class="clr"></div>
						</div>

						<div class="add_frm_one">
							<div class="add_customer_one">E-Pay</div>
							<div class="add_input">
								<div class="radio_row popup_radio">
									<ul>
										<li>
											<!-- <input type="checkbox" id="epayCheck"
											name="epayCheck"> &nbsp;  --> <input type="text" id="epayAmt"
											name="epayAmt" class="input_add numberOnly"
											placeholder="E-Pay Ammount" value="0"
											oninput="matchSplitAmt(3)" onchange="matchSplitAmt(3)">
										</li>
										<li style="padding-left: 5px;"><select
											name="ePayTypeSplit" id="ePayTypeSplit"
											data-placeholder="E-Pay Type" class="input_add "
											style="text-align: left;">
												<option value="">E-Pay Type</option>

												<option value="7" style="text-align: left;">Paytm</option>
												<option value="8" style="text-align: left;">Google
													Pay</option>
												<option value="6" style="text-align: left;">Bank
													Transaction</option>
												<option value="9" style="text-align: left;">Amazon
													Pay</option>
										</select></li>

									</ul>
								</div>
							</div>

						</div>
						<div class="add_frm_one">
							<div class="add_customer_one" id="epayLabel"></div>
						</div>

						<div class="clr"></div>
					</div>

					<div id="singleDiv">
						<div class="add_frm_one">
							<div class="add_customer_one">Type</div>
							<div class="add_input">
								<select name="billType" id="billType" data-placeholder="Type"
									onchange="onPayTypeChange(this.value)" class="input_add "
									style="text-align: left;">
									<option value="1" style="text-align: left;" selected>Cash</option>
									<option value="2" style="text-align: left;">Card</option>
									<option value="3" style="text-align: left;">E-Pay</option>
								</select>
								<!-- <div class="dropdown popup_drop">
									<div class="select">
										<span>Payment Mode</span>
									</div>

									<ul class="dropdown-menu">
										<li id="male">Cash</li>
										<li id="female">Card</li>
										<li id="female">E-pay</li>
									</ul>
								</div> -->

							</div>
							<div class="clr"></div>
						</div>
						<div class="add_frm_one" id="cardTypeDiv" style="display: none;">
							<div class="add_customer_one">Card Type</div>
							<div class="add_input">
								<select name="cardType" id="cardType"
									data-placeholder="Card Type" class="input_add "
									style="text-align: left;">
									<option value="" style="text-align: left;">Select Card</option>

									<option value="4" style="text-align: left;">Debit Card</option>
									<option value="5" style="text-align: left;">Credit
										Card</option>
								</select>

							</div>
							<div class="clr"></div>
						</div>
						<div class="add_frm_one" id="epayTypeDiv" style="display: none;">
							<div class="add_customer_one">E-Pay Type</div>
							<div class="add_input">
								<select name="ePayType" id="ePayType"
									data-placeholder="E-Pay Type" class="input_add "
									style="text-align: left;">
									<option value="">Select E-Pay Type</option>

									<option value="7" style="text-align: left;">Paytm</option>
									<option value="8" style="text-align: left;">Google Pay</option>
									<option value="6" style="text-align: left;">Bank
										Transaction</option>
									<option value="9" style="text-align: left;">Amazon Pay</option>
								</select>
							</div>
							<div class="clr"></div>
						</div>
						
						<div class="add_frm_one">
							<div class="add_customer_one">Remark</div>
							<div class="add_input">
								<input name="payRemark" id="payRemark" type="text"
									class="input_add " style="font-size: 100%;"
									placeholder="Enter Remark" value="" />
							</div>
							<div class="clr"></div>
						</div>
						
						
						<div class="add_frm_one">
							<div class="add_customer_one">Amount</div>
							<div class="add_input">

								<c:choose>
									<c:when test="${mode==0}">
										<input name="payAmt" id="payAmt" type="text"
											class="input_add numberOnly" placeholder="Enter Amount"
											readonly="readonly"
											value="${totalAmt-tempHeader.discountAmt}"
											style="background-color: lightgrey;" />
									</c:when>

									<c:otherwise>
										<input name="payAmt" id="payAmt" type="text"
											class="input_add numberOnly" placeholder="Enter Amount"
											readonly="readonly"
											value="${totalAmt-tempHeader.discountAmt-tempHeader.paidAmt}"
											style="background-color: lightgrey;" />
									</c:otherwise>
								</c:choose>


							</div>
							<div class="clr"></div>
						</div>
						
						<div class="add_frm_one">
							<div class="add_customer_one"></div>
							<div class="add_input">

								<label style="font-weight: 700; padding-left: 5px;">Paid&nbsp;</label>
								<input type="text" name="pAmt" id="pAmt"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
									onchange="amtReturnCal()" onkeyup="amtReturnCal()"
									class="form-control" value="" placeholder="Amount"
									style="text-align: center; width: 90px; border-radius: 20px;" />


								&nbsp;&nbsp; <label style="font-weight: 700; padding-left: 5px;">Return&nbsp;</label>
								<input type="text" name="rAmt" id="rAmt" readonly="readonly"
									class="form-control" value="" placeholder="Amount"
									style="text-align: center; width: 90px; border-radius: 20px;" />



							</div>
							<div class="clr"></div>
						</div>
						
						
					</div>
					<!-- <div class="add_frm_one">
						<div class="add_customer_one">Amount</div>
						<div class="add_input">
							<input name="" type="text" class="input_add" />
						</div>
						<div class="clr"></div>
					</div> -->
				</div>
			</div>
			<div class="pop_btns">
				<div class="close_l">
					<button class="payment_close close_btn">Close</button>
				</div>

				<div class="close_r">
					<a href="#" onclick="submitBillByPaymentOption(2)">GST Bill</a>
					&nbsp;<a href="#" onclick="submitBillByPaymentOption(1)">KOT</a>
				</div>
				<div class="clr"></div>
			</div>

			<!--<button class="slide_close"><i class="fa fa-times" aria-hidden="true"></i></button>-->
		</div>



		<!--pending amount popup-->
		<div id="quantity" class="add_customer calcy" style="display: none;">
			<div>
				<div class="close_l">
					<h3 class="pop_head" id="itemNmaeHeadeing">Quantity</h3>
				</div>
				<div class="close_r" style="margin: 10px 10px 0 0;">
					<button class="quantity_close close_btn">Close</button>
				</div>
			</div>
			<div class="clr"></div>
			<div class="calcy_bx">
				<div class="calcy_1">
					<div class="calculator_bx">
						<input name="rateHidden" id="rateHidden" type="hidden" /><input
							name="itemIdHidden" id="itemIdHidden" type="hidden" /><input
							name="taxperHidden" id="taxperHidden" type="hidden" /><input
							name="itemNameHidden" id="itemNameHidden" type="hidden" /> <input
							name="uomHidden" id="uomHidden" type="hidden" /> <input
							name="isDecimalHidden" id="isDecimalHidden" type="hidden" />
						<div class="cal_quan">
							<div class="qty_l">QTY</div>
							<div class="qty_m">
								<input name="enterQty" id="enterQty" type="text" value="1"
									class="qty_one numberOnly" placeholder="QTY"
									onkeyup="itemRateCalculation(1)" />
							</div>
							<div class="qty_r">
								<button type="submit" class="go_btn" onclick="calPad(1,10)"></button>
							</div>
							<div class="clr"></div>
						</div>

						<div class="calc_no">
							<div class="calc_no_l">
								<ul>
									<li><a href="#" onclick="calPad(1,7)">7</a></li>
									<li><a href="#" onclick="calPad(1,8)">8</a></li>
									<li><a href="#" onclick="calPad(1,9)">9</a></li>
									<li><a href="#" onclick="calPad(1,4)">4</a></li>
									<li><a href="#" onclick="calPad(1,5)">5</a></li>
									<li><a href="#" onclick="calPad(1,6)">6</a></li>
									<li><a href="#" onclick="calPad(1,1)">1</a></li>
									<li><a href="#" onclick="calPad(1,2)">2</a></li>
									<li><a href="#" onclick="calPad(1,3)">3</a></li>
									<li><a href="#" onclick="calPad(1,0)">0</a></li>
									<li><a href="#" onclick="calPad(1,'.')">.</a></li>
									<li><a href="#" onclick="calPad(1,11)">C<%-- <img
											src="${pageContext.request.contextPath}/resources/newpos/images/next_arrow_one.png"
											alt="next_arrow_one"> --%>
									</a></li>
								</ul>
							</div>
							<div class="calc_no_r">
								<a href="#" onclick="addItemInBillList()"><img
									src="${pageContext.request.contextPath}/resources/newpos/images/right_arrow_one.png"
									alt="right_arrow_one"></a>
							</div>
							<div class="clr"></div>
						</div>

					</div>
				</div>
				<div class="calcy_2">
					<div class="calculator_bx">
						<div class="cal_quan">
							<div class="qty_l">AMT</div>
							<div class="qty_m">
								<input name="enterRate" id="enterRate" type="text"
									class="qty_one numberOnly" placeholder="Enter Rate"
									onkeyup="itemRateCalculation(2)" />
							</div>
							<div class="qty_r">
								<button type="submit" class="go_btn" onclick="calPad(2,10)"></button>
							</div>
							<div class="clr"></div>
						</div>

						<div class="calc_no">
							<div class="calc_no_l">
								<ul>
									<li><a href="#" onclick="calPad(2,7)">7</a></li>
									<li><a href="#" onclick="calPad(2,8)">8</a></li>
									<li><a href="#" onclick="calPad(2,9)">9</a></li>
									<li><a href="#" onclick="calPad(2,4)">4</a></li>
									<li><a href="#" onclick="calPad(2,5)">5</a></li>
									<li><a href="#" onclick="calPad(2,6)">6</a></li>
									<li><a href="#" onclick="calPad(2,1)">1</a></li>
									<li><a href="#" onclick="calPad(2,2)">2</a></li>
									<li><a href="#" onclick="calPad(2,3)">3</a></li>
									<li><a href="#" onclick="calPad(2,0)">0</a></li>
									<li><a href="#" onclick="calPad(2,'.')">.</a></li>
									<li><a href="#" onclick="calPad(2,11)">C<%-- <img
											src="${pageContext.request.contextPath}/resources/newpos/images/next_arrow_one.png"
											alt="next_arrow_one"> --%>
									</a></li>
								</ul>
							</div>
							<div class="calc_no_r">
								<a href="#" onclick="addItemInBillList()"><img
									src="${pageContext.request.contextPath}/resources/newpos/images/right_arrow_one.png"
									alt="right_arrow_one"></a>
							</div>
							<div class="clr"></div>
						</div>

					</div>
				</div>

				<div class="add_row add_row_marg">
					<div class="add_row_l">
						<span class="add_txt" id="qty_lable">QTY : 1</span>
					</div>
					<div class="add_row_r">
						<span class="add_txt" id="rate_lable">Rate: 100.00</span>
					</div>
					<div class="clr"></div>
				</div>
				<div class="clr"></div>
			</div>

			<!-- 
			<div class="pop_btns">
				<div class="close_l">
					<button class="quantity_close close_btn">Close</button>
				</div>
				<div class="close_r">
					<a href="#" onclick="addItemInBillList()">Submit</a>
				</div>
				<div class="clr"></div>
			</div> -->
		</div>



		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
				<span class="close">&times;</span>
				<p>Enter Customer Name</p>


				<div class="add_frm_one">
					<div class="add_customer_one">Customer Name</div>
					<div class="add_input">
						<input placeholder="Customer Name" name="holdCustName"
							onchange="trim(this)" id="holdCustName" type="text"
							class="input_add" />
					</div>
					<div class="clr"></div>
				</div>

				<div class="pop_btns">

					<div class="close_r">
						<a href="#" onclick="submitBillOnHold()">Submit</a>
					</div>

					<div class="clr"></div>
				</div>

			</div>


		</div>



		<div id="overlay2">
			<div id="text2">
				<img
					src="${pageContext.request.contextPath}/resources/newpos/images/loader.gif"
					alt="madhvi_logo">
			</div>
		</div>
		<!--wrapper-end-->
	</form>


	<!-- Modal to show cust creadit Bill Start -->
	<div id="myModalForCredit" class="modal">
		<div id="overlay">
			<div class="clock"></div>
		</div>

		<div class="modal-content" style="width: 75%">
			<span class="close" onclick="closeMyModal('myModalForCredit')">&times;</span>

			<form name="modalfrm" id="modalfrm" method="post">
				<p>Customer Credit Bills</p>
				<div class="clr"></div>
				<div>


					<div class="add_frm_one">
						<div class="add_customer_one"
							style="width: 40% ! important; float: left!importan!">
							Customer Name:<span
								style="color: red; width: 80%; padding-left: 7px;" id="credCust">
								NA</span>
						</div>
						<div class="add_customer_one">
							Pending Amount:<span
								style="color: red; width: 20%; padding-left: 7px;" id="penAmt">
								0.0</span>
						</div>

					</div>

				</div>
				<div class="total_table_one" id="printDivid">
					<div class="scrollbars" id="scrollbarsmodaldiv">
						<table id="custCreditTable">

							<thead>
								<tr>
									<th style="text-align: center;" width="2%"></th>
									<th style="text-align: center;" width="2%">Sr</th>
									<th style="text-align: center;">Bill No</th>
									<th style="text-align: center;">Bill Date</th>
									<th style="text-align: center;" width="10%">Bill Amt</th>
									<th style="text-align: center;" width="13%">Paid Amt</th>
									<th style="text-align: center;" width="13%">Pending Amt</th>
									<th style="text-align: center;" width="2%">Paying Amt</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>


				<div id="singleDiv1">
					<div class="calcy_1">
						<div class="add_customer_one">Type</div>
						<div class="add_input">
							<select name="modType1" id="modType1" data-placeholder="Type"
								class="input_add " style="text-align: left;">
								<option value="1" style="text-align: left;" selected>Cash</option>
								<option value="2" style="text-align: left;">Card</option>
								<option value="3" style="text-align: left;">E-Pay</option>
							</select>

						</div>
					</div>
					<div class="calcy_2">

						<div class="add_frm_one">
							<div class="add_customer_one">Received Amt</div>
							<div class="add_input">
								<input placeholder="Received Amt" name="receivedAmt"
									onchange="settleCustBill()" id="receivedAmt" type="text"
									value="0" class="input_add"
									onkeypress="return event.charCode >= 48 && event.charCode <= 57" />
							</div>
							<div class="clr"></div>
						</div>
						<input type="hidden" name="finTotal" id="total" value="0">

					</div>

				</div>

				<div class="pop_btns">
					<div class="clr"></div>
					<div class="close_r">

						<button type="button" class="buttonsaveorderpos" id="sbtbtn"
							disabled="disabled">Submit</button>
					</div>



				</div>
			</form>
		</div>


	</div>
	<!-- Modal to show cust   Bill ends -->

	<!-- Modal to show cust creadit Bill Start -->
	<div id="custBills" class="modal">
		<div id="overlay">
			<div class="clock"></div>
		</div>

		<div class="modal-content" style="width: 80%">
			<span class="close" onclick="closeMyModal('custBills')">&times;</span>

			<form name="modalfrm" id="modalfrm" method="post">
				<p>Bill List</p>
				<div class="clr"></div>
				<div>


					<div id="dateCust" style="display: none;">
						<div class="add_frm_one">
							<div class="add_customer_one"
								style="width: 40% ! important; float: left!importan!">
								Customer Name:<span style="color: red; width: 80%"
									id="custName1"></span>
							</div>
						</div>

					</div>
					<div id="dateDiv" style="display: none;">
						<div class="add_frm_one">
							<div class="add_customer_one"
								style="width: 40% ! important; float: left!importan!">
								Date:<span style="color: red; width: 80%" id="date1">&nbsp;&nbsp;${date1}</span>
							</div>

						</div>
					</div>

				</div>
				<div id="modeOfPayDiv1">

					<div class="add_frm_one">

						<div class="add_input">
							<div class="radio_row popup_radio">
								<ul>
									<li><input type="radio" id="single12" name="modePay1"
										value="1" onclick="getCustBills(1)" checked="checked">
										<label for="single12">Bills</label>
										<div class="check"></div></li>
									<li><input type="radio" id="split12" name="modePay1"
										value="3" onclick="getCustBills(3)"> <label
										for="split12">Transaction </label>
										<div class="check">
											<div class="inside"></div>
										</div></li>

									<li><input type="radio" id="single22" name="modePay1"
										value="2" onclick="getCustBills(2)"> <label
										for="single22">Pending</label>
										<div class="check"></div></li>

									<li id="deletedBillsRadio" style="display: none;"><input
										type="radio" id="deleted12" name="modePay1" value="2"
										onclick="getCustBills(4)"> <label for="deleted12">Deleted
											Bills</label>
										<div class="check"></div></li>
								</ul>
							</div>
						</div>
						<div class="clr"></div>
					</div>
				</div>

				<div class="total_table_one" id="printDivid">
					<div class="scrollbars" id="scrollbarsmodaldiv">
						<table id="custTable">

							<thead>
								<tr>

									<th style="text-align: center;" width="2%">Sr</th>
									<th style="text-align: center;">Bill No</th>
									<th style="text-align: center;">Bill Date</th>
									<th style="text-align: center;" width="10%">Bill Amt</th>
									<th style="text-align: center;" width="13%">Paid Amt</th>
									<th style="text-align: center;" width="13%">Pending Amt</th>
									<th style="text-align: center;" width="2%" id="modeofpay">Mode
										of Payment</th>
									<th style="text-align: center;" width="2%" id="trAction">Action</th>
								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>

			</form>
		</div>


	</div>
	<!-- Modal to show cust   Bill ends -->


	<div id="outOfStock" class="modal">
		<div id="overlayStock">
			<div class="clock"></div>
		</div>

		<div class="modal-content" style="width: 80%">
			<span class="close" onclick="closeMyModal('outOfStock')">&times;</span>

			<form name="modalfrm11" id="modalfrm11" method="post">
				<p>Item List</p>
				<div class="clr"></div>

				<div class="total_table_one" id="modalBody">
					<div class="scrollbars" id="scrollbarsmodaldiv">
						<table id="stockTable">

							<thead>
								<tr>

									<th style="text-align: center;" width="2%">Sr</th>
									<th style="text-align: center;">Item Name</th>
									<th style="text-align: center;">Current Stock</th>

								</tr>
							</thead>
							<tbody>

							</tbody>
						</table>
					</div>
				</div>

			</form>
		</div>


	</div>



	<script type="text/javascript">
	
	function validateDefCustomer(custId){
		var defCust=$("#defaultCustomer").val();
		//alert(custId+" - "+defCust);
		if(defCust!=custId){
			//document.getElementById("defCust").style.display = "none";
			//$('#defCust').removeClass('def_customer');
			$('#defCust').show();
		}else{
			$('#defCust').hide();
		}
	}
	
	</script>


	<script type="text/javascript">
		
		function  getCustBills(tempType) {
			
			
			document.getElementById("overlay2").style.display = "block";

			var custId = document.getElementById("cust").value;
			var tabType = document.getElementById("popupType").value;
 			  var tr_count=0; 
 			  
 			
			var ell = document.getElementById('cust');
			var text = ell.options[ell.selectedIndex].innerHTML;

			document.getElementById("custName1").innerHTML  ="&nbsp;&nbsp;"+ text;

			if(tabType!=2){
				document.getElementById("custName1").innerHTML  = "&nbsp;&nbsp;"+ text;
				
				$("#dateCust").show();
				$("#dateDiv").hide();

			}else{
				document.getElementById("custName1").innerHTML  ="&nbsp;nbsp;"+ text;
				$("#dateDiv").show();
				$("#dateCust").hide();
			}	
			
			
		if(tempType!=3)  {
			$("#modeofpay").hide();
			$("#trAction").show();
 			$.post('${getCustBills}',
								{
									cust: custId,
									tempType: tempType,
									tabType: tabType,
									ajax: 'true'
								},
								function(data) {
									tr_count = data.length;

 									document.getElementById("overlay2").style.display = "";

									$('#custTable td').remove();
									$
									.each(
											data,
											function(key, data) {
												
												var invNo=data.invoiceNo+"--"+data.billType;
												if(tabType==2){
													invNo=invNo+" ("+data.userName+")";
												}
											
												
  
															var tr = $('<tr id="bill'+data.sellBillNo+'"></tr>');
															tr.append($('<td ></td>').html(key + 1));
															tr.append($('<td ></td>').html(invNo));
															tr.append($('<td ></td>').html(data.billDate));
															tr.append($('<td ></td>').html(data.grandTotal));
															tr.append($('<td ></td>').html(data.paidAmt));
															tr.append($('<td ></td>').html(data.remainingAmt));
														
															
															
														
														if(tempType==1 && tabType==2){
															var mode=0;
															
															tr.append($('<td ></td>').html('<a href="#" onclick="showCustBillForEdit('+data.sellBillNo+','+data.custId+','+mode+')"  ><abbr title="Edit"><i class="fa fa-pencil"></i></abbr></span></a> &nbsp;&nbsp; <a href="#" onclick="custBillPdf('+data.sellBillNo+')" ><abbr title="PDF"><i class="fa fa-file-pdf-o"></i></abbr></span></a> &nbsp;&nbsp;<a href="#" onclick="deleteSellBill('+data.sellBillNo+')"><abbr title="Delete"><i class="fa fa-trash"></i></abbr></a>'));
														}else if(tempType==4){
															tr.append($('<td ></td>').html(' '));
														}else{
															tr.append($('<td ></td>').html('<a href="#" onclick="custBillPdf('+data.sellBillNo+')" ><abbr title="PDF"><i class="fa fa-file-pdf-o"></i></abbr></span></a> &nbsp;&nbsp;<a href="#" onclick="deleteSellBill('+data.sellBillNo+')"><abbr title="Delete"><i class="fa fa-trash"></i></abbr></a>'));
														}
															
															$('#custTable tbody').append(tr);
														 
											}); 
									
									 
									
									if(tr_count>0){
										 $("#scrollbarsmodaldiv").css("height", "240");
										 
										} 

								}); 
		  }else{
			  
				$("#modeofpay").show();
				$("#trAction").hide();

				 $.post('${getCustBillsTransaction}',
							{
								cust: custId,
								tempType: tempType,
								tabType: tabType,
								ajax: 'true'
							},
							function(data) {
								tr_count = data.length;
								document.getElementById("overlay2").style.display = "";


								$('#custTable td').remove();
								$
								.each(
										data,
										function(key, data) {
											
										   var payType="";
											var paidAmount=parseFloat(data.cashAmt)+parseFloat(data.cardAmt)+parseFloat(data.ePayAmt);
											
											if(data.exVar1=="0" || data.exVar1=="0," ){
												payType="Credit Bill";
 												
											}else{
											var str_arr = data.exVar1.split(',');
											for (i = 0; i < str_arr.length; i++) { 
											   if(str_arr[i] === "1"){
													payType="Cash("+data.cashAmt+")";
											   }
											   if(str_arr[i] === "2"){
												   payType=payType+",Card("+data.cardAmt+")";
											   }
											   if(str_arr[i] === "3"){
												   payType=payType+",Epay("+data.ePayAmt+")";
											   }
											   if(str_arr[i] === "4"){
												   payType=payType+",Debit Card("+data.cardAmt+")";
											   }
											   if(str_arr[i] === "5"){
												   payType=payType+",Credit Card("+data.cardAmt+")"; 
											   }
											   if(str_arr[i] === "6"){
												   payType=payType+",Bank Transaction("+data.ePayAmt+")";  
											   }
											   if(str_arr[i] === "7"){
												   payType=payType+",Paytm("+data.ePayAmt+")"; 
											   }
											   if(str_arr[i] === "8"){
												   payType=payType+",Google Pay("+data.ePayAmt+")"; 
											   }
											   if(str_arr[i] === "9"){
												   payType=payType+",Amazon Pay("+data.ePayAmt+")";  
											   }
											  
											}
											var resultPayType = (payType[0] == ',') ? payType.substr(1) : payType;

											}
														var tr = $('<tr></tr>');
														tr.append($('<td ></td>').html(key + 1));
														tr.append($('<td ></td>').html(data.exVar2));
														tr.append($('<td ></td>').html(data.transactionDate));
														tr.append($('<td ></td>').html(data.exFloat1));
														tr.append($('<td ></td>').html(paidAmount));
														tr.append($('<td ></td>').html(data.exFloat2));
														tr.append($('<td class="gradient-multiline"></td>').html(resultPayType));
														
														$('#custTable tbody').append(tr);
										}); 
								
								 
								
								if(tr_count>0){
									 $("#scrollbarsmodaldiv").css("height", "240");
									 
									} 

							}); 
		  }
 
		}
	</script>

	<script type="text/javascript">
function matchSplitAmt(flag){
		
		var cashAmt = parseFloat(document.getElementById("cashAmt").value);
		var cardAmt = parseFloat(document.getElementById("cardAmt").value);
		var epayAmt = parseFloat(document.getElementById("epayAmt").value);
	    var totalPayableAmt=parseFloat($('#totalPayableAmt').text());
        var total=cashAmt+cardAmt+epayAmt;
        if(totalPayableAmt<total){
			document.getElementById("epayLabel").innerHTML =" Total: &nbsp;&nbsp;"+ total.toFixed(2);
        	document.getElementById("epayLabel").style.color="red";
        }else  if(totalPayableAmt==total){ 
        	document.getElementById("epayLabel").innerHTML =" Total: &nbsp;&nbsp;"+ total.toFixed(2);
        	document.getElementById("epayLabel").style.color="green";
        }else { 
        	document.getElementById("epayLabel").innerHTML =" Total: &nbsp;&nbsp;"+ total.toFixed(2);
        	document.getElementById("epayLabel").style.color="black";
        }
		
		
	}
	
	</script>

	<script type="text/javascript">
	
	
		function onPayTypeChange(type){
			if(type==1){
				$('#cardTypeDiv').hide();
				$('#epayTypeDiv').hide();
			}else
			if(type==2){
				$('#cardTypeDiv').show();
				$('#epayTypeDiv').hide();

			}else if(type==3){
				$('#epayTypeDiv').show();
				$('#cardTypeDiv').hide();

			}
		}
		
		</script>

	<script type="text/javascript">
		
							function  settleCustBill() {
			
			var tr_count=0; 
			var finTot = 0;
			var custId = document.getElementById("cust").value;
			//var custtext = custId.options[custId.selectedIndex].innerHTML;
			var creditAmt=document.getElementById("credAmt").innerHTML; 
			
			//document.getElementById('credCust').value=custtext;				

 			document.getElementById("penAmt").innerHTML = creditAmt; 
 			var x = document.getElementById("receivedAmt").value;
			var pendingAmtInt=(parseInt(creditAmt));
			var receivedAmtInt=(parseInt(x));
		if(x=="" || x==null)
			{
			 alert("Please Enter Valid Recieved Amount!!")
			 var total=document.getElementById("total").value;
			 document.getElementById("receivedAmt").value=total;
			}
		else if(receivedAmtInt>pendingAmtInt){
			document.getElementById("receivedAmt").value=0;
			 alert("Entered Amount is greater than Pending Bill Amount!!");
			 settleCustBill();
		}else{
				document.getElementById("total").value=0;
				
 				 $.post('${getCustCreditBills}',
								{
									cust: custId,
									ajax: 'true'
								},
								function(data) {

									//alert(JSON.stringify(data));
									tr_count = data.length;

									$('#custCreditTable td').remove();
						$.each(data,
											function(key, data) {
												
												document.getElementById("credCust").innerHTML = data.userName; 

												var flag = 0;
												var y = 0;
												var tot = document.getElementById("total").value;
											
												
												var rcvAmt = document.getElementById("receivedAmt").value;
												//alert("tot" + tot);
												//alert("expAmt"+expAmt);
												 
													if ((parseFloat(tot) + parseFloat(data.remainingAmt)) > parseFloat(rcvAmt)) {
														//alert("ist gret");

														y = (parseFloat(tot) + parseFloat(data.remainingAmt))
																- parseFloat(rcvAmt);
														//alert("ist gret"+ y);
														flag = 1;
													}
											 
														var tr = $('<tr></tr>');

														if ((parseFloat(data.remainingAmt) <= parseFloat(rcvAmt) || flag == 1 ) && (parseFloat(rcvAmt) > parseFloat(tot))  ) {

															tr
																	.append($(
																			'<td></td>')
																			.html(
																					"<input type=checkbox   name='chkItem'  checked  value="+data.sellBillNo+"   id="+ data.sellBillNo+" >  <label for="+ data.sellBillNo+" ></label>"));

														}else{
															tr
															.append($(
																	'<td></td>')
																	.html(
																			"<input type=checkbox   name='chkItem'   value="+data.sellBillNo+"   id="+ data.sellBillNo+" >  <label for="+ data.sellBillNo+" ></label>"));
														}

														tr.append($('<td></td>')
																.html(key + 1));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.invoiceNo
																						+ ""
																						+ "<input type=hidden value='"+data.invoiceNo+"'  id=invoiceNo"+data.sellBillNo+"  name=invoiceNo"+data.sellBillNo+"  >"));

														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.billDate
																						+ ""
																						+ "<input type=hidden value='"+data.billDate+"'  id=billDate"+data.sellBillNo+"  name=billDate"+data.sellBillNo+"  >"));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.grandTotal
																						+ ""
																						+ "<input type=hidden value='"+data.grandTotal+"'  id=grandTotal"+data.sellBillNo+"  name=grandTotal"+data.sellBillNo+"  >"));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.paidAmt
																						+ ""
																						+ "<input type=hidden value='"+data.paidAmt+"'  id=paidAmt"+data.sellBillNo+"  name=paidAmt"+data.sellBillNo+"  >"));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.remainingAmt
																						+ ""
																						+ "<input type=hidden value='"+data.remainingAmt+"'  id=remainingAmt"+data.sellBillNo+"  name=remainingAmt"+data.sellBillNo+"  >"));

														if (flag == 0) {
															
															//alert("in if");

															tr
																	.append($(
																			'<td></td>')
																			.html(
																					"<input type=text onkeypress='return IsNumeric(event);'   style='width:100px;border-radius:25px; font-weight:bold;text-align:center;'  readonly ondrop='return false;' min='0'  onpaste='return false;' style='text-align: center;' class='form-control' name='settleAmt"
																							+ data.sellBillNo
																							+ "'  id=settleAmt"
																							+ data.sellBillNo
																							+ " value="
																							+ data.remainingAmt
																							+ "  /> &nbsp;  "));

														 
																finTot = parseFloat(data.remainingAmt)
																		+ (parseFloat(finTot));
																document
																		.getElementById("total").value = finTot
																		.toFixed(3);
															 
															$("#chkItem").prop(
																	"disabled",
																	true);
														}

														else {
															
															//alert("in else");
															var fin = parseFloat(data.remainingAmt)
															- (parseFloat(y));
															
															//alert("fin"+fin);
												
															tr
																	.append($(
																			'<td></td>')
																			.html(
																					"<input type=text onkeypress='return IsNumeric(event);'   style='width:100px;border-radius:25px; font-weight:bold;text-align:center;'  readonly ondrop='return false;' min='0'  onpaste='return false;' style='text-align: center;' class='form-control' name='settleAmt"
																							+ data.sellBillNo
																							+ "'  id=settleAmt"
																							+ data.sellBillNo
																							+ " value="
																							+ fin
																							+ "  /> &nbsp;  "));

														
														 
																finTot = fin
																		+ (parseFloat(finTot));
																//alert("finTot"+finTot);
																document.getElementById("total").value = finTot
																		.toFixed(3);
																
															
														 
															$("#chkItem").prop(
																	"disabled",
																	true);
														}
														
														
														$('#custCreditTable tbody')
																.append(tr); 
														
														
											}); 
									
									if (parseFloat(	document.getElementById("total").value) <= parseFloat(document
											.getElementById("receivedAmt").value)) {
										$("#sbtbtn").prop("disabled", false);

									} 
									
									if(tr_count>0){
										 $("#scrollbarsmodaldiv").css("height", "240");
										 
										} 

								}); 
			}
		 
		}
	</script>

	<script type="text/javascript">
		$('#sbtbtn').click(function() {
			
			if(document.getElementById("receivedAmt").value>0){
				document.getElementById("overlay2").style.display = "block";
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/submitResposeCredit",
				data : $("#modalfrm").serialize(),
				dataType : 'json',
				success : function(data) {
					if (data == 2) {
						$('#custCreditTable td').remove();
						document.getElementById("overlay2").style.display = "";
						alert("Updated Successfully")
						$("#overlay").fadeOut(300);
						setCustAmt();
						document.getElementById("sbtbtn").disabled="disabled";
						document.getElementById("receivedAmt").value="0";
						closeMyModal('myModalForCredit');
						document.getElementById("credAmt").innerHTML="0.0";
					}
				}
			}).done(function() {
				setTimeout(function() {
					$("#overlay").fadeOut(300);
				}, 500);
			});
			}else
				{
				alert("Please Enter Valid Received Amount!!")
				}
		});
	</script>

	<script type="text/javascript">
	 
		function showDetailsForCp()  {
			var tr_count=0; 
			 // alert("in recv 0");
			 $("#scrollbarsmodaldiv").css("height", "30");
			  document.getElementById("total").value=0;

			var finTot = 0;
			   
			var custId = document.getElementById("cust").value;

			//var custtext = custId.options[custId.selectedIndex].innerHTML;
		 

			var creditAmt=document.getElementById("credAmt").innerHTML; 
			
			//document.getElementById('credCust').value=custtext;
  			document.getElementById("penAmt").innerHTML = creditAmt; 

			//alert(custId);
		
			 
 				 $.post('${getCustCreditBills}',
								{
									cust: custId,
									ajax: 'true'
								},
								function(data) {
									//alert(JSON.stringify(data));
									
									tr_count = data.length;

									$('#custCreditTable td').remove();
									
									$
									.each(
											data,
											function(key, data) {
												
												document.getElementById("credCust").innerHTML = data.userName; 
														var tr = $('<tr></tr>');

														 

															tr
																	.append($(
																			'<td></td>')
																			.html(
																					"<input type=checkbox   name='chkItem'   value="+data.sellBillNo+"   id="+ data.sellBillNo+" >  <label for="+ data.sellBillNo+" ></label>"));

													 

														tr.append($('<td></td>')
																.html(key + 1));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.invoiceNo
																						+ ""
																						+ "<input type=hidden value='"+data.invoiceNo+"'  id=invoiceNo"+data.sellBillNo+"  name=invoiceNo"+data.sellBillNo+"  >"));

														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.billDate
																						+ ""
																						+ "<input type=hidden value='"+data.billDate+"'  id=billDate"+data.sellBillNo+"  name=billDate"+data.sellBillNo+"  >"));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.grandTotal
																						+ ""
																						+ "<input type=hidden value='"+data.grandTotal+"'  id=grandTotal"+data.sellBillNo+"  name=grandTotal"+data.sellBillNo+"  >"));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.paidAmt
																						+ ""
																						+ "<input type=hidden value='"+data.paidAmt+"'  id=paidAmt"+data.sellBillNo+"  name=paidAmt"+data.sellBillNo+"  >"));
														tr
																.append($(
																		'<td></td>')
																		.html(
																				data.remainingAmt
																						+ ""
																						+ "<input type=hidden value='"+data.remainingAmt+"'  id=remainingAmt"+data.sellBillNo+"  name=remainingAmt"+data.sellBillNo+"  >"));
	 
														
														tr
														.append($(
																'<td></td>')
																.html(
																		"<input type=text onkeypress='return IsNumeric(event);'   style='width:100px;border-radius:25px; font-weight:bold;text-align:center;'  readonly ondrop='return false;' min='0'  onpaste='return false;' style='text-align: center;' class='form-control' name='settleAmt"
																				+ data.sellBillNo
																				+ "'  id=settleAmt"
																				+ data.sellBillNo
																				+ " value=0  /> &nbsp;  "));
 
														$('#custCreditTable tbody')
																.append(tr); 
														
															
											}); 
									//alert(tr_count);
					 				if(tr_count>0){
										 $("#scrollbarsmodaldiv").css("height", "240");
										 
										} 
								}); 
				
 			 
		}
	</script>



	<!-- Modal to show cust creadit Bill end -->
	<script
		src="${pageContext.request.contextPath}/resources/customerBill/chosen.jquery.js"
		type="text/javascript"></script>


	<script
		src="${pageContext.request.contextPath}/resources/customerBill/init.js"
		type="text/javascript" charset="utf-8"></script>




	<script type="text/javascript">
		$(document).ready(function() {
			$('#slide').popup({
				focusdelay : 400,
				outline : true,
				vertical : 'top'
			});
		});
	</script>

	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
		$(document).ready(function() {
			$('#addcust').popup({
				focusdelay : 400,
				outline : true,
				vertical : 'top'
			});
			/* $('#myModalForCredit').popup({
				focusdelay : 400,
				outline : true,
				vertical : 'top'
			}); */
		});
	</script>

	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
	function openMyModal(modalId,type) {
		var radiobtn;
		
		if(type==1){
			radiobtn = document.getElementById("single12");
			radiobtn.checked = true;
			document.getElementById("popupType").value=1;//cust bills
			
			document.getElementById("deletedBillsRadio").style.display = "block";
			
			//alert("hi");
			getCustBills(1);
			//alert("Bye");

			
		}else if(type==2){
			
			radiobtn = document.getElementById("single12");
			radiobtn.checked = true;
			document.getElementById("popupType").value=2;//todays bills
			getCustBills(1);
			
			document.getElementById("deletedBillsRadio").style.display = "none";
			
		}else{
			
			document.getElementById("popupType").value=0;//otherwise
			document.getElementById("receivedAmt").value=0;
			
			document.getElementById("deletedBillsRadio").style.display = "none";
		}
	
		//alert(type);
		 
	 var modal1 = document.getElementById(modalId);
	 modal1.style.display = "block"; 
	 showDetailsForCp();
	}
		
	</script>

	<script type="text/javascript">
	
	function closeMyModal(modalId) {
		 
		 var modal1 = document.getElementById(modalId);
		 modal1.style.display = "none";
		}
	
	</script>


	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
	
	function setCustAmt() {
		
		var cust =  $('#cust').val() ;
		document.getElementById("credAmt").innerHTML = 0; 
		//document.getElementById("advCustAmt").innerHTML = 0;
		
		validateDefCustomer(cust);
		
		  $
		.get(
				'${getCustAmts}',
				{
					cust : cust,  
					ajax : 'true'
				},
				function(data) {
					//alert(data.creaditAmt);
					
					  
					document.getElementById("credAmt").innerHTML = parseFloat(data.creaditAmt).toFixed(2); 
					//document.getElementById("advCustAmt").innerHTML = data.advanceAmt; 
						 
				});   
	}
	</script>


	<!-- ------------------------------------------------------------------------------------- -->



	<script type="text/javascript">
		/*Dropdown Menu*/
		$('.dropdown').click(function() {
			$(this).attr('tabindex', 1).focus();
			$(this).toggleClass('active');
			$(this).find('.dropdown-menu').slideToggle(300);
		});
		$('.dropdown').focusout(function() {
			$(this).removeClass('active');
			$(this).find('.dropdown-menu').slideUp(300);
		});
		$('.dropdown .dropdown-menu li').click(
				function() {
					$(this).parents('.dropdown').find('span').text(
							$(this).text());
					$(this).parents('.dropdown').find('input').attr('value',
							$(this).attr('id'));
				});
		/*End Dropdown Menu*/
	</script>



	<!-- ------------------------------------------------------------------------------------- -->



	<script type="text/javascript">
		function trim(el) {
			el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
			replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
			replace(/\n +/, "\n"); // Removes spaces after newlines
			return;
		}
		function validateMobile(mobile) {
			var mob = /^[1-9]{1}[0-9]{9}$/;

			if (mob.test($.trim(mobile)) == false) {

				//alert("Please enter a valid email address .");
				return false;

			}
			return true;

		}

		function editCustomer() {

			var custId = document.getElementById("cust").value;

			if (custId != 0) {
				document.getElementById("overlay2").style.display = "block";
				$
						.post(
								'${editCustomerFromBill}',
								{
									custId : custId,
									ajax : 'true'
								},
								function(data) {
									document.getElementById("overlay2").style.display = "none";
									$('.addcust_open').trigger('click');
									//$('#myModalEdit').modal('show');
									//$('#addcust').popup('show');
									document
											.getElementById("add_cust_head_name").innerHTML = "Edit Customer";
									document.getElementById("customerName").value = data.custName;
									document.getElementById("mobileNo").value = data.phoneNumber;
									document.getElementById("custId").value = data.custId;
									document.getElementById("dateOfBirth").value = data.custDob;
									
									document.getElementById("kms").value = data.exVar1;
									
									document.getElementById("custAdd").value = data.address;
									var str = data.exVar2;
									var strArr = str.split('-');
									document.getElementById("pincode").value = strArr[0];
									document.getElementById("remark").value = strArr[1];
									
									
									if (data.gender == 1) {
										document.getElementById("moption").checked = true;
										}else{
										document.getElementById("foption").checked = true;
										}
										document.getElementById("custType").value =data.exInt1;
										$("#custType").trigger("chosen:updated");
										document.getElementById("ageRange").value =data.ageGroup;
										$("#ageRange").trigger("chosen:updated");
										$('.chosen-select').trigger('chosen:updated');
									if (data.isBuissHead == 1) {

										$("#isbuissnessdiv").show();
										document.getElementById("y-option").checked = true;
										document.getElementById("companyName").value = data.companyName;
										document.getElementById("gstNo").value = data.gstNo;
									} else {
										$("#isbuissnessdiv").hide();
										document.getElementById("y-option").checked = false;
									}

								});

			} else {
				alert("Select Customer ");
			}

		}

		function addCustomer() {
			
			
			
			document.getElementById("saveCust").style.display="none"; 
			//alert("hi");
			var phNo="";
			
			var custId = document.getElementById("custId").value;
			
			//alert("hi"+custId);
			
			var customerName = document.getElementById("customerName").value;
			var mobileNo = document.getElementById("mobileNo").value;
			phNo=mobileNo;
			var  kms= document.getElementById("kms").value;
			var dateOfBirth = document.getElementById("dateOfBirth").value;
			var custType = document.getElementById("custType").value;
			var ageRange = document.getElementById("ageRange").value;
			/* if(custId!=0)
				{
				phNo="0000000000";
				} */
			$.getJSON('${checkEmailText}', {
				phoneNo : mobileNo,	
					ajax : 'true',
			},

			function(saveFlag) {
				
				alert(saveFlag);
				
				document.getElementById("saveCust").style.display="block"; 
				
				 if(parseInt(saveFlag)>0 && parseInt(saveFlag)!=custId){
					 
					 document.getElementById("saveCust").style.display="block"; 
					 
					   alert("Duplicate Mobile No Found.");
						//document.getElementById("sbtbtn4").disabled = true;
						document.getElementById("mobileNo").value = "";
						document.getElementById("mobileNo").focus();
				}else{
			var gender = 2;
			if (document.getElementById('moption').checked) {
				gender = 1;
			}
			//var isBuissness = document.getElementById("isBuissness").value;
			var buisness = 0;
			if (document.getElementById('y-option').checked) {
				buisness = 1;
			}
			var companyName = document.getElementById("companyName").value;
			var gstNo = document.getElementById("gstNo").value;
			var custAdd = document.getElementById("custAdd").value;
			var pincode = document.getElementById("pincode").value;
			var remark = document.getElementById("remark").value;

			var flag = 0;

			if (customerName == "") {
				alert("Enter Customer Name");
				flag = 1;
			}else if (custAdd == "") {
				alert("Please Enter Address");
				flag = 1;
			} else if (mobileNo == "" || !validateMobile(mobileNo)) {
				alert("Enter Valid Mobile No");
				flag = 1;
			}else if (custAdd == "") {
				alert("Please Enter Address");
				flag = 1;
			} 
			
			else if (ageRange == 0) {
				alert("Please Select Age Group");
				flag = 1;
			} else if (buisness == 1) {

				if (companyName == "") {
					alert("Enter Company Name");
					flag = 1;
				} else if (gstNo == "") {
					alert("Enter GST No");
					flag = 1;
				} 
				
			}
			
			if (kms == "") {
				kms=0;
			}

			if (flag == 0) {
				$
						.post(
								'${saveCustomerFromBill}',
								{
									customerName : customerName,
									mobileNo : mobileNo,
									dateOfBirth : dateOfBirth,
									buisness : buisness,
									companyName : companyName,
									gstNo : gstNo,
									custAdd : custAdd,
									custId : custId,
									custType:custType,
									ageRange:ageRange,
									kms:kms,
									gender:gender,
									pincode:pincode,
									remark:remark,
									ajax : 'true'
								},
								function(data) {
									
									document.getElementById("saveCust").style.display="block"; 

									//alert(JSON.stringify(data));

									if (data.error == false) {

										var html = '<option value="0" selected>Select Customer</option>';
										var len = data.customerList.length;
										//alert(data.addCustomerId);
										for (var i = 0; i < len; i++) {

											if (data.customerList[i].custId == data.addCustomerId) {
												html += '<option value="' + data.customerList[i].custId + '" selected>'
														+ data.customerList[i].custName
														+ '&nbsp;'
														+ data.customerList[i].phoneNumber
														+ '</option>';
											} else {
												html += '<option value="' + data.customerList[i].custId + '">'
														+ data.customerList[i].custName
														+ '&nbsp;'
														+ data.customerList[i].phoneNumber
														+ '</option>';
											}

										}

										$('#cust').html(html);

										$("#cust").trigger("chosen:updated");
										$('.chosen-select').trigger(
												'chosen:updated');
										
										document.getElementById("pincode").value = "";
										document.getElementById("remark").value = "";
										document.getElementById("kms").value = "0";


										document.getElementById("customerName").value = "";
										document.getElementById("mobileNo").value = "";

										document.getElementById("dateOfBirth").value = "";

										document.getElementById("n-option").checked = true;
										document.getElementById("companyName").value = "";
										document.getElementById("gstNo").value = "";
										document.getElementById("custAdd").value = "";
										document.getElementById("custId").value = 0;
										document.getElementById("moption").checked = true;
										document.getElementById("custType").value ="0";
										$("#custType").trigger("chosen:updated");
										document.getElementById("ageRange").value ="0";
										$("#ageRange").trigger("chosen:updated");
										$('.chosen-select').trigger('chosen:updated');
										document
												.getElementById("add_cust_head_name").innerHTML = "Add Customer";
										$("#isbuissnessdiv").hide();

										if (custId != 0) {
											alert("Update Successfully");
										} else {
											alert("Customer Add Successfully");
											$('#addcust').popup('hide'); 
										}
										$('.addcust_close').trigger('click');
									} else {
										alert("Failed To Add Customer");
									}

								});
			}
				}
				});
		}
	</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	function showOutOfStockModal() {
		 var modal1 = document.getElementById('outOfStock');
		 modal1.style.display = "block"; 
		 showOutOfStockItemList();
		 
	}
	
	</script>

	<script type="text/javascript">
	 
		function showOutOfStockItemList()  {
			
			document.getElementById("overlay2").style.display = "block";
			 
 				 $.post('${getItemCurrentStockForOps}',
								{
									ajax: 'true'
								},
								function(data) {
									
									document.getElementById("overlay2").style.display = "";
									//alert(JSON.stringify(data));
									
									$('#stockTable td').remove();
									
									var sr=1;
									
									$
									.each(
											data,
											function(key, data) {
												
												
												if(data.currentStock<data.reorder){
												
														var tr = $('<tr></tr>');


														//tr.append($('<td></td>').html(key + 1));
														tr.append($('<td></td>').html(sr));
														sr=sr+1;
														
														tr.append($('<td></td>').html(data.itemName));

														var stock=0;
														if(data.currentStock>0){
															stock=data.currentStock;
														}
														
														tr.append($('<td></td>').html(stock));
														
 
														$('#stockTable tbody')
																.append(tr); 
														
											}	
											}); 
								}); 
				
 			 
		}
	</script>


	<script type="text/javascript">
		function trim(el) {
			el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
			replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
			replace(/\n +/, "\n"); // Removes spaces after newlines
			return;
		}
		function validateMobile(mobile) {
			var mob = /^[1-9]{1}[0-9]{9}$/;

			if (mob.test($.trim(mobile)) == false) {

				//alert("Please enter a valid email address .");
				return false;

			}
			return true;

		}
		function isBuissness(value) {

			if (value == 1) {
				$("#isbuissnessdiv").show();
			} else {
				$("#isbuissnessdiv").hide();
			}

		}
		function isBuissnessEdit(value) {

			if (value == 1) {
				$("#isbuissnessdivedit").show();
			} else {
				$("#isbuissnessdivedit").hide();
			}

		}
		function modeOfPayDivHideShow(value) {

			if (value == 2) {
				$("#modeOfPayDiv").show();
			} else {
				 document.getElementById('single').checked = true;
				 changeSplitSingle(1);
				$("#modeOfPayDiv").hide();
			}

		}
		function changeSplitSingle(value) {

			if (value == 2) {
				$("#splitDiv").show();
				$("#singleDiv").hide();
			} else {
				$("#singleDiv").show();
				$("#splitDiv").hide();
			}

		}
		function changeSplitSingle1(value) {

			if (value == 2) {
				$("#splitDiv1").show();
				$("#singleDiv1").hide();
			} else {
				$("#singleDiv1").show();
				var x=document.getElementById("receivedAmt").value ;
				
			 
				$("#splitDiv1").hide();
			}

		}
		function clearAddCustomerpopup() {
			
			document.getElementById("pincode").value = "";
			document.getElementById("remark").value = "";
			document.getElementById("kms").value = "0";

			document.getElementById("customerName").value = "";
			document.getElementById("mobileNo").value = "";
			document.getElementById("dateOfBirth").value = "";
			document.getElementById("n-option").checked = true;
			document.getElementById("companyName").value = "";
			document.getElementById("gstNo").value = "";
			document.getElementById("custAdd").value = "";
			document.getElementById("custId").value = 0;
			document.getElementById("moption").checked = true;
			document.getElementById("custType").value ="0";
			$("#custType").trigger("chosen:updated");	
			document.getElementById("ageRange").value ="0";
		    $("#ageRange").trigger("chosen:updated");
			$('.chosen-select').trigger('chosen:updated');
			document.getElementById("add_cust_head_name").innerHTML = "Add Customer";
			$("#isbuissnessdiv").hide();
		}


		function getItemList(catId) {
			//alert(catId)
			  
					$(".act_subcat").removeClass('act');
					$("#subcat"+catId).addClass('act');
			var searchBy = 2;
			/* if (document.getElementById('f-option').checked) {
				searchBy = 1;
			} else if (document.getElementById('s-option').checked) {
				searchBy = 2;
			} */
			
			$
					.post(
							'${getItemListByCatSubCatForCustomerBill}',
							{
								searchBy : searchBy,
								catId : catId,
								ajax : 'true'
							},
							function(data) {
								$(".itemDummyClass").remove();
								var frRateCat =  $('#frRateCat').val();
								
								for (var i = 0; i < data.length; i++) { 
									var mrp=0; 
									if(frRateCat==1){
										mrp=data[i].itemMrp1;
									}else if(frRateCat==2){
										mrp=data[i].itemMrp2;
									}else if(frRateCat==3){
										mrp=data[i].itemMrp3;
									}
									var taxper=data[i].itemTax1+data[i].itemTax2;
									var timeDiv = '<div class="sweet_one"><a href="#" title="' + data[i].itemName + '"   onclick="opnItemPopup('+taxper+','+data[i].id+','+mrp+',\''+data[i].itemName+'\',\''+data[i].extVar3+'\','+data[i].extInt2+')"><p>'
									+ mrp
									+ ' </p> '
									+ data[i].itemName
									+ '<span></span></a></div>';

									/* $("#itemDiv")
											.append(
													$(
															'<li class="itemDummyClass"></li>')
															.html(timeDiv)); */
									$("#itemDiv")
									.append(
											$(
											'<li class="itemDummyClass" alt="' + data[i].itemName + '"   onclick="opnItemPopup('+taxper+','+data[i].id+','+mrp+',\''+data[i].itemName+'\',\''+data[i].extVar3+'\','+data[i].extInt2+')">'+timeDiv+'</li>'));
								}
								//$('.carlist_scrollbars').ClassyScroll();
								 $(".scrollbar-content").css("top", "0");
								 $(".scrollbar-handle").css("top", "0");
							});
		}

		function getCatListAndSubCatList(value) {
			
			if(value==1){
				$("#catItmDiv").show();
				$("#itmDiv").hide();
			}else{
				$("#catItmDiv").hide();
				$("#itmDiv").show();
			}

			
			document.getElementById("catSubCatDivHideShow").style.display = "block";

			if (value == 1) {
				//getcatlist();
				$(".itemDummyClass").remove();
			} else if (value == 2) {
				//getsubcatlist();
			} else {
				document.getElementById("catSubCatDivHideShow").style.display = "none";
				
				getAllItemlist();
			}

		}

		function getcatlist() {
			
			$
					.post(
							'${getCategoryListForCustomerBill}',
							{
								ajax : 'true'
							},
							function(data) {
								$(".itemDummyClass").remove();
								$(".catDummyClass").remove();
								for (var i = 0; i < data.mCategoryList.length; i++) {
									 
									var timeDiv = '<a href="#" title="'
											+ data.mCategoryList[i].catName
											+ '" onclick="getsubcatlist('
											+ data.mCategoryList[i].catId
											+ ')"><img src="${pageContext.request.contextPath}/resources/newpos/images/laddu.jpg"'+
							'alt="laddu"> <span>'
											+ data.mCategoryList[i].catName
											+ '</span></a>';

									$("#catSubCatDiv")
											.append(
													$(
															'<div class="cat_one catDummyClass"></div>')
															.html(timeDiv));
								}
								$('.category_scrollbars').ClassyScroll();
							});

		}
		
		function getsubcatlist(catId) {

			$
					.post(
							'${getSubCategoryListForCustomerBill}',
							{
								catId : catId,
								ajax : 'true'
							},
							function(data) {
								$(".itemDummyClass").remove();
								$(".subCatDummyClass").remove();
								
								var subcatid=0;
								
								for (var i = 0; i < data.length; i++) {
									
									if(i==0){
										subcatid=data[i].subCatId;
									}
									
									var timeDiv = '<a href="#" class="act_subcat" id="subcat'+data[i].subCatId+'"  title="'
										+ data[i].subCatName
										+ '" onclick="getItemList('
										+ data[i].subCatId
										+ ')">'+ data[i].subCatName
										+'</a>';

									$("#subcatUl")
											.append(
													$(
															'<li class="subCatDummyClass "></li>')
															.html(timeDiv));
								}
								
								getItemList(subcatid);
								//$('.category_scrollbars').ClassyScroll();
							});

		}
		function getAllItemlist() {
			
			$
					.post(
							'${getAllItemlistForCustomerBill}',
							{
								ajax : 'true'
							},
							function(data) {
								$(".subCatDummyClass").remove();
								$(".itemDummyClass").remove();
								var frRateCat =  $('#frRateCat').val();
								
								
								
								for (var i = 0; i < data.length; i++) {
									
									var mrp=0;
									
									if(frRateCat==1){
										mrp=data[i].itemMrp1;
									}else if(frRateCat==2){
										mrp=data[i].itemMrp2;
									}else if(frRateCat==3){
										mrp=data[i].itemMrp3;
									}
									 
									var taxper=data[i].itemTax1+data[i].itemTax2;
									var timeDiv = '<div class="sweet_one"><p>'
									+ mrp
									+ ' </p> '
									+ data[i].itemName
									+ '<span></span></div>';

									$("#itemDivForItem")
											.append(
													$(
													'<li class="itemDummyClass" alt="' + data[i].itemName + '"   onclick="opnItemPopup('+taxper+','+data[i].id+','+mrp+',\''+data[i].itemName+'\',\''+data[i].extVar3+'\','+data[i].extInt2+')">'+timeDiv+'</li>'));
															 
								}
							//	$('#scrollDiv').removeClass('carlist_scrollbars');
								 //$('.scrollbar-content').animate({ scrollTop: 0 }, "fast");
								 $(".scrollbar-content").css("top", "0");
								 $(".scrollbar-handle").css("top", "0");
								 
								//  document.getElementById("scrollDiv").style.top = "0px";
								//$('#scrollingDiv').load('a.html #scrollingDiv');
								//$('#scrollDiv').addClass('carlist_scrollbars');
								//$('.carlist_scrollbars').ClassyScroll();
							});

		}
	</script>


	<!-- ------------------------------------------------------------------------------------- -->

	<script>
		function myFunction1() {
			
			$(".scrollbar-content").css("top", "0");
			 $(".scrollbar-handle").css("top", "0");
		    $('.itemDummyClass').hide();
		    var txt = $('#myInput1').val();
		    $('.itemDummyClass').each(function(){
		       if($(this).text().toUpperCase().indexOf(txt.toUpperCase()) != -1){
		           $(this).show();
		       }
		    });
		     
		}
	</script>

	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
			$(document).ready(function () {
		 
				 
			    $('#payment').popup({
			        focusdelay: 400,
			        outline: true,
			        vertical: 'top'
			    });
			});
			</script>

	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
			$(document).ready(function () {
			    $('#quantity').popup({
			        focusdelay: 400,
			        outline: true,
			        vertical: 'top'
			    });
			});
			</script>


	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
				$(document).ready(function() {
						$('.category_scrollbars').ClassyScroll();
				});
				$(document).ready(function() {
					$('.carlist_scrollbars').ClassyScroll();
			});
				$(document).ready(function() {
					$('.scrollbars').ClassyScroll();
			});
		</script>


	<!-- ------------------------------------------------------------------------------------- -->



	<script type="text/javascript">
	
	function calPad(side,value) {
		var qty =  $('#enterQty').val() ;
		var rate =  $('#enterRate').val() ;
	

		 if(side==1){
			 
			 if(qty=="NaN"){
				 qty="";
			 }
			 
			  if(value=="."){
				 qty += value
				 qty = qty.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'); 
				 
			 }else if(value==10){
				  
				 if(qty.length!=0){
					 
					 qty  = qty.substring(0, qty.length - 1);
				 }
				  
			 }else{
				 qty += value
			 }
			 document.getElementById("enterQty").value = qty;
			 itemRateCalculation(1);
			 $("#enterQty").focus(); 
			 
		 }else if(side==2){
			 
			  
			 if(rate=="NaN"){ 
				 rate="";
			 } 
			 if(value=="."){ 
				  rate += value
				  rate = rate.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1'); 
				 
			 }else if(value==10){
				  
				 if(rate.length!=0){
					 
					 rate  = rate.substring(0, rate.length - 1);
				 }
				  
			 }else{
				 rate += value
			 }
			 document.getElementById("enterRate").value = rate;
			 itemRateCalculation(2);
			 $("#enterRate").focus(); 
		 }
		 
		 if(value==11){
			 document.getElementById("enterQty").value = "";
			 document.getElementById("enterRate").value = "";
		 }
		 
	}
	
	$('.numberOnly').on('input', function() {
		 this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
		 
		});
	
	</script>

	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	

								function itemRateCalculation(flag) {
			
			var rateHidden = parseFloat($('#rateHidden').val());
			var rate = parseFloat($('#enterRate').val());
			var qty = parseFloat($('#enterQty').val());
			
			
				if(flag==1){
					var newrate = parseFloat(rateHidden*qty);
					document.getElementById("enterRate").value = newrate;
					 
				}else{
					var newQty = (rate/rateHidden).toFixed(3);
					document.getElementById("enterQty").value = newQty;
				}
			 
		}
		
		</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
		
		function itemDiscPerCalculation(flag) {
			

			document.getElementById("cashAmt").value =0;
			document.getElementById("cardAmt").value =0;
			document.getElementById("epayAmt").value =0;
			document.getElementById("epayLabel").innerHTML =" Total: &nbsp;&nbsp;"+0;
        	document.getElementById("epayLabel").style.color="black";

        	
        	/* document.getElementById("discPer").value =${tempHeader.discountPer};
        	document.getElementById("discAmt").value =${tempHeader.discountAmt}; */
        	
			var discPer = parseFloat($('#discPer').val());
			var discAmt = parseFloat($('#discAmt').val());
			var totalAmtPopup;
			var tot=parseFloat($('#totalAmtPopup').text());
			//alert(discAmt);
			var mode=${mode};
		
			var payableAmount=0;
			//if(mode==0){
				payableAmount=parseFloat($('#totalAmtPopup').text());	
			//}else{
				//payableAmount=parseFloat($('#totalAmtPopup').text())-${tempHeader.paidAmt};
			//}
			
			
 			var advAmt = document.getElementById("advAmt").value;
 			//alert("ADv - "+advAmt);
 			
 			var PreviousPaidAmt=${tempHeader.paidAmt};
 			PreviousPaidAmt=PreviousPaidAmt-advAmt;
 			
 			var additionalAmt=0;
 			
			if(parseFloat(advAmt)>0){
				totalAmtPopup= parseFloat($('#totalAmtPopup').text())-parseFloat(advAmt);
			}else{
				if(mode==0){
					totalAmtPopup= parseFloat($('#totalAmtPopup').text())-parseFloat(advAmt);
				}else{
					totalAmtPopup= parseFloat($('#totalAmtPopup').text())-${tempHeader.paidAmt};	
				}
			}
			
			//alert(totalAmtPopup);
			
			  if(flag==1){
				var calDiscAmt = parseFloat(tot*discPer/100);
						
				if(discPer>100){
					alert("Discount percent is invalid");
					document.getElementById("discAmt").value=0;
					document.getElementById("discPer").value=0;
					//document.getElementById("payAmt").value =totalAmtPopup;
					
					var totalAmt=totalAmtPopup-0;
					
					additionalAmt=totalAmt-PreviousPaidAmt;
					
					document.getElementById("totalPayableAmt").innerHTML = totalAmt.toFixed(2);
					document.getElementById("payAmt").value = totalAmt.toFixed(2);
					document.getElementById("additionalAmt").value = additionalAmt.toFixed(2);
					
				}else{
				
				var totalAmt=totalAmtPopup-calDiscAmt;
				
				additionalAmt=totalAmt-PreviousPaidAmt;
				
				
				
				document.getElementById("discAmt").value = calDiscAmt.toFixed(2);
				document.getElementById("totalPayableAmt").innerHTML = totalAmt.toFixed(2);
				document.getElementById("payAmt").value = totalAmt.toFixed(2);
				document.getElementById("additionalAmt").value = additionalAmt.toFixed(2);
				}
				 
			}else{
				
				 if(discAmt>payableAmount){
					 if(discAmt!=0){
						alert("Discount amount should be smaller than total amount");
					 }
					document.getElementById("discPer").value=0;
					document.getElementById("discAmt").value=0;
					//document.getElementById("payAmt").value=payableAmount;
					
					var totalAmt=payableAmount-0;
					
					additionalAmt=totalAmt-PreviousPaidAmt;
					
					document.getElementById("totalPayableAmt").innerHTML = totalAmt.toFixed(2);
					document.getElementById("payAmt").value = totalAmt.toFixed(2);
					document.getElementById("additionalAmt").value = additionalAmt.toFixed(2);
					
				}else{
				
				var calDiscPer = parseFloat((discAmt/(payableAmount/100)));

				var totalAmt=totalAmtPopup-discAmt;
				
				additionalAmt=totalAmt-PreviousPaidAmt;
				
				//alert(totalAmt+" -------- "+additionalAmt+" ------------ "+PreviousPaidAmt);
				
				document.getElementById("discPer").value = calDiscPer.toFixed(2);;
				document.getElementById("totalPayableAmt").innerHTML = totalAmt.toFixed(2);
				document.getElementById("payAmt").value = totalAmt.toFixed(2);
				document.getElementById("additionalAmt").value = additionalAmt.toFixed(2);
				} 

			}  
		}
		
		</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
		
	function addItemInBillList() {
			 
			var rateHidden = parseFloat($('#rateHidden').val());
			var rate = parseFloat($('#enterRate').val());
			var qty = parseFloat($('#enterQty').val());
			var itemIdHidden =  $('#itemIdHidden').val() ;
			var itemNameHidden =  $('#itemNameHidden').val() ;
			var uomHidden =  $('#uomHidden').val() ;
			var taxperHidden =  $('#taxperHidden').val() ;
			var isDecimalHidden =  $('#isDecimalHidden').val() ;
			var flag=0;
			if(isNaN(rate) || rate==0){
				alert("Enter Valid Rate ");
				flag=1;
			}else if(isNaN(qty) || qty==0){
				alert("Enter Valid QTY ");
				flag=1;
			}else if(isDecimalHidden==0 && qty != Math.floor(qty))
				{
				alert("Please Enter Valid Number of Qty")
				 document.getElementById("enterQty").value = "0";
				 document.getElementById("enterRate").value = "0";
				 flag=1;
				}
			
			 
			if(flag==0){
				 document.getElementById("overlay2").style.display = "block";
				$
				.post(
						'${addItemInBillList}',
						{
							rateHidden : rateHidden,
							rate : rate,
							qty : qty,
							itemIdHidden : itemIdHidden, 
							itemNameHidden : itemNameHidden,
							taxperHidden : taxperHidden,
							uom:uomHidden,
							isDecimal:isDecimalHidden,
							ajax : 'true'
						},
						function(data) {
							 document.getElementById("overlay2").style.display = "none";
							$('#quantity').popup('hide');  
							getCurrentItemList();
									 
						});
			}
			
			  
		}
	
</script>



	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	
	function billOnHold() {
		   
		var key =  $('#key').val() ;
		var custId =  $('#cust').val() ;
		
		var rowcount = $('#itemBillTable tr').length;
		 
	 if(rowcount>1){
		 
		 if(key>0){
			 submitBillOnHold();
		 }else{
			 var modal = document.getElementById("myModal");
			 modal.style.display = "block"; 
			 document.getElementById("holdCustName").focus();
		 }
		  
	 }else{
		 alert("Add Minimum One Product");
	 }
		    
	}
	
	</script>

	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	function submitBillOnHold() {
		   
		var key =  $('#key').val() ;
		var custId =  $('#cust').val() ;
		var holdCustName =  $('#holdCustName').val() ;
		 
		if(holdCustName!="" || key>0){
			 
			var modal = document.getElementById("myModal");
			 modal.style.display = "none";
			  $.post(
					'${billOnHold}',
					{
						key : key, 
						custId : custId,
						holdCustName : holdCustName,
						ajax : 'true'
					},
					function(data) {
						
						window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
								 
					});  
		}else{
			alert("Enter Customer Name");
			document.getElementById("holdCustName").focus();
		}
		  
		    
	}
	
	</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	function revertHoldBillOnCurrent() {
		   
		var index =  $('#holdBillNo').val() ;
		  $
		.post(
				'${revertHoldBillOnCurrent}',
				{
					key : index,  
					ajax : 'true'
				},
				function(data) {
					  
					window.location = "${pageContext.request.contextPath}/newcustomerbill/1";
							 
				});   
	}
	
	
	</script>


	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
		
	function imgError(image) {
	    image.onerror = "";
	    image.src = "${pageContext.request.contextPath}/resources/newpos/images/noimage.jpeg";
	    return true;
	}
	</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	function deleteItemInBillList(index) {
		   
		  $
		.post(
				'${deleteItemInBillList}',
				{
					index : index, 
					ajax : 'true'
				},
				function(data) {
					  
					getCurrentItemList();
							 
				});   
}
	
	</script>

	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
	
	function opnItemPopup(taxper,itemId,mrp,itemName,uom,isDecimal) {
		document.getElementById("enterRate").value = 0;
		document.getElementById("enterQty").value = 0;
		

$('#quantity').popup('show');

document
.getElementById("itemNmaeHeadeing").innerHTML = itemName;

document.getElementById("rateHidden").value = mrp
document.getElementById("taxperHidden").value = taxper;
document.getElementById("itemNameHidden").value = itemName;
document.getElementById("itemIdHidden").value = itemId;
document.getElementById("uomHidden").value = uom;
document.getElementById("isDecimalHidden").value = isDecimal;
document.getElementById("rate_lable").innerHTML = "Rate : "+ mrp; 
document.getElementById("qty_lable").innerHTML = "Qty : 1 "+uom;
$("#enterQty").focus(); 


}
	
	</script>





	<!-- ------------------------------------------------------------------------------------- -->



	<script type="text/javascript">
	
function getCurrentItemList() {
		
		$
		.post(
				'${getCurrentItemList}',
				{ 
					ajax : 'true'
				},
				function(data) {
					 
					$('#quantity').popup('hide'); 
					$('#itemBillTable tr').remove();
					
					var mainTrStr = '<tr>'
					+'<th style="text-align: center;" width="2%">Sr</th>'
					+'<th style="text-align: center;">Product</th>'
					+'<th style="text-align: center;" width="10%">QTY</th>'
					+'<th style="text-align: center;" width="10%">UOM</th>'
					+'<th style="text-align: center;" width="13%">Price</th>' 
					+'<th style="text-align: center;" width="13%">Total</th>'
					+'<th style="text-align: center;" width="2%">Del</th>'
					+'</tr>';
				var mainTr = $(mainTrStr);
				$('#itemBillTable tbody').append(
						mainTr);
				
				
				
					var taxableAmt=0;
					var taxAmt=0;
					var total=0;
					$
					.each(
							data,
							function(key, item) {
								 
								var tr = $('<tr></tr>');
								 
								tr
										.append($(
												'<td ></td>')
												.html(key+1));
								tr
										.append($(
												'<td ></td>')
												.html(
														item.itemName));
								if(item.isDecimal==1){
								tr
								.append($(
										'<td style="text-align: right;"onclick="opnItemPopup('+item.taxPer+','+item.itemId+','+item.orignalMrp+',\''+item.itemName+'\',\''+item.uom+'\','+item.isDecimal+')"></td>')
										.html(
												((item.qty).toFixed(3)))); 
								}else
									{
									tr
									.append($(
											'<td style="text-align: right;"onclick="opnItemPopup('+item.taxPer+','+item.itemId+','+item.orignalMrp+',\''+item.itemName+'\',\''+item.uom+'\','+item.isDecimal+')"></td>')
											.html(
													((item.qty).toFixed(0)))); 	
									}
								tr
								.append($(
										'<td style="text-align: right;"></td>')
										.html(item.uom)); 
								tr
										.append($(
												'<td style="text-align: right;"></td>')
												.html(
														item.orignalMrp)); 
								tr
										.append($(
												'<td style="text-align: right;"></td>')
												.html(
														(item.total).toFixed(2)));
								tr
								.append($(
										'<td style="text-align: center;"></td>')
										.html('<a href="#" title="Delete" onclick="deleteItemInBillList('+key+')"><i class="fa fa-trash"></i></a>'));
								
								taxableAmt=taxableAmt+item.taxableAmt;
								taxAmt=taxAmt+item.taxAmt;
								total=total+item.total;
								
								$('#itemBillTable tbody').append(
										tr);

							})
							
							document.getElementById("taxableAmtLable").innerHTML = taxableAmt.toFixed(2); 
							document.getElementById("taxAmtLable").innerHTML = taxAmt.toFixed(2); 
							document.getElementById("totalLable").innerHTML = total.toFixed(2); 
							document.getElementById("totalItemLable").innerHTML = data.length; 
							
							
							 
							
							var advAmt = document.getElementById("advAmt").value;
							//alert("advAmt"+advAmt);
							if(parseFloat(advAmt)>0){
								//alert(0);
								//document.getElementById("totalAmtPopup").innerHTML = total.toFixed(2) -parseFloat(advAmt);
								document.getElementById("totalAmtPopup").innerHTML = total.toFixed(2);
								document.getElementById("totalPayableAmt").innerHTML = total.toFixed(2)-parseFloat(advAmt);
							}else{
								//alert(1);
								document.getElementById("totalAmtPopup").innerHTML = total.toFixed(2); 
								document.getElementById("totalPayableAmt").innerHTML = total.toFixed(2);
							}
							
							
							
							document.getElementById("payAmt").value = total.toFixed(2);

							//document.getElementById("discPer").value =0;
							//document.getElementById("discAmt").value =0;
							
							getUomList();
				});
		
	}
	
	</script>

	<script type="text/javascript">
	
function getUomList(){
		
		$
		.post('${uomWiseBillQtyList}',{ 
					ajax : 'true'
		},
		function(data) {
			
			//alert(JSON.stringify(data));
			
			var text="";
			var i;
			//for (i = 0; i < data.length; i++) {
				
				var totQty=0;
				
				$
				.each(
						data,
						function(key, item) {
								totQty=totQty+item.qty;
							  text += item.uom+"&nbsp;=&nbsp;&nbsp;"+item.qty + "&nbsp;&nbsp;&nbsp;&nbsp;";							
						});
				
				text += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TOTAL = &nbsp;"+totQty;

			//} 
			
			document.getElementById("totaluom").innerHTML = text;
			
			
		});
		
		
		
	}
	
	</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	function cancelFromHoldBill(index) {
		   
		 
		  $
		.post(
				'${cancelFromHoldBill}',
				{
					key : index,  
					ajax : 'true'
				},
				function(data) {
					  
					window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
							 
				});   
	}
	
	</script>



	<!-- ------------------------------------------------------------------------------------- -->




	<script type="text/javascript">
	
	function submitBill(printbilltype) {
		var advAmt = document.getElementById("advAmt").value;
		var advOrderDate = document.getElementById("advOrderDate").value;
		var isAdvanceOrder= document.getElementById("isAdvanceOrder").value;
		var key =  $('#key').val() ;
		
		var custId =  $('#cust').val() ;
		var selectedText = $("#cust option:selected").text(); 
		document.getElementById("credAmt").innerHTML="0.0";

		var frtype =  $('#frtype').val() ;
		var rowcount = $('#itemBillTable tr').length;
		var flag = 0;
		   
		 if(rowcount<=1){
			 alert("Select Minimum Product");
			 flag=1;
		 }else if(custId==0){
			 flag=1;
			 alert("Select Customer");
		 }
		 
		 if(flag==0){
		 document.getElementById("overlay2").style.display = "block";
		   $
			.post(
					'${submitBill}',
					{
						key : key,  
						custId : custId,
 						selectedText : selectedText,
 						advAmt:advAmt,
 						advOrderDate:advOrderDate,
 						isAdvanceOrder:isAdvanceOrder,
						ajax : 'true'
					},
					function(data) {
						  if(advAmt>0){
						 document.getElementById("advAmt").value = 0; 
						 document.getElementById("advBillLable").style.display = 'none';
						 document.getElementById("actionName").innerHTML= 'ADD BILL';
						  }
							if(key==0){
								
								if(printbilltype==1){
									
									 window.open('${pageContext.request.contextPath}/printKotBill/'+data.message,'_blank');
									 
								}else if(printbilltype==2){
									 
									if(frtype<10000000){
										window.open('${pageContext.request.contextPath}/printBillOfSupply/'+data.message,'_blank');
									}else{
										window.open('${pageContext.request.contextPath}/printBillOfInvoice/'+data.message,'_blank');
									}
								}
								
								 	var defaultCustomer =  $('#defaultCustomer').val() ;
								 	
								 	document.getElementById("cust").value = defaultCustomer;
									getCurrentItemList(); 
									$('.chosen-select').trigger(
									'chosen:updated');
									document.getElementById("overlay2").style.display = "none";	 
							 }else{
								 if(printbilltype==1){
										
									 window.open('${pageContext.request.contextPath}/printKotBill/'+data.message,'_blank');
									 
								}else if(printbilltype==2){
									 
									if(frtype<10000000){
										window.open('${pageContext.request.contextPath}/printBillOfSupply/'+data.message,'_blank');
									}else{
										window.open('${pageContext.request.contextPath}/printBillOfInvoice/'+data.message,'_blank');
									}
								}
								 window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
							 }
						 
						 
						
					});    
		 }
		  
	}
	
	</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	
	function submitBillByPaymentOption(printbilltype) {
		
		//alert("hi");
		var sellBillNo =  $('#sellBillNo').val() ;
		
		var remark =  $('#payRemark').val() ;
		
		var advAmt = document.getElementById("advAmt").value;
		var advOrderDate = document.getElementById("advOrderDate").value;
		var isAdvanceOrder= document.getElementById("isAdvanceOrder").value;
		var flagPayable=0;
		var mode=${mode};
		
		var finalAmt=parseFloat($('#totalPayableAmt').text());
		
		 if(finalAmt<0){
			alert("Invalid bill amount");
		}else{ 
		
		
		
		 document.getElementById("credAmt").innerHTML="0.0";

		if (document.getElementById('split').checked) {
					
			var totalPayableAmt=parseFloat($('#totalPayableAmt').text());
			
			var cashAmt =  $('#cashAmt').val() ;
			var cardAmt =  $('#cardAmt').val() ;
			var epayAmt =  $('#epayAmt').val() ;
		 
			
			var epayLabel=parseFloat(cashAmt)+parseFloat(cardAmt)+parseFloat(epayAmt)
 			 
		 	if(totalPayableAmt==epayLabel){
			 	flagPayable=1;
		 	}else{
			 	flagPayable=2;
		 	}
		}
 
		if(parseInt(flagPayable)==2 && document.getElementById('creditBillno').checked){
			alert("Please Enter the valid Bill Amount!!");
			
		}else{
		   
		var key =  $('#key').val() ;
		var custId =  $('#cust').val() ;
		var cashAmt =  $('#cashAmt').val() ;
		var cardAmt =  $('#cardAmt').val() ;
		var epayAmt =  $('#epayAmt').val() ;
		var billType =  $('#billType').val() ;
		var payType=0;var payTypeFlag=0; var payTypeSplit="0";var msg="";
		
		if(billType==1){
			payTypeFlag=0;
			payType=1;
		}else if(billType==2){
			var cardType = $('#cardType option:selected').val();
			if(cardType==""){
				payTypeFlag=1;
				msg="Please Select Pay Type( Card Type Or E-Pay type)";
			}
			payType=cardType;
		}else if(billType==3){
			var ePayType =  $('#ePayType option:selected').val();
			if(ePayType==""){
				payTypeFlag=1;
				msg="Please Select Pay Type( Card Type Or E-Pay type)";
			}
			payType=ePayType;
		} 
		
		var payAmt =  $('#payAmt').val() ;
		var frtype =  $('#frtype').val() ;
		var discPer =  $('#discPer').val() ;
		var discAmt =  $('#discAmt').val() ;
		
		
		
		
		var billAmtWtDisc;
		
		if(parseFloat(advAmt)>0){
			billAmtWtDisc=parseFloat($('#totalAmtPopup').text())-parseFloat(advAmt);
		}else{
			billAmtWtDisc=parseFloat($('#totalAmtPopup').text())
		}
		
		var creditBill = 1;
		var single = 1;
		var selectedText = $("#cust option:selected").text(); 
		var flag=0;
		
		if (document.getElementById('creditBillno').checked) {
			creditBill = 2;
		}
		
		if (document.getElementById('split').checked) {
			single = 2;
			if(cashAmt>0){
				payTypeSplit=",1";
			}
			
			var cardTypeSplit = $('#cardTypeSplit option:selected').val();
			
			if(cardTypeSplit=="" && cardAmt>0){
				msg="Please Select Card Type";
				payTypeFlag=1;
			}else if(cardAmt>0){
				payTypeSplit=payTypeSplit+","+cardTypeSplit;
			}
			
			var ePayTypeSplit =  $('#ePayTypeSplit option:selected').val();
			
			if(ePayTypeSplit=="" && epayAmt>0){
				msg="Please Select Card & E-pay Type";payTypeFlag=1;
			}else if(epayAmt>0){
				payTypeSplit=payTypeSplit+","+ePayTypeSplit;
			}
		}
		
		if (cashAmt=="") {
			cashAmt=0;
		}
		if (cardAmt=="") {
			cardAmt=0;
		}
		if (epayAmt=="") {
			epayAmt=0;
		}
		if (discPer=="") {
			discPer=0;
		}
		if (discAmt=="") {
			discAmt=0;
		}
		
		if(creditBill==2 && single==1 && payAmt==""){
			alert("Please Enter Ammount");
		}else if(payTypeFlag==1){
			alert(msg);
		}else{
			
		
			$('#payment').popup('hide');
			document.getElementById("overlay2").style.display = "block";
				
				var paidAmt=${tempHeader.paidAmt};
				var trAdvanceAmt=${advAmtTransaction};
				
				//alert(billAmtWtDisc);
					/* if((paidAmt)<=billAmtWtDisc){ */
					 $
						.post(
								'${submitBillByPaymentOption}',
								{
									key : key,  
									custId : custId,
									creditBill : creditBill,
									paymentMode : single,
									billType : billType,
									payType:payType,
									payTypeSplit:payTypeSplit,
									cashAmt : cashAmt,
									cardAmt : cardAmt,
									epayAmt : epayAmt,
									selectedText : selectedText,
									payAmt : payAmt,
									discPer:discPer,
									discAmt:discAmt,
									billAmtWtDisc:billAmtWtDisc,
									advAmt:advAmt,
									advOrderDate:advOrderDate,
									isAdvanceOrder:isAdvanceOrder,
									sellBillNo:sellBillNo,
									mode:mode,
									advAmt:trAdvanceAmt,
									remark : remark,
									ajax : 'true'
								},
								function(data) {
									
									
									 
									 if(key==0){
										 if(printbilltype==1){
											// window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
											 window.open('${pageContext.request.contextPath}/printKotBill/'+data.message,'_blank');
											
											/*  var url="${pageContext.request.contextPath}/printKotBill/"+data.message;
												
											 $("<iframe>")                             
									        .hide()                               
									        .attr("src",url) 
									        .appendTo("body");  */
											
											 
										}else if(printbilltype==2){
											 
											if(frtype<10000000){
												
												window.open('${pageContext.request.contextPath}/printBillOfSupply/'+data.message,'_blank');
												
												/*  var url="${pageContext.request.contextPath}/printBillOfSupply/"+data.message;
													
												 $("<iframe>")                             
										        .hide()                               
										        .attr("src",url) 
										        .appendTo("body"); */ 
												
											}else{
												
												window.open('${pageContext.request.contextPath}/printBillOfInvoice/'+data.message,'_blank');
												
												/*  var url="${pageContext.request.contextPath}/printBillOfInvoice/"+data.message;
													
												 $("<iframe>")                             
										        .hide()                               
										        .attr("src",url) 
										        .appendTo("body"); */ 
												 
											}
											window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
										}
										 window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
										 var defaultCustomer =  $('#defaultCustomer').val() ;
											document.getElementById("cust").value = defaultCustomer;
											getCurrentItemList(); 
											$('.chosen-select').trigger(
											'chosen:updated');
											document.getElementById("overlay2").style.display = "none";	
											
											 
											 document.getElementById('creditBillno').checked = true;
											 document.getElementById('single').checked = true;
											 document.getElementById("cashAmt").value = 0; 
											 document.getElementById("cardAmt").value = 0; 
											 document.getElementById("epayAmt").value = 0; 
											 document.getElementById("payAmt").value = 0; 
											 $("#splitDiv").hide();
											 $("#singleDiv").show();
									 }else{
										 if(printbilltype==1){
												
											 window.open('${pageContext.request.contextPath}/printKotBill/'+data.message,'_blank');
											
											/*  var url="${pageContext.request.contextPath}/printKotBill/"+data.message;
												
											 $("<iframe>")                             
									        .hide()                               
									        .attr("src",url) 
									        .appendTo("body"); */ 
											 
											 
										}else if(printbilltype==2){
											 
											if(frtype<10000000){
												window.open('${pageContext.request.contextPath}/printBillOfSupply/'+data.message,'_blank');
												
												/* var url="${pageContext.request.contextPath}/printBillOfSupply/"+data.message;
												
												 $("<iframe>")                             
										        .hide()                               
										        .attr("src",url) 
										        .appendTo("body"); */ 
												 
											}else{
												
												window.open('${pageContext.request.contextPath}/printBillOfInvoice/'+data.message,'_blank');
												
												/* var url="${pageContext.request.contextPath}/printBillOfInvoice/"+data.message;
												
												 $("<iframe>")                             
										        .hide()                               
										        .attr("src",url) 
										        .appendTo("body");  */
												 
											}
										}
										 window.location = "${pageContext.request.contextPath}/newcustomerbill/0";
									 }
									
								});  
					
					
					
				/* }
				else{
					alert("Minimum Amount of Bill should be "+(trAdvanceAmt+paidAmt)+"/-");
					document.getElementById("overlay2").style.display = "none";	
				} */
				
			
			   
		} 
		}  
		
		}
	}
	
	</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
		
	function openPaymentPopup() {
									
	//alert("hi");
		document.getElementById("pAmt").value=0;
		document.getElementById("rAmt").value=0;

	var advAmt = document.getElementById("advAmt").value;
	var custId =  $('#cust').val() ;
	var dfCust=${defaultCustomer};
   
	var key =  $('#key').val() ;
	
	//document.getElementById("discPer").value =0;
	//document.getElementById("discAmt").value =0;
	document.getElementById("cashAmt").value =0;
	document.getElementById("cardAmt").value =0;
	document.getElementById("epayAmt").value =0;
	document.getElementById("epayLabel").innerHTML =" Total: &nbsp;&nbsp;"+0;
	document.getElementById("epayLabel").style.color="black";
	
	document.getElementById("discPer").value =${tempHeader.discountPer};
	document.getElementById("discAmt").value =${tempHeader.discountAmt};
	
	var advAmt = document.getElementById("advAmt").value;
	if(parseFloat(advAmt)>0){
		document.getElementById("payAmt").value = parseFloat($('#totalAmtPopup').text());
	}else{
		
		var paidAmt=${tempHeader.paidAmt};
		var advAmtTr=${advAmtTransaction};
		var discAmt=${tempHeader.discountAmt};
		//var amt=parseFloat($('#totalAmtPopup').text())-discAmt-advAmtTr-paidAmt; 
		
		//document.getElementById("payAmt").innerHTML = amt; 
	}
	
	var mode=${mode};
	//alert(mode);
	
	var paidAmt=${tempHeader.paidAmt};
	var advAmtTr=${advAmtTransaction};
	var discAmt=${tempHeader.discountAmt};

	var amt=0;
	
	if(mode==0){
		amt=parseFloat($('#totalAmtPopup').text())-discAmt-advAmtTr;
	}else{
		amt=parseFloat($('#totalAmtPopup').text())-discAmt-advAmtTr-paidAmt;
	}
	
	document.getElementById("payAmt").innerHTML = amt;
	document.getElementById("totalPayableAmt").innerHTML = amt; 
	document.getElementById("payAmt").value=amt;
 	
	itemDiscPerCalculation(2);
	
	$("#modeOfPayDiv").show();
	document.getElementById("creditBillno").checked = true;
	var rowcount = $('#itemBillTable tr').length;
	var flag = 0;
	  
	 if(rowcount<=1){
		 alert("Select Minimum Product");
		 flag=1;
	 }else if(custId==0){
		 flag=1;
		 alert("Select Customer");
	 }
	 
	 if(flag==0){
		 $('#payment').popup('show');
	 }
	  

	}

</script>


	<script type="text/javascript">
		
	function openPaymentPopup1() {
									
	alert("hi");
	$("#modeOfPayDiv").show();
	}

	</script>



	<!-- ------------------------------------------------------------------------------------- -->




	<script type="text/javascript">
var modal = document.getElementById("myModal");  
var span = document.getElementsByClassName("close")[0]; 


span.onclick = function() {
  modal.style.display = "none";
} 
</script>


	<!-- ------------------------------------------------------------------------------------- -->


	<script type="text/javascript">
	function deleteSellBill(sellBillNo)
	{
		var isYes=confirm('Are you sure want to delete this record');	
		if(isYes)
		{
		  $.post('${deleteSellBill}',
					{
						sellBillNo:sellBillNo,
						ajax : 'true'
					},
					function(data) {
						alert("Bill Deleted SuccessFully");
						$("#bill"+sellBillNo).remove();


					});
		}
	}
	</script>

	<!-- ------------------------------------------------------------------------------------- -->

	<script type="text/javascript">

function custBillPdf(sellBillNo)
	{
		var	frtype= document.getElementById("frtype").value;
		
		if(frtype<10000000){
			window.open('${pageContext.request.contextPath}/printBillOfSupply/'+sellBillNo,'_blank');
		}else{
			window.open('${pageContext.request.contextPath}/printBillOfInvoice/'+sellBillNo,'_blank');
		}

	}
	</script>

	<!-- ----------------------------------------------------------------------------------------- -->

	<script type="text/javascript">
	var requestFullscreen = function (ele) {
		
      

		if (ele.requestFullscreen) {
			ele.requestFullscreen();
		} else if (ele.webkitRequestFullscreen) {
			ele.webkitRequestFullscreen();
		} else if (ele.mozRequestFullScreen) {
			ele.mozRequestFullScreen();
		} else if (ele.msRequestFullscreen) {
			ele.msRequestFullscreen();
		} else {
			console.log('Fullscreen API is not supported.');
		}
	};

	var exitFullscreen = function () {
		
		if (document.exitFullscreen) {
			document.exitFullscreen();
		} else if (document.webkitExitFullscreen) {
			document.webkitExitFullscreen();
		} else if (document.mozCancelFullScreen) {
			document.mozCancelFullScreen();
		} else if (document.msExitFullscreen) {
			document.msExitFullscreen();
		} else {
			console.log('Fullscreen API is not supported.');
		}
	};




	var fsDocButton = document.getElementById('fs-doc-button');
	var fsExitDocButton = document.getElementById('fs-exit-doc-button');

	fsDocButton.addEventListener('click', function(e) {
		e.preventDefault();
		requestFullscreen(document.documentElement);
	});

	fsExitDocButton.addEventListener('click', function(e) {
		e.preventDefault();
		exitFullscreen();
	});

	</script>

	<!-- --------------------------------------------------------------------------------- -->


	<script type="text/javascript">

	function showCustBillForEdit(sellBillNo,custId,mode){
	
	alert("custId = "+custId+"              BILL = "+sellBillNo);
	
	 window.open("${pageContext.request.contextPath}/editcustomerbill/0/"+sellBillNo+"/"+mode,"_self");
	
	}


	</script>
	
	
	<script type="text/javascript">

	function amtReturnCal() {
		
		var amt=document.getElementById("payAmt").value;
		var pay=document.getElementById("pAmt").value;
		
		var ret=amt-pay;
		document.getElementById("rAmt").value=ret;
		
	}

</script>




</body>

</html>