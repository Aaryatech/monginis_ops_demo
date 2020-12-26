<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<title>ATS</title>


<link
	href="${pageContext.request.contextPath}/resources/css/monginis.css"
	rel="stylesheet" type="text/css" />
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/atsfav.png"
	type="image/x-icon" />
<link href="${pageContext.request.contextPath}/resources/css/custom.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/images/feviconicon.png"
	type="image/x-icon" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>

<!--autocomplete-->
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>
<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/autocomplete.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/autocomplete.css">
<script
	src="${pageContext.request.contextPath}/resources/css/easy-responsive-tabs.css"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>

<!--rightNav-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/menuzord.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function() {
		jQuery("#menuzord").menuzord({
			align : "left"
		});
	});
</script>
<!--rightNav-->

<!--new css added by kalpesh -->
<!-- <link href='http://fonts.googleapis.com/css?family=Cuprum&subset=latin' rel='stylesheet' type='text/css'> -->

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

<%--   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" />   --%>

<!-- 	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script> -->
<!--new css added by kalpesh -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.css">

<script
	src="${pageContext.request.contextPath}/resources/css/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<script
	src="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.js"></script>
<!-- 1 css and 2 js for search item   -->

<!----------------------------------------Dropdown With Search----------------------------------------------- -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/customerBill/chosen.css">
<!--------------------------------------------------------------------------------------- -->
<%-- <script src="${pageContext.request.contextPath}/resources/jquery.confirm/jquery.confirm.js"></script> --%>
<style>
.chosen-container {
	width: 80% !important;
}

/* Paste this css to your style sheet file or under head tag */
/* This only works with JavaScript, 
if it's not present, don't show loader */
.no-js #loader {
	display: none;
}

.js #loader {
	display: block;
	position: absolute;
	left: 100px;
	top: 0;
}

.se-pre-con {
	position: absolute;
	left: 20px;
	top: 230px;
	width: 96%;
	height: 53%;
	z-index: 9999;
	z-index: 9999;
	opacity: 1;
	background: url(resources/images/loader1.gif) center no-repeat #fff;
}

.checkdiv {
	position: absolute;
	left: 20px;
	top: 230px;
	width: 96%;
	height: 53%;
	z-index: 9999;
	z-index: 9999;
	opacity: 1;
	background: url(resources/images/check.gif) center no-repeat #fff;
}

body {
	font-family: sans-serif
}

.option {
	padding-left: 5px;
}

.dialog-ovelay {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, 0.50);
	opacity: 1;
	z-index: 1000;
}

.dialog-ovelay .dialog {
	width: 25%;
	height: 25%;
	border-radius: 25px;
	margin: 320px auto 0;
	background-color: #fff;
	box-shadow: 0 0 20px rgba(0, 0, 0, .2);
	overflow: hidden
}

.dialog-ovelay .dialog header {
	padding: 10px 8px;
	border-radius: 25px 25px 0px 0px;
	background-color: #beccd8;
	border-bottom: 1px solid #e5e5e5
}

.dialog-ovelay .dialog header h3 {
	font-size: 15px;
	margin: 0;
	color: #000;
	display: inline-block
}

.dialog-ovelay .dialog header .fa-close:active {
	box-shadow: 0 0 5px #673AB7;
	color: #a2a2a2
}

.dialog-ovelay .dialog .dialog-msg {
	padding: 15px 10px
}

.dialog-ovelay .dialog .dialog-msg p {
	margin: 0;
	font-size: 15px;
	color: #333
}

.dialog-ovelay .dialog footer {
	border-top: 1px solid #e5e5e5;
	padding: 8px 8px
}

.dialog-ovelay .dialog footer .controls {
	margin: 8px;
	direction: rtl
}

.dialog-ovelay .dialog footer .controls .button {
	padding: 5px 15px;
	border-radius: 3px
}

.button {
	cursor: pointer
}

.button-default {
	background-color: rgb(248, 248, 248);
	border: 1px solid rgba(204, 204, 204, 0.5);
	color: #5D5D5D;
}

.button-danger {
	background-color: #f44336;
	border: 1px solid #d32f2f;
	color: #f5f5f5
}

.link {
	padding: 5px 10px;
	cursor: pointer
}

@media screen and (max-width:700px) {
	.dialog-ovelay .dialog {
		width: 90%;
		height: auto;
		border-radius: 10px;
	}
	.dialog-ovelay .dialog header {
		border-radius: 10px 10px 0 0;
	}
}
</style>
<style>
.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

.switch input {
	display: none;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

label:before {
	border: 0px solid #ccc;
}

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
</style>
</head>
<body id="myBodyId" onload="setCursor()">

	<c:url var="useRegStock" value="/useRegStock"></c:url>
	<c:url var="currentNewItem" value="/currentNewItem"></c:url>
	<c:url var="useSpStock" value="/useSpStock"></c:url>
	<c:url var="editQty" value="/editQty"></c:url>
	<c:url var="deleteOrder" value="/deleteOrder"></c:url>
	<c:url var="generateBill" value="/generateBill"></c:url>
	<c:url var="findItemById" value="/getItemById" />
	<c:url var="getItemIdByBarcode" value="/getItemIdByBarcode" />
	<c:url var="clearData" value="/clearData" />




	<div class="sidebarOuter"></div>

	<div class="wrapper">

		<!--topHeader-->
		<jsp:include page="/WEB-INF/views/include/logo.jsp"></jsp:include>



		<!--topHeader-->

		<!--rightContainer-->
		<div class="fullGrid center">
			<!--fullGrid-->
			<div class="wrapperIn2">

				<!--leftNav-->

				<jsp:include page="/WEB-INF/views/include/left.jsp">
					<jsp:param name="myMenu" value="${menuList}" />

				</jsp:include>


				<!--leftNav-->
				<!--rightSidebar-->

				<!------------ Place Actual content of page inside this div ----------->
				<div class="sidebarright">

					<div class="order-left">
						<h2 class="pageTitle">
							<i class="fa fa-user" aria-hidden="true"></i> Customer Bill
						</h2>

					</div>

					<div class="order-right" align="right">
						<a href="${pageContext.request.contextPath}/viewBill"><button
								class="btn additem_btn" style="margin: 0;">View Bill</button></a>
					</div>

					<!--tabNavigation-->
					<div class="cd-tabs">
						<!--tabMenu-->
						<nav>
							<ul class="cd-tabs-navigation">
								<li id="li1"><a data-content="tab1" class="selected"
									href="#0" onclick="onloadTab(1)" onshow="onloadTab(2)">Token
										1</a></li>
								<li id="li2"><a data-content="tab2" href="#0"
									onclick="onloadTab(2)">Token 2</a></li>
								<li id="li3"><a data-content="tab3" href="#0"
									onclick="onloadTab(3)">Token 3</a></li>
								<li id="li4"><a data-content="tab4" href="#0"
									onclick="onloadTab(4)">Token 4</a></li>
								<li id="li5"><a data-content="tab5" href="#0"
									onclick="onloadTab(5)">Token 5</a></li>
								<li id="li6"><a data-content="tab6" href="#0"
									onclick="onloadTab(6)">Token 6</a></li>
								<li id="li7"><a data-content="tab7" href="#0"
									onclick="onloadTab(7)">Token 7</a></li>
							</ul>
						</nav>
						<!--tabMenu-->
						<ul class="cd-tabs-content">
							<!--tab1-->
							<li data-content="tab1" class="selected" onshow="onloadTab(1)">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<div>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0" class="table">



															<tr>
																<td align="center" valign="middle" style="padding: 0px;">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<thead>
																			<tr class="bgpink">
																				<td>Barcode</td>
																				<td>Item Name</td>
																				<td>Qty</td>
																				<td>Rate</td>

																			</tr>
																		</thead>

																		<tr>
																			<td><input type="text" class="form-control"
																				id="barcode1" name="barcode1"
																				placeholder="Enter Barcode" onchange="selectItem(1)"
																				onkeypress="onBarcode(event,1)"></td>
																			<td><select class="chosen-select"
																				data-live-search="true" title="Please Select Item"
																				name="itemName1" id="itemName1"
																				data-rule-required="true">
																					<option value=""></option>
																					<c:forEach items="${catList}" var="cat">

																						<optgroup label="${cat.catName}">

																							<c:forEach items="${itemListResponse}"
																								var="itemListResponse">

																								<c:if
																									test="${itemListResponse.catId == cat.catId}">
																									<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																								</c:if>

																							</c:forEach>

																						</optgroup>

																					</c:forEach>

																			</select> <input name="item_name1" id="item_name1"
																				type="hidden" value="" /></td>
																			<td><input type="number" min="0" max="500"
																				class="form-control qty_tbl" name="qty1" id="qty1"
																				value="1" onkeypress="onQty(event,1)"
																				onblur="onTab(1)"
																				oninput="validity.valid||(value='');"></td>
																			<td id="rateTdVal1">00</td>



																		</tr>
																	</table>
																</td>
															</tr>

														</table>
													</div>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-3" style="margin: 15px 0 0 0;">
										<div class="one_left">
											<input name="rate1" id="rate1" type="hidden" value="00" />

											<center>
												<button class="btn additem_btn" onclick="addNewRow1(1)"
													id="b1">Add Item</button>
											</center>
										</div>
										<div class="two_left" style="display: none;">

											<span
												style="padding-top: 0px; float: left; margin-top: 7px; font-size: 16px; margin-right: 10px;">B2B:</span>
											<label class="switch"> <input type="checkbox"
												name='isb2b' id='is_b2b' /> <span class="slider round"></span>
											</label>
										</div>



									</div>
									<!-- <div class="col-md-3"> 
                                      <span style="padding-top: 0px;float: left;margin-top: 13px;margin-left: 13px;font-size: 16px; ">B2B:</span>
                                       <label class="switch">
                                                           <input type="checkbox" name='isb2b' id='is_b2b' />
                                                           <span class="slider round"></span>
                                                             </label>
                                </div> -->

								</div>
								<div class="se-pre-con" style="display: none;" id="loader1"></div>
								<div class="checkdiv" style="display: none;" id="check1"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll">
									<!-- class="table-scroll" -->
									<div id="faux-table" aria="hidden"></div>
									<!-- class="faux-table"  -->
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid1" class="responsive-table">
											<!--  class="main-table small-td"> -->
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>

											</tbody>

										</table>
									</div>
								</div>




								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">Total:-</h4>
										<h4 class="col-md-5" id="total1">00</h4>
										<input type="hidden" class="form-control" id="tot1">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											Discount(%):-</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount1"
												onkeyup="disMinusTotal(1)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											Discount(Rs):-</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs1"
												onkeyup="disRsMinusTotal(1)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">Grand
											Total:-</h4>

										<h4 class="col-md-5" id="grandtotal1">00</h4>
										<input type="hidden" class="form-control" id="grandtot1">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">Payment Mode:-</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												style="padding: 0px 0px;" name="paymentMode1"
												class="form-control" tabindex="-1" id="paymentMode1"
												data-rule-required="true">

												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">Paid Amount:-</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount1"
												onkeyup="paidAmt(1)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">Remaining
											Amt:-</h4>



										<h4 class="col-md-5" id="remAmt1">00</h4>
										<input type="hidden" class="form-control" id="remAmount1">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName1" id="custName1"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo1" id="gstNo1">
										</div>


										<div class="col-md-4">
											<h4>Mobile No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo1" id="phoneNo1"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill1"
										onclick="generateSellBill(1)" disabled>Generate Bill</button>

									<button class="btn additem_btn" id="pdfBtn1"
										onclick="pdfBtn(1)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear1"
										onclick="clearData(1)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo1"
								value="" />

							</li>
							<!--tab1-->

							<!--tab2-->
							<li data-content="tab2" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" class="table">
														<tr>
															<td align="center" valign="middle" style="padding: 0px;">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr class="bgpink">
																		<td>Barcode</td>
																		<td>Item Name</td>
																		<td>Qty</td>
																		<td>Rate</td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control"
																			id="barcode2" name="barcode2"
																			placeholder="Enter Barcode" onchange="selectItem(2)"
																			onkeypress="onBarcode(event,2)"></td>
																		<td>
																			<!-- input type="text" class="form-control"
																id="item_name" name="item_name"
																placeholder="Enter Item Name" list="items">
																<datalist id="items">
																
																
																</datalist> --> <select class="chosen-select"
																			data-show-subtext="true" data-live-search="true"
																			title="Please Select Item" name="itemName2"
																			id="itemName2" data-rule-required="true"<%-- onchange="setRate(1,${itemListResponse.itemId},${itemListResponse.itemRate1})" --%>>
																				<option value=""></option>
																				<c:forEach items="${catList}" var="cat">

																					<optgroup label="${cat.catName}">

																						<c:forEach items="${itemListResponse}"
																							var="itemListResponse">

																							<c:if
																								test="${itemListResponse.catId == cat.catId}">
																								<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																							</c:if>

																						</c:forEach>

																					</optgroup>

																				</c:forEach>

																		</select> <input name="item_name2" id="item_name2"
																			type="hidden" value="" />

																		</td>
																		<td><input type="number" min="0"
																			class="form-control" name="qty2" id="qty2" value="1"
																			onkeypress="onQty(event,2)" onblur="onTab(2)"
																			oninput="validity.valid||(value='');"></td>
																		<td id="rateTdVal2">00</td>


																	</tr>
																</table>
															</td>
														</tr>

													</table>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-2">
										<input name="rate2" id="rate2" type="hidden" value="00" />

										<center>
											<button class="btn additem_btn" onclick="addNewRow1(2)"
												id="b2">Add Item</button>
										</center>
									</div>
								</div>

								<div class="se-pre-con" style="display: none;" id="loader2"></div>
								<div class="checkdiv" style="display: none;" id="check2"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll">
									<div id="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid2" class="responsive-table">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>







											</tbody>

										</table>
									</div>
								</div>








								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Total:-</b>
										</h4>
										<h4 class="col-md-5" id="total2">00</h4>
										<input type="hidden" class="form-control" id="tot2">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(%):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount2"
												onkeyup="disMinusTotal(2)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(Rs):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs2"
												onkeyup="disRsMinusTotal(2)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Grand Total:-</b>
										</h4>

										<h4 class="col-md-5" id="grandtotal2">00</h4>
										<input type="hidden" class="form-control" id="grandtot2">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">
											<b>Payment Mode:-</b>
										</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												name="paymentMode2" class="form-control" tabindex="-1"
												style="padding: 0px 0px;" id="paymentMode2"
												data-rule-required="true">


												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Paid Amount:-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount2"
												onkeyup="paidAmt(2)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Remaining Amt:-</b>
										</h4>



										<h4 class="col-md-5" id="remAmt2">00</h4>
										<input type="hidden" class="form-control" id="remAmount2">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName2" id="custName2"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo2" id="gstNo2">
										</div>


										<div class="col-md-4">
											<h4>Mo No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo2" id="phoneNo2"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill2"
										onclick="generateSellBill(2)" disabled>Generate Bill</button>
									<button class="btn additem_btn" id="pdfBtn2"
										onclick="pdfBtn(2)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear2"
										onclick="clearData(2)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo2"
								value="" />
							</li>
							<!--tab2-->

							<!--tab3-->
							<li data-content="tab3" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" class="table">
														<tr>
															<td align="center" valign="middle" style="padding: 0px;">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr class="bgpink">
																		<td>Barcode</td>
																		<td>Item Name</td>
																		<td>Qty</td>
																		<td>Rate</td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control"
																			id="barcode3" name="barcode3"
																			placeholder="Enter Barcode" onchange="selectItem(3)"
																			onkeypress="onBarcode(event,3)"></td>
																		<td>
																			<!-- input type="text" class="form-control"
																id="item_name" name="item_name"
																placeholder="Enter Item Name" list="items">
																<datalist id="items">
																
																
																</datalist> --> <select class="chosen-select"
																			data-show-subtext="true" data-live-search="true"
																			title="Please Select Item" name="itemName3"
																			id="itemName3" data-rule-required="true"<%-- onchange="setRate(1,${itemListResponse.itemId},${itemListResponse.itemRate1})" --%>>
																				<option value=""></option>
																				<c:forEach items="${catList}" var="cat">

																					<optgroup label="${cat.catName}">

																						<c:forEach items="${itemListResponse}"
																							var="itemListResponse">

																							<c:if
																								test="${itemListResponse.catId == cat.catId}">
																								<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																							</c:if>

																						</c:forEach>

																					</optgroup>

																				</c:forEach>


																		</select> <input name="item_name3" id="item_name3"
																			type="hidden" value="" />

																		</td>
																		<td><input type="number" min="0"
																			class="form-control" name="qty3" id="qty3" value="1"
																			onkeypress="onQty(event,3)" onblur="onTab(3)"
																			oninput="validity.valid||(value='');"></td>
																		<td id="rateTdVal3">00</td>


																	</tr>
																</table>
															</td>
														</tr>

													</table>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-2">
										<input name="rate3" id="rate3" type="hidden" value="00" />

										<center>
											<button class="btn additem_btn" onclick="addNewRow1(3)"
												id="b3">Add Item</button>
										</center>
									</div>
								</div>

								<div class="se-pre-con" style="display: none;" id="loader3"></div>
								<div class="checkdiv" style="display: none;" id="check3"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll">
									<div id="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid3" class="responsive-table">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>







											</tbody>

										</table>
									</div>
								</div>








								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Total:-</b>
										</h4>
										<h4 class="col-md-5" id="total3">00</h4>
										<input type="hidden" class="form-control" id="tot3">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(%):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount3"
												onkeyup="disMinusTotal(3)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(Rs):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs3"
												onkeyup="disRsMinusTotal(3)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Grand Total:-</b>
										</h4>

										<h4 class="col-md-5" id="grandtotal3">00</h4>
										<input type="hidden" class="form-control" id="grandtot3">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">
											<b>Payment Mode:-</b>
										</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												name="paymentMode3" class="form-control" tabindex="-1"
												style="padding: 0px 0px;" id="paymentMode3"
												data-rule-required="true">


												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Paid Amount:-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount3"
												onkeyup="paidAmt(3)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Remaining Amt:-</b>
										</h4>



										<h4 class="col-md-5" id="remAmt3">00</h4>
										<input type="hidden" class="form-control" id="remAmount3">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName3" id="custName3"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo3" id="gstNo3">
										</div>


										<div class="col-md-4">
											<h4>Mo No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo3" id="phoneNo3"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill3"
										onclick="generateSellBill(3)" disabled>Generate Bill</button>
									<button class="btn additem_btn" id="pdfBtn3"
										onclick="pdfBtn(3)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear3"
										onclick="clearData(3)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo3"
								value="" />
							</li>
							<!--tab4-->
							<li data-content="tab4" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" class="table">
														<tr>
															<td align="center" valign="middle" style="padding: 0px;">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr class="bgpink">
																		<td>Barcode</td>
																		<td>Item Name</td>
																		<td>Qty</td>
																		<td>Rate</td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control"
																			id="barcode4" name="barcode4"
																			placeholder="Enter Barcode" onchange="selectItem(4)"
																			onkeypress="onBarcode(event,4)"></td>
																		<td>
																			<!-- input type="text" class="form-control"
																id="item_name" name="item_name"
																placeholder="Enter Item Name" list="items">
																<datalist id="items">
																
																
																</datalist> --> <select class="chosen-select"
																			data-show-subtext="true" data-live-search="true"
																			title="Please Select Item" name="itemName4"
																			id="itemName4" data-rule-required="true"<%-- onchange="setRate(1,${itemListResponse.itemId},${itemListResponse.itemRate1})" --%>>
																				<option value=""></option>
																				<c:forEach items="${catList}" var="cat">

																					<optgroup label="${cat.catName}">

																						<c:forEach items="${itemListResponse}"
																							var="itemListResponse">

																							<c:if
																								test="${itemListResponse.catId == cat.catId}">
																								<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																							</c:if>

																						</c:forEach>

																					</optgroup>

																				</c:forEach>


																		</select> <input name="item_name4" id="item_name4"
																			type="hidden" value="" />

																		</td>
																		<td><input type="number" min="0"
																			class="form-control" name="qty4" id="qty4" value="1"
																			onkeypress="onQty(event,4)" onblur="onTab(4)"
																			oninput="validity.valid||(value='');"></td>
																		<td id="rateTdVal4">00</td>


																	</tr>
																</table>
															</td>
														</tr>

													</table>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-2">
										<input name="rate4" id="rate4" type="hidden" value="00" />

										<center>
											<button class="btn additem_btn" onclick="addNewRow1(4)"
												id="b4">Add Item</button>
										</center>
									</div>
								</div>

								<div class="se-pre-con" style="display: none;" id="loader4"></div>
								<div class="checkdiv" style="display: none;" id="check4"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll">
									<div id="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid4" class="responsive-table">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>







											</tbody>

										</table>
									</div>
								</div>








								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Total:-</b>
										</h4>
										<h4 class="col-md-5" id="total4">00</h4>
										<input type="hidden" class="form-control" id="tot4">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(%):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount4"
												onkeyup="disMinusTotal(4)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(Rs):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs4"
												onkeyup="disRsMinusTotal(4)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Grand Total:-</b>
										</h4>

										<h4 class="col-md-5" id="grandtotal4">00</h4>
										<input type="hidden" class="form-control" id="grandtot4">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">
											<b>Payment Mode:-</b>
										</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												style="padding: 0px 0px;" name="paymentMode4"
												class="form-control" tabindex="-1" id="paymentMode4"
												data-rule-required="true">


												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Paid Amount:-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount4"
												onkeyup="paidAmt(4)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Remaining Amt:-</b>
										</h4>



										<h4 class="col-md-5" id="remAmt4">00</h4>
										<input type="hidden" class="form-control" id="remAmount4">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName4" id="custName4"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo4" id="gstNo4">
										</div>


										<div class="col-md-4">
											<h4>Mo No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo4" id="phoneNo4"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill4"
										onclick="generateSellBill(4)" disabled>Generate Bill</button>
									<button class="btn additem_btn" id="pdfBtn4"
										onclick="pdfBtn(4)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear4"
										onclick="clearData(4)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo4"
								value="" />
							</li>
							<!--tab5-->
							<li data-content="tab5" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" class="table">
														<tr>
															<td align="center" valign="middle" style="padding: 0px;">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr class="bgpink">
																		<td>Barcode</td>
																		<td>Item Name</td>
																		<td>Qty</td>
																		<td>Rate</td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control"
																			id="barcode5" name="barcode5"
																			placeholder="Enter Barcode" onchange="selectItem(5)"
																			onkeypress="onBarcode(event,5)"></td>
																		<td>
																			<!-- input type="text" class="form-control"
																id="item_name" name="item_name"
																placeholder="Enter Item Name" list="items">
																<datalist id="items">
																
																
																</datalist> --> <select class="chosen-select"
																			data-show-subtext="true" data-live-search="true"
																			title="Please Select Item" name="itemName5"
																			id="itemName5" data-rule-required="true"<%-- onchange="setRate(1,${itemListResponse.itemId},${itemListResponse.itemRate1})" --%>>
																				<option value=""></option>
																				<c:forEach items="${catList}" var="cat">

																					<optgroup label="${cat.catName}">

																						<c:forEach items="${itemListResponse}"
																							var="itemListResponse">

																							<c:if
																								test="${itemListResponse.catId == cat.catId}">
																								<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																							</c:if>

																						</c:forEach>

																					</optgroup>

																				</c:forEach>

																		</select> <input name="item_name5" id="item_name5"
																			type="hidden" value="" />

																		</td>
																		<td><input type="number" min="0"
																			class="form-control" name="qty5" id="qty5" value="1"
																			onkeypress="onQty(event,5)" onblur="onTab(5)"
																			oninput="validity.valid||(value='');"></td>
																		<td id="rateTdVal5">00</td>


																	</tr>
																</table>
															</td>
														</tr>

													</table>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-2">
										<input name="rate5" id="rate5" type="hidden" value="00" />

										<center>
											<button class="btn additem_btn" onclick="addNewRow1(5)"
												id="b5">Add Item</button>
										</center>
									</div>
								</div>

								<div class="se-pre-con" style="display: none;" id="loader5"></div>
								<div class="checkdiv" style="display: none;" id="check5"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll">
									<div id="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid5" class="responsive-table">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>


											</tbody>

										</table>
									</div>
								</div>




								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Total:-</b>
										</h4>
										<h4 class="col-md-5" id="total5">00</h4>
										<input type="hidden" class="form-control" id="tot5">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(%):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount5"
												onkeyup="disMinusTotal(5)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(Rs):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs5"
												onkeyup="disRsMinusTotal(5)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Grand Total:-</b>
										</h4>

										<h4 class="col-md-5" id="grandtotal5">00</h4>
										<input type="hidden" class="form-control" id="grandtot5">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">
											<b>Payment Mode:-</b>
										</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												style="padding: 0px 0px;" name="paymentMode5"
												class="form-control" tabindex="-1" id="paymentMode5"
												data-rule-required="true">


												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Paid Amount:-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount5"
												onkeyup="paidAmt(5)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Remaining Amt:-</b>
										</h4>



										<h4 class="col-md-5" id="remAmt5">00</h4>
										<input type="hidden" class="form-control" id="remAmount5">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName5" id="custName5"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo5" id="gstNo5">
										</div>


										<div class="col-md-4">
											<h4>Mo No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo5" id="phoneNo5"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill5"
										onclick="generateSellBill(5)" disabled>Generate Bill</button>
									<button class="btn additem_btn" id="pdfBtn5"
										onclick="pdfBtn(5)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear5"
										onclick="clearData(5)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo5"
								value="" />
							</li>
							<!--tab6-->
							<li data-content="tab6" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" class="table">
														<tr>
															<td align="center" valign="middle" style="padding: 0px;">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr class="bgpink">
																		<td>Barcode</td>
																		<td>Item Name</td>
																		<td>Qty</td>
																		<td>Rate</td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control"
																			id="barcode6" name="barcode6"
																			placeholder="Enter Barcode" onchange="selectItem(6)"
																			onkeypress="onBarcode(event,6)"></td>
																		<td>
																			<!-- input type="text" class="form-control"
																id="item_name" name="item_name"
																placeholder="Enter Item Name" list="items">
																<datalist id="items">
																
																
																</datalist> --> <select class="chosen-select"
																			data-show-subtext="true" data-live-search="true"
																			title="Please Select Item" name="itemName6"
																			class="form-control" id="itemName6"
																			data-rule-required="true"<%-- onchange="setRate(1,${itemListResponse.itemId},${itemListResponse.itemRate1})" --%>>
																				<option value=""></option>
																				<c:forEach items="${catList}" var="cat">

																					<optgroup label="${cat.catName}">

																						<c:forEach items="${itemListResponse}"
																							var="itemListResponse">

																							<c:if
																								test="${itemListResponse.catId == cat.catId}">
																								<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																							</c:if>

																						</c:forEach>

																					</optgroup>

																				</c:forEach>

																		</select> <input name="item_name6" id="item_name6"
																			type="hidden" value="" />

																		</td>
																		<td><input type="number" min="0"
																			class="form-control" name="qty6" id="qty6" value="1"
																			onkeypress="onQty(event,6)" onblur="onTab(6)"
																			oninput="validity.valid||(value='');"></td>
																		<td id="rateTdVal6">00</td>


																	</tr>
																</table>
															</td>
														</tr>

													</table>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-2">
										<input name="rate6" id="rate6" type="hidden" value="00" />

										<center>
											<button class="btn additem_btn" onclick="addNewRow1(6)"
												id="b6">Add Item</button>
										</center>
									</div>
								</div>

								<div class="se-pre-con" style="display: none;" id="loader6"></div>
								<div class="checkdiv" style="display: none;" id="check6"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->



								<div id="table-scroll">
									<div id="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid6" class="responsive-table">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>







											</tbody>

										</table>
									</div>
								</div>








								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Total:-</b>
										</h4>
										<h4 class="col-md-5" id="total6">00</h4>
										<input type="hidden" class="form-control" id="tot6">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(%):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount6"
												onkeyup="disMinusTotal(6)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(Rs):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs6"
												onkeyup="disRsMinusTotal(6)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Grand Total:-</b>
										</h4>

										<h4 class="col-md-5" id="grandtotal6">00</h4>
										<input type="hidden" class="form-control" id="grandtot6">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">
											<b>Payment Mode:-</b>
										</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												style="padding: 0px 0px;" name="paymentMode6"
												class="form-control" tabindex="-1" id="paymentMode6"
												data-rule-required="true">


												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Paid Amount:-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount6"
												onkeyup="paidAmt(6)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Remaining Amt:-</b>
										</h4>



										<h4 class="col-md-5" id="remAmt6">00</h4>
										<input type="hidden" class="form-control" id="remAmount6">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName6" id="custName6"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo6" id="gstNo6">
										</div>


										<div class="col-md-4">
											<h4>Mo No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo6" id="phoneNo6"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill6"
										onclick="generateSellBill(6)" disabled>Generate Bill</button>
									<button class="btn additem_btn" id="pdfBtn6"
										onclick="pdfBtn(6)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear6"
										onclick="clearData(6)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo6"
								value="" />
							</li>
							<!--tab7-->
							<li data-content="tab7" class=" ">
								<div class="row">
									<div class="col-md-9">
										<div class="control-label">

											<div>
												<div class="shInnerwidth">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0" class="table">
														<tr>
															<td align="center" valign="middle" style="padding: 0px;">
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0">
																	<tr class="bgpink">
																		<td>Barcode</td>
																		<td>Item Name</td>
																		<td>Qty</td>
																		<td>Rate</td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control"
																			id="barcode7" name="barcode7"
																			placeholder="Enter Barcode" onchange="selectItem(7)"
																			onkeypress="onBarcode(event,7)"></td>
																		<td>
																			<!-- input type="text" class="form-control"
																id="item_name" name="item_name"
																placeholder="Enter Item Name" list="items">
																<datalist id="items">
																
																
																</datalist> --> <select class="chosen-select"
																			data-show-subtext="true" data-live-search="true"
																			title="Please Select Item" name="itemName7"
																			id="itemName7" data-rule-required="true"<%-- onchange="setRate(1,${itemListResponse.itemId},${itemListResponse.itemRate1})" --%>>
																				<option value=""></option>
																				<c:forEach items="${catList}" var="cat">

																					<optgroup label="${cat.catName}">

																						<c:forEach items="${itemListResponse}"
																							var="itemListResponse">

																							<c:if
																								test="${itemListResponse.catId == cat.catId}">
																								<option value="${itemListResponse.id}">${itemListResponse.itemId}--${itemListResponse.itemName}</option>
																							</c:if>

																						</c:forEach>

																					</optgroup>

																				</c:forEach>

																		</select> <input name="item_name7" id="item_name7"
																			type="hidden" value="" />

																		</td>
																		<td><input type="number" min="0"
																			class="form-control" name="qty7" id="qty7" value="1"
																			onkeypress="onQty(event,7)" onblur="onTab(7)"
																			oninput="validity.valid||(value='');"></td>
																		<td id="rateTdVal7">00</td>


																	</tr>
																</table>
															</td>
														</tr>

													</table>
												</div>
											</div>
										</div>
									</div>




									<div class="col-md-2">
										<input name="rat7" id="rate7" type="hidden" value="00" />

										<center>
											<button class="btn additem_btn" onclick="addNewRow1(7)"
												id="b7">Add Item</button>
										</center>
									</div>
								</div>

								<div class="se-pre-con" style="display: none;" id="loader7"></div>
								<div class="checkdiv" style="display: none;" id="check7"></div>
								<div class="clearfix"></div> <br /> <!-- Form End -->

								<div id="table-scroll">
									<div id="faux-table" aria="hidden"></div>
									<div class="table-wrap table-wrap-custbill">
										<table id="table_grid7" class="responsive-table">
											<thead>
												<tr class="bgpink">
													<th class="col-sm-1">Sr no.</th>
													<th class="col-md-1">Barcode</th>
													<th class="col-md-2">Item Name</th>
													<th class="col-md-1">Qty</th>
													<th class="col-md-1">Rate</th>
													<th class="col-md-1">Amount</th>
													<th class="col-md-1">Action</th>
												</tr>
											</thead>
											<tbody>


											</tbody>

										</table>
									</div>
								</div>



								<div class="row">
									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Total:-</b>
										</h4>
										<h4 class="col-md-5" id="total7">00</h4>
										<input type="hidden" class="form-control" id="tot7">
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(%):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discount7"
												onkeyup="disMinusTotal(7)" value="0">
										</div>
									</div>
									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Discount(Rs):-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="discountRs7"
												onkeyup="disRsMinusTotal(7)" value="0">
										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Grand Total:-</b>
										</h4>

										<h4 class="col-md-5" id="grandtotal7">00</h4>
										<input type="hidden" class="form-control" id="grandtot7">
									</div>

									<div class="clearfix"></div>

									<div class="col-md-3">

										<h4 class="col-md-7">
											<b>Payment Mode:-</b>
										</h4>
										<div class="col-md-5">
											<select data-placeholder="Enter Payment Mode"
												style="padding: 0px 0px;" name="paymentMode7"
												class="form-control" tabindex="-1" id="paymentMode7"
												data-rule-required="true">


												<option value="1">Cash</option>
												<option value="2">Card</option>
												<option value="3">Other</option>

											</select>

										</div>
									</div>

									<div class="col-md-3">
										<h4 class="col-md-7">
											<b>Paid Amount:-</b>
										</h4>
										<div class="col-md-5">
											<input type="text" class="form-control" id="paidAmount7"
												onkeyup="paidAmt(7)" value="0">
										</div>

									</div>

									<div class="col-md-3">
										<h4 class="col-md-7" style="margin-top: 5px">
											<b>Remaining Amt:-</b>
										</h4>



										<h4 class="col-md-5" id="remAmt2">00</h4>
										<input type="hidden" class="form-control" id="remAmount7">
									</div>

									<div class="clearfix"></div>


									<hr />
									<div class="col-md-12 control-label">

										<div class="col-md-4">
											<h4>Customer name:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter Name" name="custName7" id="custName7"
												value="Cash">
										</div>
										<div class="col-md-4">
											<h4>GST No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter GST No." name="gstNo7" id="gstNo7">
										</div>


										<div class="col-md-4">
											<h4>Mo No:-</h4>
											<input type="text" class="form-control"
												placeholder="Enter phone No." name="phoneNo7" id="phoneNo7"
												maxlength="10">
										</div>
									</div>

								</div>


								<center>
									<button class="btn additem_btn" id="generateBill7"
										onclick="generateSellBill(7)" disabled>Generate Bill</button>
									<button class="btn additem_btn" id="pdfBtn7"
										onclick="pdfBtn(7)" disabled>Print Bill</button>
									<button class="btn additem_btn" id="clear7"
										onclick="clearData(7)">Clear</button>
								</center> <input type="hidden" class="form-control" id="sellBillNo7"
								value="" />
							</li>
							<!--tab8-->
						</ul>

					</div>
					<!--tabNavigation-->





				</div>
				<!--rightSidebar-->

			</div>
			<!--fullGrid-->
		</div>
		<!--rightContainer-->

	</div>
	<!--wrapper-end-->

	<!-- ------CUSTOMER POPUP-------------------- -->

	<div id="customerModal" class="modal">
		<div id="overlay">
			<div class="clock"></div>
		</div>

		<div class="modal-content" style="width: 75%; padding: 2%;">
			<span class="close" onclick="closeCustomerPopup()"
				style="opacity: 2;">&times;</span> <br>

			<div class="row">

				<div class="col-md-12">
					<h3 class="pop_head">Customer</h3>
				</div>

			</div>
			<hr>
			<br>
			<div class="row" style="margin-left: 0%">

				<div class="row">

					<div class="col-md-2" style="text-align: center;">Customer</div>

					<div class="col-md-6">

						<select name="cust" id="cust" data-placeholder="Select Customer"
							class="input_add chosen-select" required>
							<option value="0">Select Customer</option>


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


						</select>
					</div>

					<div class="col-md-4">

						<button class="plus_btn addcust_open" type="button"
							onclick="onPlusClick()">
							<i class="fa fa-plus" aria-hidden="true"></i>
						</button>

						<button class="plus_btn" type="button" onclick="editCustomer()">
							<i class="fa fa-pencil" aria-hidden="true"></i>
						</button>


					</div>




				</div>








			</div>

		</div>

	</div>

	<!-- ------CUSTOMER POPUP END-------------------- -->







	<!--easyTabs-->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<!--easyTabs-->


	<script>
		/*
		//  jquery equivalent
		jQuery(document).ready(function() {
		jQuery(".main-table").clone(true).appendTo('#table-scroll .faux-table').addClass('clone');
		jQuery(".main-table.clone").clone(true).appendTo('#table-scroll .faux-table').addClass('clone2'); 
		});
		 */
		(function() {
			var fauxTable = document.getElementById("faux-table");
			var mainTable = document.getElementById("table_grid");
			var clonedElement = table_grid.cloneNode(true);
			var clonedElement2 = table_grid.cloneNode(true);
			clonedElement.id = "";
			clonedElement2.id = "";
			fauxTable.appendChild(clonedElement);
			fauxTable.appendChild(clonedElement2);
		})();
	</script>
	<script type="text/javascript">
		$(document).ready(
				function() {

					$('#itemName1').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode1")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal1").html(data.mrp);
										});
							});
				});

		$(document).ready(
				function() {

					$('#itemName2').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode2")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal2").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName3').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode3")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal3").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName4').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode4")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal4").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName5').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode5")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal5").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName6').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode6")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal6").html(data.mrp);
										});
							});
				});
		$(document).ready(
				function() {

					$('#itemName7').change(
							function() {

								$.getJSON('${findItemById}', {
									id : $(this).val(),
									ajax : 'true'
								},
										function(data) {

											document.getElementById("barcode7")
													.setAttribute('value',
															data.itemId);

											$("#rateTdVal7").html(data.mrp);
										});
							});
				});
	</script>


	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "100%";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
		}
		function openNav1() {
			document.getElementById("mySidenav1").style.width = "100%";
		}

		function closeNav1() {
			document.getElementById("mySidenav1").style.width = "0";
		}
		function openNav3() {
			document.getElementById("mySidenav3").style.width = "100%";
		}

		function closeNav3() {
			document.getElementById("mySidenav3").style.width = "0";
		}
	</script>
	<script type="text/javascript">
		function removeOption() {
			var itemName1 = $("#itemName1").val();
			document.getElementById("itemName1").options.length = 0;

		}
	</script>
	<script type="text/javascript">
		function addNewRow1(token) {

			/* 	var isValid = validation1();
				if (isValid) { */
			var modal = document.getElementById('mypopupMsg');
			var id = $("#itemName" + token).val();
			var barcode = $("#barcode" + token).val();
			//alert(barcode);
			var qty = $("#qty" + token).val();
			//alert(qty);
			var custName = $("#custName" + token).val();
			//alert(custName);
			var phoneNo = $("#phoneNo" + token).val();
			//alert(phoneNo);
			var gstNo = $("#gstNo" + token).val();
			//alert(token);

			$('#loader').show();
			$
					.getJSON(
							'${currentNewItem}',
							{
								id : id,
								qty : qty,
								token : token,

								ajax : 'true'
							},
							function(data) {
								$('#loader').hide();
								if (data == "") {
									alert("No records found !!");
								}
								
								$("#qty" + token).val(1);
								document.getElementById("clear" + token).disabled = false;
								var allTotal = 0;

								//**----------Check first Special Opening Stock is gretor Show Prompt!!---------**
								if (data.totalSpStock > 0) {

									//var retVal = confirm("Use from SP or Reg Avail.Sp Qty: "+data.totalSpStock+"Avail.Reg Qty: "+data.totalRegStock);
									Confirm(
											'Use Stock',
											"Use from Special Stock OR Regular Stock",
											'Use Reg Stock ('
													+ data.totalRegStock + ')',
											'Use SpStock (' + data.totalSpStock
													+ ')'); /*change*/

									//document.getElementById("dialog-ovelay").focus();
									// document.getElementById("ok").focus();
									$(
											".dialog-ovelay .dialog footer .controls .doAction")
											.focus();
									//-------------------- Use From Special Opening Stock-----------------------------
									//if (retVal== true) {

									$('.cancelAction')
											.click(
													function() {

														$(this)
																.parents(
																		'.dialog-ovelay')
																.fadeOut(
																		500,
																		function() {

																			$(
																					this)
																					.remove();

																			if (data.totalSpStock < qty) {
																				//var spLess = confirm("  SP Stock Lessthan Qty. You want Avail.Qty: "+data.totalSpStock);
																				Confirm(
																						'Sp Stock is less than quantity',
																						"Special Stock quantity is less than required quantity if you want use available quantity",
																						'CANCEL',
																						'Use Availabe Qty ('
																								+ data.totalSpStock
																								+ ')'); /*change*/

																				$(
																						'.cancelAction')
																						.click(
																								function() {

																									$(
																											this)
																											.parents(
																													'.dialog-ovelay')
																											.fadeOut(
																													500,
																													function() {

																														$(
																																this)
																																.remove();

																														qty = data.totalSpStock;

																														$
																																.getJSON(
																																		'${useSpStock}',//function, when  User Selected availble Sp Opening Stock
																																		{
																																			qty : qty,
																																			token : token,
																																			ajax : 'true'
																																		},
																																		function(
																																				data) {

																																			if (data == "") {
																																				alert("No records found !!");
																																			} else {
																																				$(
																																						'#table_grid'
																																								+ token
																																								+ ' td')
																																						.remove();
																																			}

																																			$
																																					.each(
																																							data,
																																							function(
																																									key,
																																									spData) {
																																								allTotal = allTotal
																																										+ appendToTable(
																																												key,
																																												spData,
																																												token,
																																												allTotal);
																																							})
																																			calTotal(
																																					allTotal,
																																					token);

																																		});

																													}); //g
																								});//g
																				//}
																				$(
																						'.doAction')
																						.click(
																								function() {
																									// window.open($link, "_blank"); /*new*/
																									$(
																											this)
																											.parents(
																													'.dialog-ovelay')
																											.fadeOut(
																													500,
																													function() {

																														$(
																																this)
																																.remove();

																														return false;
																													}); //g
																								});//g

																			} else {
																				$
																						.getJSON(
																								'${useSpStock}',//function, when  User Selected Special Opening Stock
																								{
																									qty : qty,
																									token : token,
																									ajax : 'true'
																								},
																								function(
																										data) {

																									if (data == "") {
																										alert("No records found !!");
																									} else {
																										$(
																												'#table_grid'
																														+ token
																														+ ' td')
																												.remove();
																									}

																									$
																											.each(
																													data,
																													function(
																															key,
																															spData) {
																														//appensFuction
																														allTotal = allTotal
																																+ appendToTable(
																																		key,
																																		spData,
																																		token,
																																		allTotal);
																													})
																									calTotal(
																											allTotal,
																											token)

																								});
																			}

																		}); //g
													});//g
									//}  //g
									//else{   use Regular
									$('.doAction')
											.click(
													function() {
														// window.open($link, "_blank"); /*new*/
														$(this)
																.parents(
																		'.dialog-ovelay')
																.fadeOut(
																		500,
																		function() {

																			$(
																					this)
																					.remove();

																			if (data.totalRegStock < qty) {
																				if (data.totalRegStock <= 0) {
																					// alert("Sorry Item Not Available !!");
																					emptyStock(
																							'OUT OF STOCK !!',
																							"Sorry, Item is not available in Regular Stock",
																							'OK'); /*change*/
																					$(
																							'.doAction')
																							.click(
																									function() {
																										// window.open($link, "_blank"); /*new*/
																										$(
																												this)
																												.parents(
																														'.dialog-ovelay')
																												.fadeOut(
																														500,
																														function() {

																															$(
																																	this)
																																	.remove();
																															return false;
																														}); //g
																									});
																				} else {
																					//var regLess = confirm("  Reg Stock Lessthan Qty. You want Avail.Qty: "+data.totalRegStock);
																					//if(regLess==true){
																					Confirm(
																							'Regular Stock is less than quantity',
																							"Regular Stock quantity is less than required quantity if you want use available quantity",
																							'CANCEL',
																							'Use Availabe Qty ('
																									+ data.totalRegStock
																									+ ')'); /*change*/

																					$(
																							'.cancelAction')
																							.click(
																									function() {

																										$(
																												this)
																												.parents(
																														'.dialog-ovelay')
																												.fadeOut(
																														500,
																														function() {

																															$(
																																	this)
																																	.remove();

																															qty = data.totalRegStock;
																															$
																																	.getJSON(
																																			'${useRegStock}',//function, when  User Selected available Reg Opening Stock
																																			{
																																				qty : qty,
																																				token : token,
																																				ajax : 'true'
																																			},
																																			function(
																																					data) {

																																				if (data == "") {
																																					alert("No records found !!");
																																				} else {
																																					$(
																																							'#table_grid'
																																									+ token
																																									+ ' td')
																																							.remove();
																																				}

																																				$
																																						.each(
																																								data,
																																								function(
																																										key,
																																										regData) {
																																									//appensFuction
																																									allTotal = allTotal
																																											+ appendToTable(
																																													key,
																																													regData,
																																													token,
																																													allTotal);
																																								})
																																				calTotal(
																																						allTotal,
																																						token)

																																			});
																														}); //g
																									});//g
																					//}
																					//else{
																					$(
																							'.doAction')
																							.click(
																									function() {
																										// window.open($link, "_blank"); /*new*/
																										$(
																												this)
																												.parents(
																														'.dialog-ovelay')
																												.fadeOut(
																														500,
																														function() {

																															$(
																																	this)
																																	.remove();

																															return false;
																															//}
																														}); //g
																									});//g
																				}
																			} else {

																				$
																						.getJSON(
																								'${useRegStock}',//function, when  User Selected available Reg Opening Stock
																								{
																									qty : qty,
																									token : token,
																									ajax : 'true'
																								},
																								function(
																										data) {

																									if (data == "") {
																										alert("No records found !!");
																									} else {
																										$(
																												'#table_grid'
																														+ token
																														+ ' td')
																												.remove();
																									}

																									$
																											.each(
																													data,
																													function(
																															key,
																															regData) {
																														//appensFuction
																														allTotal = allTotal
																																+ appendToTable(
																																		key,
																																		regData,
																																		token,
																																		allTotal);
																													})
																									calTotal(
																											allTotal,
																											token)

																								});
																			}

																			//}
																		});
													});

								}

								else {

									if (data.totalRegStock < qty) {
										if (data.totalRegStock <= 0) {
											// alert("Sorry Item Not Available !!");

											emptyStock(
													'OUT OF STOCK !!',
													"Sorry, Item is not available in Regular Stock",
													'OK'); /*change*/

											$('.doAction')
													.click(
															function() {
																// window.open($link, "_blank"); /*new*/
																$(this)
																		.parents(
																				'.dialog-ovelay')
																		.fadeOut(
																				500,
																				function() {

																					$(
																							this)
																							.remove();
																					return false;
																				}); //g
															});
										} else {
											//var regLess = confirm("  Reg Stock Lessthan Qty. You want Avail.Qty: "+data.totalRegStock);
											//if(regLess==true){
											Confirm(
													'Regular Stock is less than quantity',
													"Regular Stock quantity is less than required quantity if you want use available quantity",
													'CANCEL',
													'Use Availabe Qty ('
															+ data.totalRegStock
															+ ')'); /*change*/

											$('.cancelAction')
													.click(
															function() {

																$(this)
																		.parents(
																				'.dialog-ovelay')
																		.fadeOut(
																				500,
																				function() {

																					$(
																							this)
																							.remove();

																					qty = data.totalRegStock;
																					$
																							.getJSON(
																									'${useRegStock}',//function, when  User Selected available Reg Opening Stock
																									{
																										qty : qty,
																										token : token,
																										ajax : 'true'
																									},
																									function(
																											data) {

																										if (data == "") {
																											alert("No records found !!");
																										} else {
																											$(
																													'#table_grid'
																															+ token
																															+ ' td')
																													.remove();
																										}

																										$
																												.each(
																														data,
																														function(
																																key,
																																regData) {
																															//appensFuction
																															allTotal = allTotal
																																	+ appendToTable(
																																			key,
																																			regData,
																																			token,
																																			allTotal);
																														})
																										calTotal(
																												allTotal,
																												token)

																									});
																				}); //g
															});//g
											//	}
											//else{
											$('.doAction')
													.click(
															function() {
																// window.open($link, "_blank"); /*new*/
																$(this)
																		.parents(
																				'.dialog-ovelay')
																		.fadeOut(
																				500,
																				function() {

																					$(
																							this)
																							.remove();
																					return false;
																					//}
																				}); //g
															});//g
										}
									} else {

										$
												.getJSON(
														'${useRegStock}',//function, when  User Selected available Reg Opening Stock
														{
															qty : qty,
															token : token,
															ajax : 'true'
														},
														function(data) {

															if (data == "") {
																alert("No records found !!");
															} else {
																$(
																		'#table_grid'
																				+ token
																				+ ' td')
																		.remove();
															}

															$
																	.each(
																			data,
																			function(
																					key,
																					regData) {
																				//appensFuction
																				allTotal = allTotal
																						+ appendToTable(
																								key,
																								regData,
																								token,
																								allTotal);
																			})
															calTotal(allTotal,
																	token)

														});
									}

								}
								//first each 
							}); //ajax
			document.getElementById("barcode" + token).value = "";
			//document.getElementById("itemName" + token).value = "";
	       // $("#itemName" + token).val("").change();
                  document.getElementById("itemName"+token).value="";
                    $('.chosen-select').trigger('chosen:updated');
				
			//	document.getElementById("generateBill"+token).focus();	
		} //main function
	</script>

	<script type="text/javascript">
		function appendToTable(key, data, token, allTotal) {
			
			if(data.length>0){
				document.getElementById("generateBill"+token).disabled=false;
				document.getElementById("pdfBtn"+token).disabled=false;
			}else
				{
				document.getElementById("generateBill"+token).disabled=true;
				document.getElementById("pdfBtn"+token).disabled=true;
				}

			var tr = $('<tr></tr>');

			tr.append($('<td></td>').html(key + 1));

			tr.append($('<td></td>').html(data.itemId));
			tr.append($('<td></td>').html(data.itemName));
			tr.append($('<td></td>')
							.html(
									"<div class=col-md-1 pull-left><input type=number min=0 max=30  style= width: 50px;class=form-control onchange=editQty("
											+ key
											+ ","
											+ token
											+ ","
											+ data.mrp
											+ ") onkeyup=editQty("
											+ key
											+ ","
											+ token
											+ ")    disabled id= billQty1"
											+ token
											+ ""
											+ key
											+ " name=billQty1"
											+ token
											+ ""
											+ key
											+ " value = "
											+ data.qty
											+ " ></div>"));
			tr.append($('<td></td>').html(data.mrp));

			var total = parseFloat(data.mrp) * parseFloat(data.qty);
			//tr.append($('<td></td>').html("<label id=total"+token+""+key+" for=>"+total+" </label>" ));
			tr.append($('<td></td>').html(
					"<div id=total"+token+key+">" + total + "</div>"));

			tr
					.append($('<td></td>')
							.html(
									"<a href='#' class='action_btn' onclick='edit("
											+ token
											+ ","
											+ key
											+ ","
											+ data.id
											+ ")'><abbr title='Edit'><i id=edit"+token+""+key+" class='fa fa-edit'></i></abbr></a>   <a href='#' class='action_btn' onclick='deleteOrder("
											+ token
											+ ","
											+ key
											+ ","
											+ data.id
											+ ")'><abbr title='Delete'><i  class='fa fa-trash'></i></abbr> </a>"));

			$('#table_grid' + token + ' tbody').append(tr);

			var container = document.getElementById('table-scroll');
		
			var rowToScrollTo = document.getElementById("edit"+token+""+key);
			rowToScrollTo.scrollIntoView(true); 

			

			container.scrollTop = rowToScrollTo.offsetTop;
		
		$('.table-scroll').scrollTop(0);

		
			return total;
		}
	</script>

	<script type="text/javascript">
		function calTotal(allTotal, token) {
			document.getElementById("li"+token)/* .style.backgroundColor ="skyblue" */;
			$("#total" + token).html(allTotal);
			document.getElementById("tot" + token).setAttribute('value',
					allTotal);

			var discount = $("#discount" + token).val();
			var grandAmt = allTotal - (allTotal * (discount / 100));

			document.getElementById("paidAmount" + token).setAttribute('value',grandAmt);
			var paidAmount = $("#paidAmount" + token).val();
			var grandMinusPaidAmt = 0;
			if(grandAmt>0)
				{
				grandMinusPaidAmt=grandAmt - paidAmount;
				}
			$('#grandtotal' + token).html(grandAmt);
			document.getElementById("grandtot" + token).setAttribute('value',
					grandAmt);

			$('#remAmt' + token).html(grandMinusPaidAmt);
			document.getElementById("remAmount" + token).setAttribute('value',
					grandMinusPaidAmt);

			document.getElementById("barcode" + token).focus();
			
			if(grandAmt>0){
				document.getElementById("generateBill"+token).disabled=false;
				document.getElementById("pdfBtn"+token).disabled=false;
			}else
				{
				document.getElementById("generateBill"+token).disabled=true;
				document.getElementById("pdfBtn"+token).disabled=true;
				}
		}

		var editFlag = 0;

		function edit(token, key, itemId) {

			if (editFlag == 0) {
				//document.getElementById("edit"+token+""+key).value = "Save";
				$("#edit" + token + "" + key).removeClass("fa fa-edit");
				$("#edit" + token + "" + key).addClass("fa fa-save");
				document.getElementById("billQty1" + token + "" + key).disabled = false;

				editFlag = 1;
			} else {
				editFlag = 0;

				document.getElementById("billQty1" + token + "" + key).disabled = true;
				//document.getElementById("edit"+token+""+key).value = "Edit";
				$("#edit" + token + "" + key).removeClass("fa fa-save");
				$("#edit" + token + "" + key).addClass("fa fa-edit");
				var qty = document
						.getElementById("billQty1" + token + "" + key).value;

				$.getJSON('${editQty}', {
					id : itemId,
					qty : qty,
					token : token,
					key : key,

					ajax : 'true'
				}, function(data) {

					calTotal(data, token);

				});
			}

		}
		var a = 0;
		function editQty(key, token, rate) {

			var qty = document.getElementById("billQty1" + token + "" + key).value;
			document.getElementById("total" + token + "" + key).innerHTML = qty* rate;

		}

		function disMinusTotal(token) {

			var discount = $("#discount" + token).val();
            if(discount>=0 && discount<=100 && !isNaN(discount)){
			var total = $("#tot" + token).val();

            var discountInRs=(total * (discount / 100));
            var	 grandAmt = total - discountInRs;
			
			grandAmt = grandAmt.toFixed(2);
			$('#grandtotal' + token).html(grandAmt);
			document.getElementById("grandtot" + token).setAttribute('value',
					grandAmt);
			
			$('#paidAmount' + token).html(grandAmt);
			document.getElementById("paidAmount" + token).setAttribute('value',
					grandAmt);

			var paidAmount = $("#paidAmount" + token).val();

			var remainingAmount = (grandAmt - paidAmount);
			remainingAmount = remainingAmount.toFixed(2);
			$('#remAmt' + token).html(remainingAmount);
			document.getElementById("remAmount" + token).setAttribute('value',
					remainingAmount);
            $('#discountRs' + token).val(discountInRs.toFixed(2));

			//document.getElementById("paidAmount"+token).setAttribute('value',grandAmt);
			//paidAmt(token);

			//document.getElementById("remAmount"+token).setAttribute('value',00);
            }else
            	{
            	  alert("Please Enter Valid Discount %.");
            	  document.getElementById("discount" + token).value=0;
            	  disMinusTotal(token); 
            	}
		}
		function disRsMinusTotal(token) {

			var discountRs = $("#discountRs" + token).val();
            
			var total = $("#tot" + token).val();
            
            var	discPer=0;
            if(discountRs>0){
            discPer=discountRs/(total/100); 
            }
            var grandAmt = total - discountRs;
            if(discountRs>=0 && !isNaN(discountRs) && discountRs<=grandAmt){
			grandAmt = grandAmt.toFixed(2);
			$('#grandtotal' + token).html(grandAmt);
			document.getElementById("grandtot" + token).setAttribute('value',
					grandAmt);
			
			$('#paidAmount' + token).html(grandAmt);
			document.getElementById("paidAmount" + token).setAttribute('value',
					grandAmt);

			var paidAmount = $("#paidAmount" + token).val();

			var remainingAmount = (grandAmt - paidAmount);
			remainingAmount = remainingAmount.toFixed(2);
			$('#remAmt' + token).html(remainingAmount);
			document.getElementById("remAmount" + token).setAttribute('value',
					remainingAmount);
            $('#discount' + token).val(discPer.toFixed(2));
			//document.getElementById("paidAmount"+token).setAttribute('value',grandAmt);
			//paidAmt(token);

			//document.getElementById("remAmount"+token).setAttribute('value',00);
            }else
            	{
            	alert("Please Enter Valid discount amount!!");
            	$("#discountRs" + token).val(0);
            	 disRsMinusTotal(token);
            	}
		}
		function paidAmt(token) {
			var paidAmount = $("#paidAmount" + token).val();
			var grandAmount =$("#grandtot" + token).val();
			 if(!isNaN(paidAmount)){
				  paidAmount = parseFloat($("#paidAmount" + token).val());
				  grandAmount =parseFloat($("#grandtot" + token).val());
		  if(paidAmount<=grandAmount){
			var remainingAmount = (grandAmount - paidAmount);
			remainingAmount = remainingAmount.toFixed(2);
			$('#remAmt' + token).html(remainingAmount);
			document.getElementById("remAmount" + token).setAttribute('value',
					remainingAmount);
		  }else{
			  alert("Paid Amount should be less than or equal to grandtotal!!")
			  $("#paidAmount" + token).val(grandAmount);
		  }
			 }else
				 {
				 alert("Please enter valid paid amount!")
				  $("#paidAmount" + token).val(grandAmount);
				 paidAmt(token);
				 }
		}

		function deleteOrder(token, key, itemId) {
			var allTotal = 0;
			var qty = 0;
			$.getJSON('${deleteOrder}', {
				id : itemId,
				qty : qty,
				token : token,
				key : key,

				ajax : 'true'
			}, function(data) {

				$('#table_grid' + token + ' td').remove();
				
				$.each(data, function(key, regData) {
					//appensFuction
					allTotal = allTotal
							+ appendToTable(key, regData, token, allTotal);
				})
				calTotal(allTotal, token);
				  $('#discount' + token).val(0);
				  $('#discountRs' + token).val(0);
				  
				  document.getElementById("itemName"+token).value="";
                  $('.chosen-select').trigger('chosen:updated');
			});

		}
	</script>

	<script type="text/javascript">
	
	function openCustomerPopup() {

		var modal = document.getElementById("customerModal");
		modal.style.display = "block";

	}

	function closeCustomerPopup() {

		var modal = document.getElementById("customerModal");
		modal.style.display = "none";

	}
	
	</script>

	<script type="text/javascript">
		function generateSellBill(token) {
			
			//openCustomerPopup();

			//var isValid = validation(token);
			var grandtot = $("#grandtot" + token).val();			
			// Animate loader off screen
			
			if (grandtot > 0) {
				
				 var x = confirm("Do you really want to submit the bill ?");
				if (x == true) {
				
				$("#loader"+token).show();
				var isb2b=0;
				if(document.getElementById('is_b2b').checked && token==1) {
				 isb2b=1;
				}
				
				var custName = $("#custName" + token).val();
				var gstNo = $("#gstNo" + token).val();
				var phoneNo = $("#phoneNo" + token).val();
				var discount = $("#discount" + token).val();
				var paymentMode = $("#paymentMode" + token).val();
				var paidAmount = $("#paidAmount" + token).val();

			//	$('#loader').show();
		     //   var loginWindow = window.open('', 'UserLogin');

				$
						.getJSON(
								'${generateBill}',
								{
									isb2b: isb2b,
									custName : custName,
									gstNo : gstNo,
									phoneNo : phoneNo,
									discount : discount,
									billType : paymentMode,
									paidAmount : paidAmount,
									token : token,
									payType : 1,
									ajax : 'true'

								},
								function(data) {
									

									$("#loader"+token).hide();
									$("#check"+token).show();
									if (data == "") {
										alert("Order Not Placed !!");
										$("#check"+token).hide();
									} else {
										//setTimeout('document.getElementById("check2").style.display="none"', 1000); 
									function showIt() {
											  document.getElementById("check"+token).style.visibility = "hidden";
											}
											setTimeout(showIt, 500);
										document.getElementById("li"+token).style.backgroundColor = "white";
										
									  //  loginWindow.location.href = '${pageContext.request.contextPath}/pdfSellBill?billNo='
									//		+ data.sellBillNo;
										document.getElementById("sellBillNo"
												+ token).value = data.sellBillNo;
										document.getElementById("pdfBtn"
												+ token).disabled = false;
										document
												.getElementById("clear" + token).disabled = false;
									
										$('#table_grid' + token + ' td')
												.remove();
										// alert(data.sellBillNo);

										document.getElementById(
												"barcode" + token).value="";

										$("#rateTdVal" + token).html("0.0");

										$("#total" + token).html("0.0");
										document.getElementById("tot" + token).value="0.0";

										document.getElementById("paidAmount" + token).value="0.0";

										$('#grandtotal' + token).html("0.0");
										document.getElementById(
												"grandtot" + token).value="0.0";
										
										$('#remAmt'+token).html(0);
										document.getElementById(
												"remAmount"+token).value="0.0";
										document.getElementById("discount"+token).value="0.0";
										document.getElementById("discountRs"+token).value="0.0";
										document.getElementById(
												"barcode"+token).focus();
										document.getElementById(
												"gstNo"+token).value="";
										document.getElementById(
												"custName"+token).value="Cash";
										document.getElementById(
												"phoneNo"+token).value="";
									       $("#rateTdVal"+token).html("0.0");
									       document.getElementById("itemName"+token).value="";
						                    $('.chosen-select').trigger('chosen:updated');

									}
									
								});
					return true;
				}
			return false;
			}
			
			
			document.getElementById("clear" + token).focus();
			
		}
	</script>
	<script type="text/javascript">
		function validation(token) {
			var custName = $("#custName" + token).val();
			var phoneNo = $("#phoneNo" + token).val();
			var itemName = $("#itemName" + token).val();
			var isValid = true;
			if (custName == "" || custName == null) {
				isValid = false;
				alert("Please Enter Customer Name");
			} else if (phoneNo != "" && phoneNo.length != 10) {
				isValid = false;
				alert("Please Enter Valid Phone No");
			} else if (itemName == "" || itemName == null) {
				isValid = false;
				alert("Please Enter Select Item");
			}
			return isValid;
		}

		function pdfBtn(token) {
			//var isValid = validation(token);
			var grandtot = $("#grandtot" + token).val();
			
		//	alert(grandtot);
			if (validation(token) && grandtot > 0) {
				var custName = $("#custName" + token).val();
				var gstNo = $("#gstNo" + token).val();
				var phoneNo = $("#phoneNo" + token).val();
				var discount = $("#discount" + token).val();
				var paymentMode = $("#paymentMode" + token).val();
				var paidAmount = $("#paidAmount" + token).val();

				$('#loader').show();
		        var loginWindow = window.open('', 'UserLogin');

				$
						.getJSON(
								'${generateBill}',
								{
									custName : custName,
									gstNo : gstNo,
									phoneNo : phoneNo,
									discount : discount,
									paymentMode : paymentMode,
									paidAmount : paidAmount,
									token : token,
									ajax : 'true'

								},
								function(data) {

									$('#loader').hide();
									if (data == "") {
										alert("Order Not Placed !!");
									} else{
										
										document.getElementById("li"+token).style.backgroundColor = "white";
									    loginWindow.location.href = '${pageContext.request.contextPath}/pdfSellBill?billNo='
											+ data.sellBillNo+"&type=R";
										document.getElementById("sellBillNo"
												+ token).value = data.sellBillNo;
										document.getElementById("pdfBtn"
												+ token).disabled = false;
										document
												.getElementById("clear" + token).disabled = false;

										$('#table_grid' + token + ' td')
												.remove();
										document.getElementById("discount"+token).value="0.0";

										document.getElementById(
												"barcode" + token).value="";

										$("#rateTdVal" + token).html("0.0");

										$("#total" + token).html("0.0");
										document.getElementById("tot" + token).value="0.0";

										document.getElementById(
												"paidAmount" + token).value="0.0";

										$('#grandtotal' + token).html("0.0");
										document.getElementById(
												"grandtot" + token).value="0.0";

										$('#remAmt' + token).html(0);
										document.getElementById(
												"remAmount" + token).value="0.0";
										document.getElementById("discount"+token).value="0.0";
										document.getElementById("discountRs"+token).value="0.0";

										document.getElementById(
												"barcode" + token).focus();
										document.getElementById(
												"gstNo"+token).value="";
										document.getElementById(
												"custName"+token).value="Cash";
										document.getElementById(
												"phoneNo"+token).value="";
									       $("#rateTdVal"+token).html("0.0");
									       document.getElementById("itemName"+token).value="";
						                    $('.chosen-select').trigger('chosen:updated');
									}
								});
			}
			document.getElementById("clear" + token).focus();
		}
function pdfPrint(token) {
						
			var billNo = document.getElementById("sellBillNo" + token).value;

			window
					.open("${pageContext.request.contextPath}/pdfSellBill?billNo="
							+ billNo+"&type=R");
			clearData(token);
		}
		
		function clearData(token) {
			$.getJSON('${clearData}', {
				token : token,
				ajax : 'true'
			}, function(data) {

			//	document.getElementById("pdfBtn" + token).disabled = true;
				document.getElementById("clear" + token).disabled = true;

				$('#table_grid' + token + ' td').remove();
				document.getElementById("discount"+token).value="0.0";

				document.getElementById(
						"barcode" + token).value="";

				$("#rateTdVal" + token).html("0.0");

				$("#total" + token).html("0.0");
				document.getElementById("tot" + token).value="0.0";

				
				document.getElementById("paidAmount" + token).setAttribute('value',0);
				$('#grandtotal' + token).html("0.0");
				document.getElementById(
						"grandtot" + token).value="0.0";

				$('#remAmt' + token).html(0);
				document.getElementById(
						"remAmount" + token).value="0.0";
				document.getElementById("discount"+token).value="0.0";
				document.getElementById("discountRs"+token).value="0.0";

				document.getElementById(
						"barcode" + token).focus();
				document.getElementById(
						"gstNo"+token).value="";
				document.getElementById(
						"custName"+token).value="Cash";
				document.getElementById(
						"phoneNo"+token).value="";
			       $("#rateTdVal"+token).html("0.0");
			       document.getElementById("itemName"+token).value="";
                    $('.chosen-select').trigger('chosen:updated');
			});
			document.getElementById("barcode" + token).focus();
		}

		function selectItem(token) {
			//alert(token);

			var barcode = (document.getElementById("barcode" + token).value);

			$.getJSON('${getItemIdByBarcode}', {
				itemId : barcode,
				ajax : 'true'
			}, function(data) {

				$('#itemName' + token).selectpicker('val', '' + data);

				$.getJSON('${findItemById}', {
					id : data,
					ajax : 'true'
				}, function(data) {

					$("#rateTdVal" + token).html(data.mrp);
				});
			});

			document.getElementById("itemName" + token).blur();
			document.getElementById("qty" + token).focus();

		}

		function onloadTab(token) {

			document.getElementById("barcode" + token).focus();

		}

		function onQty(event, token) {
			var x = event.which || event.keyCode;
			if (x == 13) {
				document.getElementById("b" + token).focus();
			}

		}
		function onTab(token) { 
		
			   addNewRow1(token);
		}
		function onBarcode(event, token) {
			var x = event.which || event.keyCode;
			if (x == 13) {
				document.getElementById("generateBill" + token).focus();
			}

		}

		function Confirm(title, msg, $true, $false) { /*change*/

			var prevDialog = document.getElementById("confirmDialog");

			if (prevDialog == null) {

				var $content = "<divid='confirmDialog' class='dialog-ovelay'>"
						+ "<div class='dialog'><header>"
						+ " <h3> "
						+ title
						+ " </h3> "
						+

						"</header>"
						+ "<div class='dialog-msg'>"
						+ " <p> "
						+ msg
						+ " </p> "
						+ "</div>"
						+ "<footer>"
						+ "<div class='controls'>"
						+ " <button class='button btn btn-primary doAction'>"
						+ $true
						+ "</button> &nbsp;&nbsp;&nbsp;&nbsp;"
						+ " <button class='button btn btn-success cancelAction' >"
						+ $false + "</button> " + "</div>" + "</footer>"
						+ "</div>" + "</div>";
				$('body').prepend($content);

			}

		}

		function emptyStock(title, msg, $true) { /*change*/

			var prevDialog = document.getElementById("emptyDialog");

			if (prevDialog == null) {

				var $content = "<div id='emptyDialog' class='dialog-ovelay'>"
						+ "<div class='dialog'><header>" + " <h3> " + title
						+ " </h3> " +

						"</header>" + "<div class='dialog-msg'>" + " <p> "
						+ msg + " </p> " + "</div>" + "<footer>"
						+ "<div class='controls'>"
						+ " <button class='button btn btn-primary doAction'>"
						+ $true + "</button> &nbsp;&nbsp;&nbsp;&nbsp;" +

						"</div>" + "</footer>" + "</div>" + "</div>";

				$('body').prepend($content);
			}

			//document.body.appendChild(div);

		}
		$('.doAction').click(function() {
			// window.open($link, "_blank"); /*new*/
			$(this).parents('.dialog-ovelay').fadeOut(500, function() {

				$(this).remove();

			}); //g
		});//g
	</script>

	<script type="text/javascript">
		function setCursor() {
			$("#barcode1").focus();

		}
	/* 	$(window).load(function() {
			// Animate loader off screen
		//	$(".se-pre-con").fadeOut("slow");
			$("#loader1").show();
		});  */
	</script>

	<!-- document.getElementById("mySelect").value = "orange"; -->
	<!----------------------------------------Dropdown With Search----------------------------------------------- -->
	<%-- <script
		src="${pageContext.request.contextPath}/resources/customerBill/jquery-3.2.1.min.js"
		type="text/javascript"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/customerBill/chosen.jquery.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/customerBill/init.js"
		type="text/javascript" charset="utf-8"></script>
</body>
</html>
