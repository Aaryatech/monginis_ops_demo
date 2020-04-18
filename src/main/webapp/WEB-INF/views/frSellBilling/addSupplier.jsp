

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

 <style>
table, th, td {
	border: 1px solid #9da88d;
}

</style>

</head>
<body>


<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
<c:url var="editFrSupplier" value="/editFrSupplier"></c:url>

<!--datepicker-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script>
		$(function() {
			$("#fromdatepicker").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
		$(function() {
			$("#todatepicker").datepicker({
				dateFormat : 'dd-mm-yy'
			});
		});
	</script>
<!--datepicker-->

<!--topLeft-nav-->
<div class="sidebarOuter"></div>
<!--topLeft-nav-->

<!--wrapper-start-->
<div class="wrapper">

	<!--topHeader-->
	<c:url var="findAddOnRate" value="/getAddOnRate" />
	<c:url var="findItemsByCatId" value="/getFlavourBySpfId" />
	<c:url var="findAllMenus" value="/getAllTypes" />
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


		 
			<div class="sidebarright">
				 
				<form name="frm_search" id="frm_search" method="post"
					action="${pageContext.request.contextPath}/insertSupplier">
					<input type="hidden" name="mod_ser" id="mod_ser"
						value="search_result">
						
						
						<div class="row">
					<div class="col-md-5"><h2 class="pageTitle"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Supplier</h2></div>
					<div class="col-md-7" style="text-align: right;">
					
					<a href="${pageContext.request.contextPath}/showOtherBill"><input type="button" value="Other Purchase Bill" class="btn additem_btn"
					style="margin:0;">
						
										</a>
					</div>
				</div>

					
						
						
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Supplier Name*: </div>
						</div>
						<div class="col-md-3">
							<input id="suppName" class="form-control"
								placeholder="Supplier Name" name="suppName" type="text" autocomplete="off" required>
								<input id="suppId" class="form-control"
								  name="suppId"  type="hidden" >

						</div>
						<div class="col-md-1">
							 
						</div>

						<div class="col-md-2">
							<div class="col1title" align="left">Supplier Address*: </div>
						</div>
						<div class="col-md-3">
							<input id="suppAdd" class="form-control"
								placeholder="Supplier Address" name="suppAdd" type="text"  autocomplete="off" required>

						</div>
					 
					</div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Supplier City*: </div>
						</div>
						<div class="col-md-3">
							<input id="city" class="form-control"
								placeholder="Supplier City" name="city" type="text"  autocomplete="off" required>

						</div>
						<div class="col-md-1">
							 
						</div>

						<div class="col-md-2">
							<div class="col1title" align="left">Is Same State*: </div>
						</div>
						<div class="col-md-3">
							<select class="form-control" data-live-search="true"  title="Please Select" 
							name="isSameState" id="isSameState" required>
							<option value="">Select Option</option>
							<option value="1" selected>Yes</option>
							<option value="2">No</option>
						 </select>

						</div>
				 
					</div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">Mobile No*: </div>
						</div>
						<div class="col-md-3">
							<input id="mob" class="form-control"
								placeholder="Mobile No" name="mob" pattern="^\d{10}$"  autocomplete="off" maxlength="10" type="text" required>

						</div>
						<div class="col-md-1">
							 
						</div>

						<div class="col-md-2">
							<div class="col1title" align="left">E-Mail*: </div>
						</div>
						<div class="col-md-3">
							<input id="email" class="form-control" onblur="validateEmail(this.value)"
								placeholder="Email" name="email" type="email"  autocomplete="off" required>

						</div>
				 
					</div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">GSTN No: </div>
						</div>
						<div class="col-md-3">
							<input id="gstnNo" class="form-control"
								placeholder="GSTN No" name="gstnNo" type="text"  autocomplete="off">

						</div>
						<div class="col-md-1">
							 
						</div>

						<div class="col-md-2">
							<div class="col1title" align="left">Pan No: </div>
						</div>
						<div class="col-md-3">
							<input id="panNo" class="form-control" maxlength="10" style="text-transform: uppercase;"
								placeholder="Pan No" name="panNo" type="text"  autocomplete="off">

						</div>
				 
					</div>
					
					<div class="colOuter">
						<div class="col-md-2">
							<div class="col1title" align="left">FDA Licence*: </div>
						</div>
						<div class="col-md-3">
							<input id="liceNo" class="form-control"
								placeholder="FDA Licence" name="liceNo" type="text"  autocomplete="off" required>

						</div>
						<div class="col-md-1">
							 
						</div>

						<div class="col-md-2">
							<div class="col1title" align="left">Credit Days*: </div>
						</div>
						<div class="col-md-3">
							<input id="creditDays" class="form-control"
								placeholder="Credit Days" name="creditDays"  autocomplete="off" pattern="[+-]?([0-9]*[.])?[0-9]+" type="text" required>

						</div>
				 
					</div> 
					<div class="colOuter">
						<div align="center">
							<input name="submit" class="btn additem_btn" value="Submit"
								type="submit" align="center" id="sub1" style="margin: 0 5px;">
								<!-- <input type="button" class="buttonsaveorder" value="Cancel" id="cancel" onclick="cancel1()" disabled> -->
								<a href="${pageContext.request.contextPath}/showOtherBill"  style="margin: 0 5px;" class="btn additem_btn" id="sub2">Cancel</a>
						</div>
				 
					</div>
					
					<div id="table-scroll"><!--  class="table-scroll"> -->
				<!-- 	<div id="faux-table" class="faux-table" aria="hidden"></div> -->
					<div class="table-wrap">
						<table id="table_grid" class="responsive-table"><!-- class="main-table" -->

							<thead>
								<tr class="bgpink">
								
									<th class="col-sm-1" style="text-align: center;">Sr No</th>
									<th class="col-md-1" style="text-align: center;">Name</th> 
									<th class="col-md-1" style="text-align: center;">Address</th>
									<th class="col-md-1" style="text-align: center;">City</th> 
									<th class="col-md-1" style="text-align: center;">Mobile</th>
									<th class="col-md-1" style="text-align: center;">Email</th>
									<th class="col-md-1" style="text-align: center;">Action</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${supplierList}" var="supplierList"
									varStatus="count">
									<tr>
										 <td class="col-sm-1" style="text-align: right;"><c:out value="${count.index+1}" /></td>
										<td class="col-md-1" style="text-align: left;"><c:out
												value="${supplierList.suppName}" /></td>
										<td class="col-md-1" style="text-align: left;"><c:out
												value="${supplierList.suppAddr}" /></td>
										<td class="col-md-1" style="text-align: left;"><c:out
												value="${supplierList.suppCity}" /></td>
										<td class="col-md-1" style="text-align: left;"><c:out
												value="${supplierList.mobileNo}" /></td>
										<td class="col-md-1" style="text-align: left;"><c:out
												value="${supplierList.email}" /></td>
										<td class="col-md-1" style="text-align: center;"><div >
												<abbr title='Edit'><i onclick="edit(${supplierList.suppId})" class='fa fa-edit'></i> </abbr>
						<a href="${pageContext.request.contextPath}/deleteSupplier/${supplierList.suppId}" onClick="return confirm('Are you sure want to delete this record');"   >
						<abbr title='Delete'><i  class='fa fa-trash'></i></abbr></a>
												 
											</div></td>
									</tr>
								</c:forEach>
						</table>

					</div>
				</div>

				</form>

				 
			</div>
			<!--tabNavigation-->
			<!--<div class="order-btn"><a href="#" class="saveOrder">SAVE ORDER</a></div>-->
			<%-- <div class="order-btn textcenter">
						<a
							href="${pageContext.request.contextPath}/showBillDetailProcess/${billNo}"
							class="buttonsaveorder">VIEW DETAILS</a>
						<!--<input name="" class="buttonsaveorder" value="EXPORT TO EXCEL" type="button">-->
					</div> --%>


		</div>
		<!--rightSidebar-->

	</div>
	<!--fullGrid-->
</div>
<!--rightContainer-->

</div>
<!--wrapper-end-->
<!--easyTabs-->
<!--easyTabs-->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<!--easyTabs-->

<script type="text/javascript">

$('#mob').on('input', function() {
	 this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');
	});
	
$('#creditDays').on('input', function() {
		 this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');
		});
	
function validateEmail(email) {
	var eml = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	if (eml.test($.trim(email)) == false) {
		return false;
	}
	return true;
}


function validatePan(panNo) {
	var pan = /^[A-Z]{5}\d{4}[A-Z]{1}$/;
	if (pan.test($.trim(panNo)) == false) {
		return false;
	}
	return true;
}

$( "form" ).submit(function( event ) {  

	$('#sub1').hide();
	$('#sub2').hide();
	var email = $("#email").val(); 
	var pan = $("#panNo").val();
	
	  if (!validateEmail(email)) {  
		alert("Enter Valid Email");
		 $('#sub1').show();
		 $('#sub2').show();
	    return false;
	    event.preventDefault();  
	   
	  }  
	  
	  if(pan!=''){
	  if(!validatePan(pan)){
		  alert("Enter Valid PAN No.");
		  $('#sub1').show();
		  $('#sub2').show();
		    return false;
		    event.preventDefault();  
		   
		  } 
	}
	 
	  return;	  
	  
	}); 
</script>

<script>
function edit(suppId) {
 
	  
	$('#loader').show();

	$
			.getJSON(
					'${editFrSupplier}',

					{
						 
						suppId : suppId, 
						ajax : 'true'

					},
					function(data) { 
						
						document.getElementById("suppId").value=data.suppId;
						document.getElementById("suppName").value=data.suppName;  
						document.getElementById("suppAdd").value=data.suppAddr;
						document.getElementById("city").value=data.suppCity;
						document.getElementById("mob").value=data.mobileNo;
						document.getElementById("email").value=data.email;
						document.getElementById("gstnNo").value=data.gstnNo;
						document.getElementById("panNo").value=data.panNo;
						document.getElementById("liceNo").value=data.suppFdaLic;
						document.getElementById("creditDays").value=data.suppCreditDays;
						document.getElementById("isSameState").value=data.isSameState; 
						document.getElementById("cancel").disabled=false;
					});

 
	   

}

function cancel1() {

    //alert("cancel");
	document.getElementById("suppId").value="";
	document.getElementById("suppName").value="";  
	document.getElementById("suppAdd").value="";
	document.getElementById("city").value="";
	document.getElementById("mob").value="";
	document.getElementById("email").value="";
	document.getElementById("gstnNo").value="";
	document.getElementById("panNo").value="";
	document.getElementById("liceNo").value="";
	document.getElementById("creditDays").value="";
	document.getElementById("isSameState").value=""; 
	document.getElementById("cancel").disabled=false;
	
}
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

</body>
</html>
