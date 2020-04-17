<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.pageTitle {
	margin-top: 0px;
}
</style>
<%-- <!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>Monginis</title>
<link
	href="${pageContext.request.contextPath}/resources/css/monginis.css"
	rel="stylesheet" type="text/css" />
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/images/feviconicon.png"
	type="image/x-icon" />
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
	$(".toggle").on("click", function() {
		$(".marquee").toggleClass("microsoft");
	});
</script>
<!--rightNav-->

</head>
<body> comment by sachin --%>
<style type="text/css">
.fit-img {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
	max-width: 60%;
	max-height: 60%
}

.fit-img-bottom {
	top: auto;
}

.fit-img-tight {
	max-width: 60%;
	max-height: 60%
}
</style>
<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>

<!--topLeft-nav-->
<div class="sidebarOuter"></div>
<!--topLeft-nav-->

<!--wrapper-start-->
<div class="wrapper">

	<!--topHeader-->
	<jsp:include page="/WEB-INF/views/include/logo.jsp">

		<jsp:param name="fr" value="${frDetails}" />
	</jsp:include>




	<!--topHeader-->

	<!--rightContainer-->
	<div class="fullGrid center">
		<!--fullGrid-->
		<div class="wrapperIn2">

			<jsp:include page="/WEB-INF/views/include/left.jsp">
				<jsp:param name="myMenu" value="${menuList}" />

			</jsp:include>
			<%--     <input type="hidden" id="achievedTarget" value="${sessionScope.achievedTarget}">
       <input type="hidden" id="target" value="${sessionScope.fraTarget}"> --%>
			<%--  <c:choose>
       <c:when test="${loginInfo.accessRight==1}">
                  	<a href="${pageContext.request.contextPath}/viewMonthwiseSellBill">  <div id="chart_div" style="width: 220px;height: 70px;  float:right;margin-right: 60px;margin-top: 10px;"></div></a>
       
       </c:when>
       
       </c:choose> --%>

			<!--rightSidebar-->
			<div class="sidebarright">
								
				<div class="row">
					<div class="col-md-12">
						<div class="custom_right">
						

							<input type="hidden" name="tod" id="tod" value="2020-04-17">
							<input type="hidden" name="frmd" id="frmd" value="2020-02-01">
							<input type="hidden" name="catId" id="catId" value="2020-04-17">
							<div class="colOuter">


								
									
									

									

									
										<div class="col-md-1 radio_align_1" style="margin: 7px 0 0 0px;">
											<input type="radio" name="type" value="1" class="radio-align" onclick="showDiv(this.value)" style="vertical-align:sub; margin: 0 5px 0 0;">Today
										</div>
										<div class="col-md-1 radio_align_1" style="margin: 7px 0 0 0px;">
											<input type="radio" name="type" value="2" class="radio-align" onclick="showDiv(this.value)" style="vertical-align:sub; margin: 0 5px 0 0;"> Week
										</div>
										<div class="col-md-1 radio_align_1" style="margin: 7px 0 0 0px;">
											<input type="radio" name="type" value="3" class="radio-align" onclick="showDiv(this.value)" style="vertical-align:sub; margin: 0 5px 0 0;"> Month
										</div>
										<div class="col-md-1 radio_align_1" style="margin: 7px 0 0 0px;">
											<input type="radio" name="type" value="4" class="radio-align" checked="" onclick="showDiv(this.value)" style="vertical-align:sub; margin: 0 5px 0 0;"> Custom
										</div>
									
								
									<div id="ihide" style="">
									<div class="col-md-1">
										<div class="col1title">From Date</div>
									</div>
									<div class="col-md-2">
										<input id="fromdatepicker" class="texboxitemcode texboxcal hasDatepicker" placeholder="From Date" name="fromDate" value="01-02-2020" autocomplete="off" type="text" required="">

									</div>
									<div class="col-md-1">
										<div class="col1title">To Date</div>
									</div>
									<div class="col-md-2">
										<input id="todatepicker" class="texboxitemcode texboxcal hasDatepicker" placeholder="To Date" name="toDate" value="17-04-2020" autocomplete="off" type="text" required="">

									</div>

								</div>






								<div class="sub_right">
									<input name="submit" class="buttonsaveorder" value="Submit" type="submit" id="submtbtn">
								</div>
								<div class="sub_right">
									

								</div>


							</div>
						
					</div>
					</div>
					
					
					
					<div class="clr"></div>
					<!-- box 1 --> 
					<div class="sales_list">
					<ul>
						<!-- first li box -->
						<li>
							<div class="sale_one bg_one">
								<div class="sale_l">
									<i class="fa fa-birthday-cake" aria-hidden="true"></i>
								</div>
								<div class="sale_r">
									<h3 class="sale_head">Sale</h3>
									
										<div class="sale_divide">
											<div class="sales_l"><span>1000</span></div>
											<div class="sales_l"><span>1000</span></div>
											<div class="clr"></div>
										</div>
									
									
									<h1 class="price_sale">99,000</h1>
								</div>
								<div class="clr"></div>
							</div>
						</li>

						<!-- second li box -->
						<li>
							<div class="sale_one bg_two">
								<div class="sale_l">
									<i class="fa fa-inr" aria-hidden="true"></i>
								</div>
								<div class="sale_r">
									<h3 class="sale_head">Discount Rate</h3>

									<h5 class="price_sale">57236</h5>
								</div>
								<div class="clr"></div>
							</div>
						</li>

						<!-- third li box -->
						<li>
							<div class="sale_one bg_three">
								<div class="sale_l"><i class="fa fa-inr" aria-hidden="true"></i></div>
								<div class="sale_r">
									<h3 class="sale_head">Purchase</h3>
									
									<h5 class="price_sale">3760</h5>


								</div>
								<div class="clr"></div>
							</div>
						</li>

						<!-- fourth li box -->
						<li>
							<div class="sale_one bg_fourth">
								<div class="sale_l"><i class="fa fa-inr" aria-hidden="true"></i>

								</div>
								<div class="sale_r">
									<h3 class="sale_head">&nbsp;No. of Bill</h3>
									<h5 class="price_sale">125047</h5>
								</div>
								<div class="clr"></div>
							</div>
						</li>

						

					</ul>
					<div class="clr"></div>
				</div>
				
				
				
				<div class="row">
					<div class="col-md-4">
						<div class="one_graph">
							<div class="graph_one one"></div>
							<div class="daily_sale">
								<h2>Daily Sales</h2>
 								<p><span>55%</span> increase in today sales.</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="one_graph">
							<div class="graph_one  two"></div>
							<div class="daily_sale">
								<h2>Email Subscriptions</h2>
 								<p>Last Campaign Performance</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="one_graph ">
							<div class="graph_one three"></div>
							<div class="daily_sale">
								<h2>Completed Tasks</h2>
 								<p>Last Campaign Performance</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="one_graph ">
							<div class="graph_one one"></div>
							<div class="daily_sale">
								<h2>Completed Tasks</h2>
 								<p>Last Campaign Performance</p>
							</div>
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="one_graph ">
							<div class="graph_one two"></div>
							<div class="daily_sale">
								<h2>Completed Tasks</h2>
 								<p>Last Campaign Performance</p>
							</div>
						</div>
					</div>
				</div>
					
					
					<div class="charts_bx">
					<div class="chart_l">
						<div id="donutchart"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1199px; height: 500px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="1199" height="500" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_0"><filter id="_ABSTRACT_RENDERER_ID_1"><feGaussianBlur in="SourceAlpha" stdDeviation="2"></feGaussianBlur><feOffset dx="1" dy="1"></feOffset><feComponentTransfer><feFuncA type="linear" slope="0.1"></feFuncA></feComponentTransfer><feMerge><feMergeNode></feMergeNode><feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter></defs><g><text text-anchor="start" x="180" y="69.75" font-family="Arial" font-size="15" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Categorywise Sell(%)</text><rect x="180" y="57" width="840" height="15" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><path d="M600,235.6L600,266.4L587.4761257463194,143.60807173452355L587.4761257463194,112.80807173452354" stroke="#007395" stroke-width="1" fill="#007395"></path><path d="M600,235.6L587.4761257463194,112.80807173452354A154,123.2,0,0,1,600,112.39999999999999L600,235.6A0,0,0,0,0,600,235.6" stroke="#0099c6" stroke-width="1" fill="#0099c6"></path></g><g><path d="M600,235.6L600,266.4L554.7080984666965,148.64868603910008L554.7080984666965,117.84868603910007" stroke="#730073" stroke-width="1" fill="#730073"></path><path d="M600,235.6L554.7080984666965,117.84868603910007A154,123.2,0,0,1,587.4761257463194,112.80807173452354L600,235.6A0,0,0,0,0,600,235.6" stroke="#990099" stroke-width="1" fill="#990099"></path></g><g><path d="M600,235.6L600,266.4L553.1391398409191,149.0422637296685L553.1391398409191,118.24226372966848" stroke="#0c7112" stroke-width="1" fill="#0c7112"></path><path d="M600,235.6L553.1391398409191,118.24226372966848A154,123.2,0,0,1,554.7080984666965,117.84868603910007L600,235.6A0,0,0,0,0,600,235.6" stroke="#109618" stroke-width="1" fill="#109618"></path></g><g><path d="M530.5033322286562,345.54169558431806L530.5033322286562,376.3416955843181A154,123.2,0,0,1,446,266.4L446,235.6A154,123.2,0,0,0,530.5033322286562,345.54169558431806" stroke="#bf7300" stroke-width="1" fill="#bf7300"></path><path d="M600,235.6L600,266.4L530.5033322286562,376.3416955843181L530.5033322286562,345.54169558431806" stroke="#bf7300" stroke-width="1" fill="#bf7300"></path><path d="M600,235.6L530.5033322286562,345.54169558431806A154,123.2,0,0,1,553.1391398409191,118.24226372966848L600,235.6A0,0,0,0,0,600,235.6" stroke="#ff9900" stroke-width="1" fill="#ff9900"></path></g><g><path d="M585.4696693303961,358.25038309766694L585.4696693303961,389.05038309766695A154,123.2,0,0,1,530.5033322286562,376.341695584318L530.5033322286562,345.54169558431806A154,123.2,0,0,0,585.4696693303961,358.25038309766694" stroke="#a52b0e" stroke-width="1" fill="#a52b0e"></path><path d="M600,235.6L600,266.4L585.4696693303961,389.05038309766695L585.4696693303961,358.25038309766694" stroke="#a52b0e" stroke-width="1" fill="#a52b0e"></path><path d="M600,235.6L585.4696693303961,358.25038309766694A154,123.2,0,0,1,530.5033322286562,345.54169558431806L600,235.6A0,0,0,0,0,600,235.6" stroke="#dc3912" stroke-width="1" fill="#dc3912"></path></g><g><path d="M754,235.6L754,266.4A154,123.2,0,0,1,585.4696693303961,389.0503830976669L585.4696693303961,358.25038309766694A154,123.2,0,0,0,754,235.6" stroke="#264d99" stroke-width="1" fill="#264d99"></path><path d="M600,235.6L600,112.39999999999999A154,123.2,0,1,1,585.4696693303961,358.25038309766694L600,235.6A0,0,0,1,0,600,235.6" stroke="#3366cc" stroke-width="1" fill="#3366cc"></path></g><g><g><g><text text-anchor="end" x="1020" y="235.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Ice Cream (18185.00)</text></g><g><text text-anchor="end" x="1020" y="251.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">18,185 (51.5%)</text></g></g><g><path d="M715.5,240.5L764.5,240.5L764.5,240.5L1020.5,240.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="715.5" cy="240.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="319.40976514215083" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Milk Shake (2100.00)</text></g><g><text text-anchor="start" x="180" y="335.59023485784917" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">2,100 (5.9%)</text></g></g><g><path d="M568.5,324.5L436.5,324.5L436.5,324.5L180.5,324.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="568.5" cy="324.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="223.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Sweets, Ghee &amp; Matho (13285.50)</text></g><g><text text-anchor="start" x="180" y="239.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">13,285.5 (37.6%)</text></g></g><g><path d="M485.5,228.5L436.5,228.5L436.5,228.5L180.5,228.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="485.5" cy="228.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="172.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Franchise End other Items (60.00)</text></g><g><text text-anchor="start" x="180" y="188.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">60 (0.2%)</text></g></g><g><path d="M565.5,147.5L436.5,147.5L436.5,177.5L180.5,177.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="565.5" cy="147.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="140.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Namkeen (1220.00)</text></g><g><text text-anchor="start" x="180" y="156.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">1,220 (3.5%)</text></g></g><g><path d="M578.5,145.5L436.5,145.5L436.5,145.5L180.5,145.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="578.5" cy="145.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="111.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Lassi (457.50)</text></g><g><text text-anchor="start" x="180" y="127.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">457.5 (1.3%)</text></g></g><g><path d="M595.5,143.5L436.5,143.5L436.5,116.5L180.5,116.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="595.5" cy="143.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Category</th><th>Amount</th><th>ID</th></tr></thead><tbody><tr><td>Ice Cream (18185.00)</td><td>18,185</td><td>1</td></tr><tr><td>Milk Shake (2100.00)</td><td>2,100</td><td>3</td></tr><tr><td>Sweets, Ghee &amp; Matho (13285.50)</td><td>13,285.5</td><td>4</td></tr><tr><td>Franchise End other Items (60.00)</td><td>60</td><td>7</td></tr><tr><td>Namkeen (1220.00)</td><td>1,220</td><td>9</td></tr><tr><td>Lassi (457.50)</td><td>457.5</td><td>11</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 510px; left: 1209px; white-space: nowrap; font-family: Arial; font-size: 15px; font-weight: bold;">1,220 (3.5%)</div><div></div></div></div>
						<!-- style="width: 900px; height: 500px;" -->
						</div>
						<div class="chart_r">
							<h3 class="bx_title">Top Products</h3>
							<div class="right_btns">
								<input name="submit" class="sub_btn" value="All" type="submit" onclick="itemSellBillCal2(0)" id="submtbtn">
								<button type="reset" class="sub_btn" value="Reset" onclick="itemSellBillCal2(2)">
									<i class="fa fa-arrow-down" aria-hidden="true"></i>
								</button>
								<button type="reset" class="sub_btn" value="Reset" onclick="itemSellBillCal2(1)">
									<i class="fa fa-arrow-up" aria-hidden="true"></i>
								</button>



							</div>



							<div class="scrollbars" id="scrollbarsmodaldiv">
								<table id="custCreditTable" width="100%">

									<thead>
										<tr>
											<th class="sr_no" style="text-align: center;">Sr</th>
											<th class="sr_no" style="text-align: center;">Item Name</th>
											<th class="sr_no" style="text-align: center;">Amount</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>


						</div>
						<div class="clr"></div>


					</div>
					
					
					
					<div class="charts_bx">
					<div class="chart_l">
						<div id="donutchart"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 1199px; height: 500px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="1199" height="500" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_0"><filter id="_ABSTRACT_RENDERER_ID_1"><feGaussianBlur in="SourceAlpha" stdDeviation="2"></feGaussianBlur><feOffset dx="1" dy="1"></feOffset><feComponentTransfer><feFuncA type="linear" slope="0.1"></feFuncA></feComponentTransfer><feMerge><feMergeNode></feMergeNode><feMergeNode in="SourceGraphic"></feMergeNode></feMerge></filter></defs><g><text text-anchor="start" x="180" y="69.75" font-family="Arial" font-size="15" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">Categorywise Sell(%)</text><rect x="180" y="57" width="840" height="15" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><path d="M600,235.6L600,266.4L587.4761257463194,143.60807173452355L587.4761257463194,112.80807173452354" stroke="#007395" stroke-width="1" fill="#007395"></path><path d="M600,235.6L587.4761257463194,112.80807173452354A154,123.2,0,0,1,600,112.39999999999999L600,235.6A0,0,0,0,0,600,235.6" stroke="#0099c6" stroke-width="1" fill="#0099c6"></path></g><g><path d="M600,235.6L600,266.4L554.7080984666965,148.64868603910008L554.7080984666965,117.84868603910007" stroke="#730073" stroke-width="1" fill="#730073"></path><path d="M600,235.6L554.7080984666965,117.84868603910007A154,123.2,0,0,1,587.4761257463194,112.80807173452354L600,235.6A0,0,0,0,0,600,235.6" stroke="#990099" stroke-width="1" fill="#990099"></path></g><g><path d="M600,235.6L600,266.4L553.1391398409191,149.0422637296685L553.1391398409191,118.24226372966848" stroke="#0c7112" stroke-width="1" fill="#0c7112"></path><path d="M600,235.6L553.1391398409191,118.24226372966848A154,123.2,0,0,1,554.7080984666965,117.84868603910007L600,235.6A0,0,0,0,0,600,235.6" stroke="#109618" stroke-width="1" fill="#109618"></path></g><g><path d="M530.5033322286562,345.54169558431806L530.5033322286562,376.3416955843181A154,123.2,0,0,1,446,266.4L446,235.6A154,123.2,0,0,0,530.5033322286562,345.54169558431806" stroke="#bf7300" stroke-width="1" fill="#bf7300"></path><path d="M600,235.6L600,266.4L530.5033322286562,376.3416955843181L530.5033322286562,345.54169558431806" stroke="#bf7300" stroke-width="1" fill="#bf7300"></path><path d="M600,235.6L530.5033322286562,345.54169558431806A154,123.2,0,0,1,553.1391398409191,118.24226372966848L600,235.6A0,0,0,0,0,600,235.6" stroke="#ff9900" stroke-width="1" fill="#ff9900"></path></g><g><path d="M585.4696693303961,358.25038309766694L585.4696693303961,389.05038309766695A154,123.2,0,0,1,530.5033322286562,376.341695584318L530.5033322286562,345.54169558431806A154,123.2,0,0,0,585.4696693303961,358.25038309766694" stroke="#a52b0e" stroke-width="1" fill="#a52b0e"></path><path d="M600,235.6L600,266.4L585.4696693303961,389.05038309766695L585.4696693303961,358.25038309766694" stroke="#a52b0e" stroke-width="1" fill="#a52b0e"></path><path d="M600,235.6L585.4696693303961,358.25038309766694A154,123.2,0,0,1,530.5033322286562,345.54169558431806L600,235.6A0,0,0,0,0,600,235.6" stroke="#dc3912" stroke-width="1" fill="#dc3912"></path></g><g><path d="M754,235.6L754,266.4A154,123.2,0,0,1,585.4696693303961,389.0503830976669L585.4696693303961,358.25038309766694A154,123.2,0,0,0,754,235.6" stroke="#264d99" stroke-width="1" fill="#264d99"></path><path d="M600,235.6L600,112.39999999999999A154,123.2,0,1,1,585.4696693303961,358.25038309766694L600,235.6A0,0,0,1,0,600,235.6" stroke="#3366cc" stroke-width="1" fill="#3366cc"></path></g><g><g><g><text text-anchor="end" x="1020" y="235.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Ice Cream (18185.00)</text></g><g><text text-anchor="end" x="1020" y="251.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">18,185 (51.5%)</text></g></g><g><path d="M715.5,240.5L764.5,240.5L764.5,240.5L1020.5,240.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="715.5" cy="240.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="319.40976514215083" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Milk Shake (2100.00)</text></g><g><text text-anchor="start" x="180" y="335.59023485784917" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">2,100 (5.9%)</text></g></g><g><path d="M568.5,324.5L436.5,324.5L436.5,324.5L180.5,324.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="568.5" cy="324.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="223.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Sweets, Ghee &amp; Matho (13285.50)</text></g><g><text text-anchor="start" x="180" y="239.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">13,285.5 (37.6%)</text></g></g><g><path d="M485.5,228.5L436.5,228.5L436.5,228.5L180.5,228.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="485.5" cy="228.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="172.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Franchise End other Items (60.00)</text></g><g><text text-anchor="start" x="180" y="188.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">60 (0.2%)</text></g></g><g><path d="M565.5,147.5L436.5,147.5L436.5,177.5L180.5,177.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="565.5" cy="147.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="140.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Namkeen (1220.00)</text></g><g><text text-anchor="start" x="180" y="156.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">1,220 (3.5%)</text></g></g><g><path d="M578.5,145.5L436.5,145.5L436.5,145.5L180.5,145.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="578.5" cy="145.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g><g><g><text text-anchor="start" x="180" y="111.4097651421508" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#ff0000">Lassi (457.50)</text></g><g><text text-anchor="start" x="180" y="127.5902348578492" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#9e9e9e">457.5 (1.3%)</text></g></g><g><path d="M595.5,143.5L436.5,143.5L436.5,116.5L180.5,116.5" stroke="#636363" stroke-width="1" stroke-opacity="0.7" fill-opacity="1" fill="none"></path><circle cx="595.5" cy="143.5" r="2" stroke="none" stroke-width="0" fill-opacity="0.7" fill="#636363"></circle></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>Category</th><th>Amount</th><th>ID</th></tr></thead><tbody><tr><td>Ice Cream (18185.00)</td><td>18,185</td><td>1</td></tr><tr><td>Milk Shake (2100.00)</td><td>2,100</td><td>3</td></tr><tr><td>Sweets, Ghee &amp; Matho (13285.50)</td><td>13,285.5</td><td>4</td></tr><tr><td>Franchise End other Items (60.00)</td><td>60</td><td>7</td></tr><tr><td>Namkeen (1220.00)</td><td>1,220</td><td>9</td></tr><tr><td>Lassi (457.50)</td><td>457.5</td><td>11</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 510px; left: 1209px; white-space: nowrap; font-family: Arial; font-size: 15px; font-weight: bold;">1,220 (3.5%)</div><div></div></div></div>
						<!-- style="width: 900px; height: 500px;" -->
						</div>
						<div class="chart_r">
							<h3 class="bx_title">Top Products</h3>
							<div class="right_btns">
								<input name="submit" class="sub_btn" value="All" type="submit" onclick="itemSellBillCal2(0)" id="submtbtn">
								<button type="reset" class="sub_btn" value="Reset" onclick="itemSellBillCal2(2)">
									<i class="fa fa-arrow-down" aria-hidden="true"></i>
								</button>
								<button type="reset" class="sub_btn" value="Reset" onclick="itemSellBillCal2(1)">
									<i class="fa fa-arrow-up" aria-hidden="true"></i>
								</button>



							</div>



							<div class="scrollbars" id="scrollbarsmodaldiv">
								<table id="custCreditTable" width="100%">

									<thead>
										<tr>
											<th class="sr_no" style="text-align: center;">Sr</th>
											<th class="sr_no" style="text-align: center;">Item Name</th>
											<th class="sr_no" style="text-align: center;">Amount</th>
										</tr>
									</thead>
									<tbody>

									</tbody>
								</table>
							</div>


						</div>
						<div class="clr"></div>


					</div>
					
					
					
					
				</div>
				<!--slider-->

				<!--latestNews-->


				<%-- 	<div class="latestNews">
					
						<h3 class="latestNewsTitle">Latest News</h3>
							<div class="microsoft marquee">
						<c:forEach items="${schedulerLists}" var="schedulerLists">
						
					

								<span> ${schedulerLists.schMessage} </span>
							
						
						</c:forEach>
						</div>
					</div> --%>


				<!--latestNews-->

			</div>
			<!--rightSidebar-->

		</div>
		<!--fullGrid-->
	</div>
	<!--rightContainer-->

</div>
<!--wrapper-end-->

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	var achievedTarget = document.getElementById("achievedTarget").value;
	var target = document.getElementById("target").value;
	var monthTarget = target;
	google.charts.load('current', {
		packages : [ 'corechart', 'bar' ]
	});
	google.charts.setOnLoadCallback(drawMultSeries);

	function drawMultSeries() {

		achievedTarget = Math.ceil(achievedTarget);

		if (achievedTarget >= target) {

			target = 0;
		} else {

			target = target - achievedTarget;

		}

		var data = google.visualization.arrayToDataTable([
				[ 'Target In Lakhs', 'Assigned Target' ],
				[ 'Monthly Target:' + monthTarget, target ],
				[ 'Achieved Target:' + achievedTarget, achievedTarget ], ]);

		var options = {
			title : 'Franchise Target',
			chartArea : {
				width : '1220',
				height : '1220'
			},
			hAxis : {
				title : 'Target Details',
				minValue : 0
			},
			vAxis : {
				title : 'Target In Lakhs'
			}

		};

		var chart = new google.visualization.PieChart(document
				.getElementById('chart_div'));

		chart.draw(data, options);
	}
</script>




</body>
</html>
