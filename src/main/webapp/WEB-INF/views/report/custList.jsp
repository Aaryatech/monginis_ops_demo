<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<style>
table, th, td {
	border: 1px solid #9da88d;
}
</style>

<!--datepicker-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script>
	$(function() {
		$("#todatepicker").datepicker({
			dateFormat : 'dd-mm-yy'
		});
	});
	$(function() {
		$("#fromdatepicker").datepicker({
			dateFormat : 'dd-mm-yy'
		});
	});
</script>
<!--datepicker-->

<c:url var="getHeaders" value="/getHeaders" />
<div class="sidebarOuter"></div>

<div class="wrapper">

	<!--topHeader-->

	<jsp:include page="/WEB-INF/views/include/logo.jsp">
		<jsp:param name="frDetails" value="${frDetails}" />

	</jsp:include>

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

			<!-- Place Actual content of page inside this div -->
			<div class="sidebarright">


				<div class="row">
					<div class="col-md-12">
						<h2 class="pageTitle">Customer List</h2>
					</div>
				</div>


				<input type="hidden" name="frId" id="frId" value="${frId}">
				<div class="row">
					<div class="clearfix"></div>

					<div class="row">


						<div class="form-group">

							<div class="col-md-12"
								style="margin-top: 3px; text-align: center;">


								<button class="btn btn-primary" value="PDF" id="PDFButton"
									onclick="genPdf()">PDF</button>

								<input type="button" id="expExcel" class="btn btn-primary"
									value="EXPORT TO Excel" onclick="exportToExcel();">

							</div>

						</div>

					</div>
					<div id="table-scroll">
						<div id="faux-table" class="faux-table" aria="hidden"
							style="display: none;">
							<!-- <table id="table2" class="main-table" border="1">
								<thead>
									<tr class="bgpink">
										<th>Sr No.</th>

										<th class="col-sm-1"><input type="checkbox"
											onClick="selectBillNo(this)" /></th>
										<th class="col-sm-1" style="text-align: center;">Date</th>
										<th class="col-sm-1" style="text-align: center;">CRN Id</th>
										<th class="col-md-2" style="text-align: center;">Inv. No
										</th>
										<th class="col-md-2" style="text-align: center;">Franchise</th>
										<th class="col-md-1" style="text-align: center;">Taxable
											Amt</th>
										<th class="col-md-2" style="text-align: center;">Tax Amt</th>

										<th class="col-md-2" style="text-align: center;">Amount</th>
										<th class="col-sm-1">Action</th>
									</tr>

								</thead>
								<tbody>
							</table> -->
						</div>
						<div>
							<table id="table1" class="responsive-table" border="1">
								<thead>
									<tr class="bgpink">


										<th class="col-sm-1">Sr No.</th>
										<th class="col-sm-3" style="text-align: center;">Customer
											Name</th>
										<th class="col-sm-3" style="text-align: center;">Customer
											Mobile No</th>

										<th class="col-md-3" style="text-align: center;">GST No.</th>

									</tr>

								</thead>
								<tbody>
									<c:forEach items="${custList}" var="custList" varStatus="count">
										<tr>
											<td style="text-align: center">${count.index+1}</td>

											<td style="text-align: left"><c:out
													value="${custList.userName}" /></td>

											<td style="text-align: right"><c:out
													value="${custList.userPhone}" /></td>

											<td><c:out value="${custList.userGstNo}" /></td>


										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>

					</div>
					<!--table end-->
					<br>
					<!-- <div class="col-sm-2 col-lg-2 controls">
						<input type="button" value="Generate PDF For Fr"
							onclick="genPdf()" class="btn btn-primary">
					</div> -->
				</div>
			</div>




		</div>
		<!--rightSidebar-->

	</div>
	<!--fullGrid-->
</div>
<!--rightContainer-->

</div>
<!--wrapper-end-->

<!--easyTabs-->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<!--easyTabs-->


<script>
	function genPdf() {
		//alert("Inside Gen Pdf ");
		var frId = $("#frId").val();
		alert(frId);
		window
				.open('${pageContext.request.contextPath}/pdf?reportURL=pdf/getcustomerListPdf/'
						+ frId);

	}
</script>




<script type="text/javascript">
	function searchReport() {

		//	alert("in side get Header ");

		var fromDate = $("#fromdatepicker").val();
		var toDate = $("#todatepicker").val();

		var valid = true;

		if (fromDate == null || fromDate == "") {
			valid = false;
			alert("Please select from date");
		}

		else if (toDate == null || toDate == "") {
			valid = false;
			alert("Please select to date");
		}

		/* if (fromDate > toDate) {
			valid = false;
			alert("from date greater than todate ");
		} */

		if (valid == true) {

			$
					.getJSON(
							'${getHeaders}',
							{
								fromDate : fromDate,
								toDate : toDate,

								ajax : 'true',

							},
							function(data) {
								//alert(data);
								var len = data.length;

								$('#table1 td').remove();

								$
										.each(
												data,
												function(key, headers) {

													var tr = $('<tr></tr>');

													tr
															.append($('<td><input class="chk" type=checkbox name="select_to_agree" id="select_to_agree'+key+'"  value='+headers.crnId+'></td>'));
													tr
															.append($(
																	'<td class="col-sm-1"></td>')
																	.html(
																			key + 1));
													tr
															.append($(
																	'<td class="col-md-1" style="text-align:center"></td>')
																	.html(
																			headers.crnDate));

													tr
															.append($(
																	'<td  class="col-md-1" style="text-align:center"></td>')
																	.html(
																			headers.crnNo));
													tr
															.append($(
																	'<td class="col-md-2" style="text-align:center"></td>')
																	.html(
																			headers.exVarchar1));//inv no

													tr
															.append($(
																	'<td class="col-md-3" style="text-align:center"></td>')
																	.html(
																			headers.frName));

													tr
															.append($(
																	'<td class="col-md-1"  style="text-align:right"></td>')
																	.html(
																			(headers.crnTaxableAmt)
																					.toFixed()));

													tr
															.append($(
																	'<td class="col-md-1"  style="text-align:right"></td>')
																	.html(
																			(headers.crnTotalTax)
																					.toFixed(2)));

													tr
															.append($(
																	'<td class="col-md-1"  style="text-align:right"></td>')
																	.html(
																			(headers.crnGrandTotal)
																					.toFixed(2)));

													tr
															.append($('<td class="col-md-2" style="text-align:center"><a href="#" class="action_btn" onclick="getCrnDetail('
																	+ headers.crnId
																	+ ')"><abbr title="Detail"><i class="fa fa-list"></i></abbr></a> &nbsp;&nbsp;&nbsp;<a href="#" class="action_btn" onclick="genPdfSingle('
																	+ headers.crnId
																	+ ')"><abbr title="Detail"><i class="fa fa-file-pdf-o"></i></abbr></a></td>'));

													$('#table1 tbody').append(
															tr);

												})

							});
		}

	}
</script>

<script type="text/javascript">
	function getCrnDetail(crnId) {
		//alert("HIII");
		//alert("header ID "+headerId)

		//alert("HHHHHH");
		var form = document.getElementById("validation-form");
		form.action = "${pageContext.request.contextPath}/getCrnDetailList/"
				+ crnId;
		form.submit();
	}
</script>

<script>
	function genPdfSingle() {
		//alert("Inside Gen Pdf ");
		//alert("Inside Gen Pdf " + selArray);

		window
				.open('${pageContext.request.contextPath}/pdf?url=pdf/getCrnCheckedHeadersNew/'
						+ selArray);

	}
</script>


<script type="text/javascript">
	function validate() {

		var fromDate = $("#fromdatepicker").val();
		var toDate = $("#todatepicker").val();

		var isValid = true;

		if (fromDate == "" || fromDate == null) {

			isValid = false;
			alert("Please select From Date");
		} else if (toDate == "" || toDate == null) {

			isValid = false;
			alert("Please select To Date");
		}
		return isValid;

	}
</script>
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

	function exportToExcel() {

		window.open("${pageContext.request.contextPath}/exportToExcelplain");
		document.getElementById("expExcel").disabled = true;
	}
</script>

<!-- onclick="var checkedVals = $('.chk:checkbox:checked').map(function() { return this.value;}).get();checkedVals=checkedVals.join(',');if(checkedVals==''){alert('No Rows Selected');return false;	}else{   return confirm('Are you sure want to generate pdf');}"
 -->
</body>
</html>