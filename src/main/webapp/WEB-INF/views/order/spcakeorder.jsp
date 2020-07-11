<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate,java.util.*"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
      
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

<title>Monginis</title>
<link href="${pageContext.request.contextPath}/resources/css/monginis.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="${pageContext.request.contextPath}/resources/images/feviconicon.png" type="image/x-icon"/> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>

<!--rightNav-->
   
 
<!--rightNav-->

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.selectlistbox.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menuzord.js"></script>

<script type="text/javascript">
jQuery(document).ready(function(){
 jQuery("#menuzord").menuzord({
		                         align:"left"
	                         });
});
</script>

<style type="text/css">
select {
          width: 130px;
          height: 30px;
}
</style>   

 <script type="text/javascript" src="https://www.google.com/jsapi"></script>
 
 <!---------------Script For Translate Special Instructions------->   
    <script type="text/javascript">
      // Load the Google Transliterate API
      google.load("elements", "1", {
            packages: "transliteration"
          });

      function onLoad() {
        var options = {
            sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
            destinationLanguage:
                [google.elements.transliteration.LanguageCode.HINDI],
            shortcutKey: 'ctrl+g',
            transliterationEnabled: true
        };

        // Create an instance on TransliterationControl with the required
        // options.
        var control =
            new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textbox with id
        // 'transliterateTextarea'.
        control.makeTransliteratable(['transliterateTextarea']);
        
        showCtype();
        
        
        
      }
      google.setOnLoadCallback(onLoad);
    </script>
     <script type="text/javascript">
      // Load the Google Transliterate API
      google.load("elements", "1", {
            packages: "transliteration"
          });

      function onLoad() {
        var options = {
            sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
            destinationLanguage:
                [google.elements.transliteration.LanguageCode.HINDI],
            shortcutKey: 'ctrl+g',
            transliterationEnabled: true
        };

        // Create an instance on TransliterationControl with the required
        // options.
        var control =
            new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textbox with id
        // 'transliterateTextarea'.
        control.makeTransliteratable(['event_name']);
      
        
      }
      google.setOnLoadCallback(onLoad);
    </script>
     <script type="text/javascript">
      // Load the Google Transliterate API
      google.load("elements", "1", {
            packages: "transliteration"
          });

      function onLoad() {
        var options = {
            sourceLanguage:
                google.elements.transliteration.LanguageCode.ENGLISH,
            destinationLanguage:
                [google.elements.transliteration.LanguageCode.GUJARATI],
            shortcutKey: 'ctrl+g',
            transliterationEnabled: true
        };

        // Create an instance on TransliterationControl with the required
        // options.
        var control =
            new google.elements.transliteration.TransliterationControl(options);

        // Enable transliteration in the textbox with id
        // 'transliterateTextarea'.
        control.makeTransliteratable(['event_name_g']);
      
        
      }
      google.setOnLoadCallback(onLoad);
    </script>
 <!--------------------------------END------------------------------------> 
   
      <!--new css added by kalpesh -->
	<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

	<!--new css added by kalpesh -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.css">
	
	<style>
.fileUpload {
     margin: 0px 0px 0px 0px;
    padding-top: 1px;
}
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

.def_customer {
	display: none;
}
	</style>
</head>
<body onload="onLoad()">
<!--topLeft-nav-->
<div class="sidebarOuter"></div>
<!--topLeft-nav-->

<!--wrapper-start-->
<div class="wrapper">

<!--topHeader-->
<c:url var="findAvailableSlot" value="/getAvailableSlot" />
<c:url var="findAddOnRate" value="/getAddOnRate" />
<c:url var="getFlavourBySpfId" value="/getFlavourBySpfId" />

<c:url var="getCustById" value="/getCustById" />
<c:url var="checkEmailText" value="/checkEmailText" />
<c:url var="saveCustomerFromBill" value="/saveCustomerFromBill" />

<jsp:include page="/WEB-INF/views/include/logo.jsp"></jsp:include>



<!--topHeader-->
<!--rightContainer-->
<div class="fullGrid center">
<!--fullGrid-->
<div class="wrapperIn2">
<!--leftNav-->

<jsp:include page="/WEB-INF/views/include/left.jsp">
<jsp:param name="myMenu" value="${menuList}"/>
</jsp:include>


<!--leftNav-->

<!--rightSidebar-->
<div class="sidebarright">
<div class="order-left">
<h2 class="pageTitle">${menuTitle}</h2>

</div>
 <!--formBox-->
<div class="ordercake">
<!--leftForm-->
						<div class="left">
							<form action="${pageContext.request.contextPath}/searchSpCake"
								method="post" class="form-horizontal" name="form" id="searchform"
								>

								<div class="fullform">
									<div class="cackleft2">Item Code</div>
									<div class="cackrighttexbox">
										<input class="texboxitemcode" id="sp_code"
											value="${specialCake.spCode}" name="sp_code" type="text"  
											autocomplete="off" list="categories" required   oninvalid="this.setCustomValidity('Please Enter valid Item Code')">

										<datalist id="categories">
											<c:forEach items="${configuredSpCodeList}"
												var="specialCakeList">
												<option value="${specialCakeList}"></option>
											</c:forEach>
										</datalist>

										<div class="searchrecord">
											<input name="" class="btnsearch" value="" type="submit">
										</div>
									</div>
								</div>
							</form>

							<div class="fullform">
								<div class="cackleft">Name</div>
								<div class="cackright" id="sp_name">
									<span class="cakename">${specialCake.spName}</span>
								</div>
							</div>


							<div class="fullform">
								<div class="cackimg">
									<div class="cackimglable"></div>
									<img src="${url}${specialCake.spImage}"
									 onerror="this.src='${pageContext.request.contextPath}/resources/images/No_Image_Available.jpg';">
								</div>
							</div>


							<div class="fullform">
								<div class="cackleft">Description</div>
								<div class="cackright" id="spDesc">
								<span class="cakename">${specialCake.spDesc}</span>
								</div>
							</div>


							<div class="fullform">
								<div class="cackleft">Min Weight</div>
								<div class="cackright" id="spMinWt">${specialCake.spMinwt}Kg</div>
							</div>


							<div class="fullform">
								<div class="cackleft">Max Weight</div>
								<div class="cackright" id="spMaxWt">${specialCake.spMaxwt}Kg</div>
							</div>


							<div class="fullform">
								<div class="cackleft">Production Time</div>
								<div class="cackright" id="spProTime">${specialCake.spBookb4}Days</div>
							</div>
							
							<c:set var="p" value="${specialCake.spCode}" />
							<div class="fullform">
								<div class="cackleft">Earliest Delivery Date</div>
								<div class="cackright">


									<c:set var="increment" value="${spBookb4}"></c:set>
                                    <c:set var="menuId" value="${menuId}"></c:set>
									<%
										int incr = (int) pageContext.getAttribute("increment");
									    int menuId = (int) pageContext.getAttribute("menuId");
										// Create a Calendar object
										Calendar calendar = Calendar.getInstance();

										// Get current day from calendar
										int day = calendar.get(Calendar.DATE);
										// Get current month from calendar
										int month = calendar.get(Calendar.MONTH) + 1;
										// Get current year from calendar
										int year = calendar.get(Calendar.YEAR);
										calendar.add(Calendar.DATE, incr);

										day = calendar.get(Calendar.DATE);
										month = calendar.get(Calendar.MONTH);
										year = calendar.get(Calendar.YEAR);

										Calendar cal = Calendar.getInstance();
										cal.setTime(new Date()); // Now use today date.
										if(menuId!=68 && menuId!=88){
										cal.add(Calendar.DATE, incr); // Adding 1 days
										}
										Date date = cal.getTime();
										SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

										String fDate = formatter.format(date);
										System.out.println("" + fDate);
										SimpleDateFormat formatter1 = new SimpleDateFormat("dd-MM-yyyy");

										String fDate1 = formatter1.format(date);
									%>
									<%=fDate1 %>
								</div>
							</div>
</div>  
					


<!----------------------------------------Form Start-------------------------------------------------->
<form action="${pageContext.request.contextPath}/orderSpCake"  method="post" class="form-horizontal" name="from_ord" id="validation-form" enctype="multipart/form-data"onsubmit="return validate()">
<input type="hidden" name="menu_title" value="${menuTitle}"> 
<input type="hidden" name="mode_add" id="mode_add" value="add_book">
<input type="hidden" name="sp_id" id="sp_id" value="${specialCake.spId}">
<input type="hidden" name="sp_min_weight" id="sp_min_weight" value="${specialCake.spMinwt}">
<input type="hidden" name="sp_max_weight" id="sp_max_weight" value="${specialCake.spMaxwt}">
<input type="hidden" name="sp_pro_time" id="sp_pro_time" value="${specialCake.spBookb4}">
<input type="hidden" name="sp_est_del_date" id="sp_est_del_date" value="<%= fDate1%>">
<input type="hidden" name="production_time" id="production_time" value="${specialCake.spBookb4} ">
<input type="hidden" name="sp_code" id="sp_code" value="${specialCake.spCode}">
<input type="hidden" name="sp_name" id="sp_name" value="${specialCake.spName}">
<input type="hidden" name="fr_code" id="fr_code" value="4">
<input type="hidden" name="isCustCh" id="isCustCh" value="${specialCake.isCustChoiceCk}">
<input type="hidden" name="prevImage" id="prevImage" value="${specialCake.spImage}">
<input type="hidden" name="isFound" id="isFound" value="${isFound}" onchange="onChangeValue()">
<input type="hidden" name="isCustChoiceCk" id="isCustChoiceCk" value="${specialCake.isCustChoiceCk}">
<input type="hidden" name="spPhoUpload" id="spPhoUpload" value="${specialCake.spPhoupload}">
<input type="hidden" name="isSlotUsed" id="isSlotUsed" value="${specialCake.isSlotUsed}">
<input type="hidden" name="isSameDayApplicable" id="isSameDayApplicable" value="${isSameDayApplicable}">
<input type="hidden" name="slipNo" id="slipNo" value="${slipNo}">
<input type="hidden" name=noOfChars id="noOfChars" value="${specialCake.noOfChars}">

<!--centerForm-->	
 
<div class="center">

	 <div  class="colOuter">
	    <input name="sptype"  id="sptype" value="1" type="hidden">
		<%-- <div class="col1"><div class="col1title">Type</div></div>
		<div class="col2">
         <select name="sptype" tabindex="-1" id="sptype" required>
              <option value="">Select Type</option>
                 <c:set var= "spCakeType" value="${specialCake.spType}"></c:set>
               <c:choose>
                
                   <c:when test="${spCakeType=='1'}"> <option value="1">Chocolate</option>   </c:when> 
                    <c:when test="${spCakeType=='2'}"> <option value="2">FC</option>          </c:when>
                    <c:when test="${spCakeType=='3'}"> <option value="3">BC</option>          </c:when>
                       <c:when test="${spCakeType=='4'}"> 
						<option value="1">Chocolate</option> <option value="2">FC</option> 
                       </c:when>
                        <c:when test="${spCakeType=='5'}"> 
						<option value="1">Chocolate</option> <option value="3">BC</option> 
                       </c:when>
                        <c:when test="${spCakeType=='6'}"> 
						<option value="2">FC</option> <option value="3">BC</option> 
                       </c:when>
                        <c:otherwise>
                     
                        <option value="1">Chocolate</option>
                        <option value="2">FC</option>
                        <option value="3">BC</option>
                     
                </c:otherwise>    
              </c:choose>
              
            </select>
			</div> --%>
			<!-- <div class="col3" > -->
			<c:choose>
			<c:when test="${delFlag==true}">
			 <div class="col1"><div class="col1title">Delivery Menu</div></div><div class="col2">
			<select name="spMenuId" data-placeholder="Menu"  tabindex="-1" id="spMenuId" required>
                  <option value="">Select Menu</option>
                    <c:forEach items="${frMenuList}" var="frMenuList">
                    <c:choose>
                    <c:when test="${menuId==frMenuList.menuId}">
                          <option value="${frMenuList.menuId}" selected><c:out value="${frMenuList.menuTitle}" /></option>
                    
                    </c:when>
                    <c:otherwise>
                                  <option value="${frMenuList.menuId}"><c:out value="${frMenuList.menuTitle}" /></option>
                    </c:otherwise>
                    </c:choose>
             </c:forEach>
                 </select></div>
			</c:when>
			<c:otherwise>
			<input type="hidden" name="spMenuId" id="spMenuId" value="${menuId}"/>
			</c:otherwise>
			</c:choose>
                
      <!--   </div> -->
	</div>
	
    <div class="colOuter">
		<div class="col1"><div class="col1title">Flavour</div></div>
		<div class="col2full" >
                <select name="spFlavour"  tabindex="-1"  onchange="onChangeFlavour()"id="spFlavour" required>
                  <option value="">Select Flavour</option>
                   <c:forEach items="${flavoursList}" var="flavoursList">
                     <option value="${flavoursList.spfId}">${flavoursList.spfName}</option>
                   </c:forEach>
                  
                 </select>
        </div>
	</div>  
		  
	<div class="colOuter">
		<div class="col1"><div class="col1title">Weight</div></div>
		<div class="col2">
		      <c:set var = "dbRate" scope = "session" value = "${sprRate}"/>
		      <input type="hidden" name="dbRate" id="dbRate" value="0"> <%-- ${sprRate} --%>
		          <input type="hidden" name="spBackendRate" id="spBackendRate" value=""><%-- ${spBackendRate} --%>
		 
          <select name="spwt" id="spwt" onchange="onChange()"required>
            <c:forEach items="${weightList}" var="weightList">
                  <option value="${weightList}">${weightList}</option>
            </c:forEach> 
           
          </select>
			<div class="err" style="display:none;">Please Enter Weight</div>
		</div>
    </div>
	
	         
	<div class="colOuter">
		<div class="col1"><div class="col1title">Message </div></div>
		<div class="col2"><select name="sp_event" id="sp_event"required>
  
              <c:forEach items="${eventList}" var="eventList">
              <option value="${eventList.spMsgText}"><c:out value="${eventList.spMsgText}" /></option>
             </c:forEach>
            </select></div>
		
	</div><div class="colOuter">
		<div class="col1"><div class="col1title">MSG Name</div></div>
		<div class="col2">  <select id="show" class="form-control" name="text1" onchange="showDiv1(this)" required>
                            <!--   <option value="1" id="marathi" >GUJARATI</option> -->
                              <option value="2" id="hindi" >Hindi</option>
                              <option value="3" id="english" selected>English</option>
                       </select></div>
                       <div class="col3" id="msgGujrati" style="display: none"><input class="texboxitemcode" placeholder="Name" name="event_name2" type="text" id="event_name_g" autocomplete="off">
				</div> 
 						<div class="col3" id="msgMarathi" style="display: none"><input class="texboxitemcode" placeholder="Name" name="event_name" type="text" id="event_name" autocomplete="off">
			</div> 
						<div class="col3" id="msgEnglish" ><input class="texboxitemcode" placeholder="Name" name="event_name1" type="text" id="event_name_e" autocomplete="off">
		</div>
		</div>
<c:choose>
<c:when test="${specialCake.isCustChoiceCk=='1'}">
		
	      <div class="colOuter">
	         <div class="col1"><div class="col1title">Photo Cake1</div></div>
	    	   <div class="col2full"><div class="editimg">
	    	     <div class="editpics">
	    	        <div class="fileUpload">
                                <span> <i class="fa fa-pencil"></i></span>
                                <input class="upload" type="file" id="order_photo" name="order_photo"/>
                                
                            </div>
                            </div>
                             <img id="image" />
                            </div>
                            </div>
                            </div>
	      <div class="colOuter">
	        <div class="col1"><div class="col1title">Photo Cake2</div></div>
	    	  <div class="col2full"><div class="editimg">
	    	    <div class="editpics">
	    	        <div class="fileUpload">
                                <span> <i class="fa fa-pencil"></i></span>
                                <input class="upload" type="file" id="cust_choice_ck" name="cust_choice_ck"/>   
                            </div>
                            </div>
                             <img id="img" />
                            </div>
                            </div>
                            </div>
	
	
   </c:when>
   <c:when test="${specialCake.spPhoupload=='1'}">
	
	  <div class="colOuter">
	      <div class="col1"><div class="col1title">Photo Cake</div></div>
	    	 <div class="col2full">
	    	  <div class="editimg">
	    	    <div class="editpics">
	    	        <div class="fileUpload">
                                <span> <i class="fa fa-pencil"></i></span>
                                <input class="upload" type="file" id="order_photo" name="order_photo"/>
                                
                     </div>
                 </div>
                 <img id="image" />
              </div>
          </div>
        </div>
	
	</c:when>
</c:choose> 

       <div class="colOuter">
		<div class="col1"><div class="col1title">Special Instructions</div></div>
        <div class="col2full">
                      <select id="show" class="form-control" name="showtextarea" onchange="showDiv(this)" required>
                           <!--    <option value="1" id="marathi" >Marathi</option>-->
                            
                              <option value="3" id="english" selected>English</option>
                                <option value="2" id="hindi" >Hindi</option> 
                       </select>
        </div>
        </div>
     
     <div class="colOuter">
	    <div class="col1"><div class="col1title">Special Instructions</div></div>
		
		<div class="col1full" id="marathiDiv" style="display: none;">
		<textarea id="transliterateTextarea"  name="sp_inst1" cols="" rows="" style="width:250px;height:60px"maxlength="300" autocomplete="off" ></textarea>
		</div>
		
	    <div class="col1full" id="englishDiv" >
	    <textarea id="textarea"  name="sp_inst2"   cols="" rows="" style="width:250px;height:60px"maxlength="300" autocomplete="off"></textarea>
	    </div>
	</div>
	
	<div class="colOuter">
		<div class="col1"><div class="col1title">Delivery Date</div></div>
		<div class="col2"><c:choose><c:when test="${menuId==68 || menuId==88}">
			<input id="date" class="texboxitemcode texboxcal" value="<%=fDate %>"  name="datepicker" type="text" readonly>
			<input id="datepicker" class="texboxitemcode texboxcal" value="<%=fDate %>"  name="datepicker" type="hidden" />

		</c:when>
		<c:otherwise>
		<input id="datepicker" class="texboxitemcode texboxcal"  autocomplete="off" value="<%=fDate %>"  name="datepicker" type="text" required>
		</c:otherwise>
		</c:choose>
		</div><div class="col2"> 
        <c:if test = "${specialCake.isSlotUsed=='1'}"> <span class="cakename"id="slotUsedSpan">Check Slots availability</span> </c:if></div>
	<!-- </div>
	
	
	<div class="colOuter"> 
		<div class="col1"><div class="col1title">Order No:</div></div>-->
		<div class="col2"><input class="texboxitemcode" placeholder="Order No" name="sp_place" id="sp_place" type="text" value="${spNo}" readonly></div>
	</div>    
	
	
	<div class="colOuter">
		<div class="col2"><input id="datepicker3" class="texboxitemcode texboxcal" placeholder="<%=fDate %>" name="datepicker3" type="hidden"required>
		</div>
	</div>
	
	
	<div class="colOuter">
	    <div class="col1"><div class="col1title">Customer Name</div></div>
		<div class="col2full">
		<select id="sp_cust_id" class="form-control chosen-select" name="sp_cust_id" onchange="showEmpInfo(this.value)" required style="width: 80%;">
			  <option>Select Customer</option>	
			  	<c:forEach items="${customerList}" var="customerList">
							
					<option value="${customerList.custId}"style="text-align: left;">
					${customerList.custName} &nbsp;${customerList.phoneNumber}</option>	
					
				</c:forEach>
			  </select>
			  <button class="plus_btn addcust_open" type="button"
						onclick="openNewCustPopUp()">
				<i class="fa fa-plus" aria-hidden="true"></i>
			</button>
		 <input class="texboxitemcode texboxcal2" autocomplete="off" placeholder="Customer Name" name="sp_cust_name" type="hidden" id="sp_cust_name" >
	</div>
<%-- 		<div class="col3"><input id="datepicker4" class="texboxitemcode texboxcal" placeholder="<%=fDate %>" name="datepicker4" type="text"required></div>
 --%>	
 </div>
 
 
	<div class="colOuter">
	<div class="col1"><div class="col1title">DOB</div></div>
		
		<div class="col2full"><input id="dob" class="texboxitemcode texboxcal" autocomplete="off" placeholder="<%=fDate %>" name="dob" type="text"required></div>
      </div>
	<div class="colOuter">
			<div class="col1"><div class="col1title">Mobile</div></div>
	
			<div class="col2full"><input class="texboxitemcode" placeholder="Mobile No."  name="sp_cust_mobile_no" type="text" id="sp_cust_mobile_no" maxlength="10"  required autocomplete="off"></div>
	
	</div>
	
	<div class="colOuter" id="ctype1">
			<div class="col1"><div class="col1title" id="cktype">Cake Type</div></div>
	
			<div class="col2full"><input class="texboxitemcode" placeholder="Cake Type"   name="ctype" type="text" id="ctype" required autocomplete="off"></div>
	
	</div>
	<div class="colOuter" >
			<div class="col1"><div class="col1title" id="cktype">Email</div></div>
	
			<div class="col2full"><input class="texboxitemcode" placeholder="Email" name="email_id" type="text" id="email_id" required autocomplete="off"></div>
	
	</div>
	<div class="colOuter" >
			<div class="col1"><div class="col1title" id="cktype">GST NO.</div></div>
	
			<div class="col2full"><input class="texboxitemcode"  placeholder="GST NO." name="gstin" type="text" id="gstin" maxlength="35" required autocomplete="off"></div>
	
	</div>
<!-- 	<div class="colOuter">
			<div class="col1"><div class="col1title">Cake Type1</div></div>
	
			<div class="col2full"><input class="texboxitemcode"  name="ctype1" type="text" id="ctype1" required ></div>
	
	</div>
	 -->
	
	<div class="colOuter">
			<div class="col1"><div class="col1title"></div></div>
	
			<div class="col2full"><input class="texboxitemcode"  name="temp" type="hidden" id="temp" value="${cutSec}" required ></div>
	
	</div>
	 <span class="cakename"id="slotsNotAvailable"></span>
	
	<div class="colOuter">
		<div class="col1"><input class="texboxitemcode texboxcal2" placeholder="Booked For" name="sp_booked_for_name" value="1" type="hidden"id="sp_booked_for_name"></div>
		<div class="col2"><input id="datepicker5" class="texboxitemcode texboxcal" placeholder="<%=fDate %>" name="datepicker5" type="hidden"></div>
		<div class="col3"><input class="texboxitemcode" placeholder="Mobile No." name="sp_book_for_number" type="hidden"id="sp_book_for_number"></div>
	</div>
	
	
<div class="cackleft" id="error"><span class="cakename">
<c:if test="${not empty errorMessage}">
<h3><c:out value="${errorMessage}"/></h3>
</c:if></span>
</div>
</div>

<!--centerForm-->
	
<!--rightForm-->	
<div class="right">
	<div class="priceBox">
		<h2 class="inrbox" id="INR">INR - 0.0<%-- ${(sprRate*specialCake.spMinwt)} --%></h2>
		 <input type="hidden" name="sp_grand" id="sp_grand" value="0">   <%-- ${(sprRate*specialCake.spMinwt)} --%>
		<div class="inrboxmiddle">
			<ul>
				<li>
					<div class="priceLeft">Type </div>
					<div class="priceRight"><span>Premium</span></div>
				</li>
				<li>
					<div class="priceLeft">Price </div>
					<div class="priceRight" id="price">0<%-- ${sprRate*specialCake.spMinwt} --%></div>
					<input name="sp_calc_price" id="sp_calc_price" value="0" type="hidden"><%-- ${sprRate*specialCake.spMinwt} --%>
				</li>
				<li>
					<div class="priceLeft">Add Rate </div>
					<div class="priceRight"  id="rate" >00</div>
					 <input name="sp_add_rate" id="sp_add_rate"  type="hidden" value="0">
				</li>
				
				<li>
					<div class="priceLeft">Extra Charges </div>
					<div class="priceRight"><input name="sp_ex_charges" id="sp_ex_charges"  type="text"  value="0" oninput="chChange()"  style="width:75px;border-radius:20px;text-align:center;height: 27px;"></div>
				</li>
				<li>
					<div class="priceLeft">Discount(%) </div>
					<div class="priceRight"><input name="sp_disc" id="sp_disc"  type="text"  value="0"  oninput="chChange()" style="width:75px;border-radius:20px;text-align:center;height: 27px;"></div>
				</li>
				<li>
					<div class="priceLeft">Discount(Rs) </div>
					<div class="priceRight"><input name="sp_disc_rs" id="sp_disc_rs"  type="text"  value="0"  oninput="onChangeDiscRs()" style="width:75px;border-radius:20px;text-align:center;height: 27px;"></div>
				</li>
				<li>
					<div class="priceLeft">Sub Total </div>
					<div class="priceRight"id="subtotal">0<%-- ${sprRate*specialCake.spMinwt} --%></div>
					<input name="sp_sub_total" id="sp_sub_total"  type="hidden"value="0"> <%-- ${sprRate*specialCake.spMinwt} --%>
				</li>
				<li>
					<div class="priceLeft">GST (%)</div>
					<div class="priceRight" id="taxPer3"> ${specialCake.spTax1+specialCake.spTax2} </div>
					<input type="hidden" id="tax3" name="tax3" value="${specialCake.spTax1+specialCake.spTax2}">
				</li>
				<li>
					<div class="priceLeft">GST IN RS.</div>
					<c:set var="varGstRs" value="${(((sprRate*specialCake.spMinwt)*100)/((specialCake.spTax1+specialCake.spTax2)+100))*(specialCake.spTax1+specialCake.spTax2)/100}" />  
					<fmt:formatNumber var="fGstRs" minFractionDigits="2" maxFractionDigits="2" type="number" value="${varGstRs}" />  
					
					<div class="priceRight" id="gstrs">0<%-- <c:out value="${fGstRs}" /> --%></div>
					<input type="hidden" id="gst_rs" name="gst_rs" value="0"><%-- ${fGstRs} --%>
				</li>
				<li class="total">
				<c:set var="varMgstamt" value="${(((sprRate*specialCake.spMinwt)*100)/((specialCake.spTax1+specialCake.spTax2)+100))}"/>
					<fmt:formatNumber var="fMgstamt" minFractionDigits="2" maxFractionDigits="2" type="number" value="${varMgstamt}" />  
					
					<div class="priceLeft" id="mgstamt">AMT- 0.0<%-- <c:out value="${fMgstamt}"></c:out> --%></div>
					
				   <input type="hidden" name="m_gst_amt" id="m_gst_amt" type="hidden" value="0"> <%-- ${fMgstamt} --%>
				
					<div class="priceRight"id="tot">TOTAL- 0.0</div> <%-- ${(sprRate*specialCake.spMinwt)} --%>
					
					 <input type="hidden" name="total_amt" id="total_amt" value="0.0"> <%-- ${(sprRate*specialCake.spMinwt)} --%>
				</li>
				
				<li class="advance">
					<div class="priceLeft">Advance</div>
					<div class="priceRight"><input name="adv" id="adv" value="0" class="tableInput" type="text" onkeyup="advanceFun()"></div>
					
				</li>
			</ul>
		</div>
		<div class="remainamount">
			<div class="priceLeft">Remaining Amount</div>
					<div class="priceRight" id="rmAmt">0<%-- ${(sprRate*specialCake.spMinwt)} --%></div>
				    <input type="hidden" name="rm_amount" id="rm_amount" value="0"> <%-- ${(sprRate*specialCake.spMinwt)} --%>
		</div>
	</div>
	
	<div class="order-btn">
		<input name="" class="btnSubmit" value="SUBMIT"  type="button" id="click" >
		<input name="" class="btnReset" value="RESET" type="hidden">
	</div>
	
</div>
<input type="hidden" id="tax1" name="tax1" value="${specialCake.spTax1}">
<input type="hidden" id="tax2" name="tax2" value="${specialCake.spTax2}">


<c:if test="${specialCake.spTax1==0 or specialCake.spTax1==0.00}">
<input type="hidden" id="t1amt" name="t1amt" value="0.0">
</c:if>
<c:if test="${specialCake.spTax1!=0 or specialCake.spTax1!=0.00}">
<input type="hidden" id="t1amt" name="t1amt" value="0"><%-- ${(sprRate*specialCake.spMinwt)*(specialCake.spTax1)/100} --%>

</c:if>
<c:if test="${specialCake.spTax2==0 or specialCake.spTax2!=0.00}">
<input type="hidden" id="t2amt" name="t2amt" value="0.0">
</c:if>
<c:if test="${specialCake.spTax2!=0 or specialCake.spTax2!=0.00}">
<input type="hidden" id="t2amt" name="t2amt" value="0"> <%-- ${(sprRate*specialCake.spMinwt)*(specialCake.spTax2)/100} --%>

</c:if>

<input type="hidden" id="dbAdonRate" name="dbAdonRate">
 <input type="hidden" id="dbPrice" name="dbPrice"  value="0"> <%-- ${sprRate} --%>
<input type="hidden" id="sp_id" name="sp_id"  value="${specialCake.spId}">
</form>
<!--rightForm-->


<!--formBox-->

 
		
</div>
<!--rightSidebar-->

</div>
<!--fullGrid-->
</div>
<!--rightContainer-->

</div>

<script>
$( function() {
    $( "#dob" ).datepicker({ dateFormat: 'dd-mm-yy' });
  } );
$('#sp_ex_charges').on('input', function() {
	  this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');
	});
	
$('#sp_disc').on('input', function() {
	  this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');
	});
	
$('#sp_disc_rs').on('input', function() {
	  this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');
	});
	
$('#adv').on('input', function() {
	  this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');
	});
	
$('#sp_cust_mobile_no').on('input', function() {
	  this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');
	});
	
$(function() {
    $('#sp_code').change(function(){
        $('.col').hide();
        $('#' + $(this).val()).show();
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

<!------------------------GETTING FLAVOURS BY SELECTED FLAVOUR TYPE---------------------------->	
<!-- <script type="text/javascript">
$(document).ready(function() { 
	$('#sptype').change(
			function() {
				$.getJSON('${getFlavourBySpfId}', {
					spType : $(this).val(),
					ajax : 'true'
				}, function(data) {
					var html = '<option value="">Flavour</option>';
					
					var len = data.length;
					
					for ( var i = 0; i < len; i++) {
						html += '<option value="' + data[i].spfId + '">'
								+ data[i].spfName + '</option>';
					}
					html += '</option>';
					$('#spFlavour').html(html);
					$('#spFlavour').form-control('refresh');

				});
			});
});
</script> -->
<!------------------------------------------------END------------------------------------------------>	
<!------------------------CALLING FUNCTION WHEN WEIGHT CHANGE---------------------------------------->	

<script type="text/javascript">
		function onChange() {
			var dbRate=$("#dbRate").val();
			var wt = $('#spwt').find(":selected").text();
			var flavourAdonRate =$("#dbAdonRate").val();
			var tax3 = parseFloat($("#tax3").val());
			var tax1 = parseFloat($("#tax1").val());
			var tax2 = parseFloat($("#tax2").val());
			var sp_ex_charges= parseFloat($("#sp_ex_charges").val());
			var sp_disc=parseFloat($("#sp_disc").val());
			//alert("tax1:"+tax1+"tax2"+tax2+"tax3"+tax3);
			document.getElementById("adv").value=0;
			
			var totalCakeRate = wt*dbRate;
			var totalFlavourAddonRate = wt*flavourAdonRate;
		    var add=parseFloat(totalCakeRate+totalFlavourAddonRate);
		    var grandTotal=parseFloat(add);
		    var spSubtotal=add+sp_ex_charges;
//alert("with sp_ex_charges"+spSubtotal);
			
			
			var disc_amt=(spSubtotal*sp_disc)/100;
			//alert("disc_amt"+disc_amt);
			
			spSubtotal=spSubtotal-disc_amt;
			//alert("final "+spSubtotal);
			var mrpBaseRate=parseFloat((spSubtotal*100)/(tax3+100));
			
			var gstInRs=0;
			var taxPerPerc1=0;
			var taxPerPerc2=0;
			var tax1Amt=0;
			var tax2Amt=0;
			if(tax3==0)
				{
				    gstInRs=0;
				
				}
		    else
			{
			   gstInRs=(mrpBaseRate*tax3)/100;
				
			   if(tax1==0)
				{
				   taxPerPerc1=0;
				}
			   else
				{
				    taxPerPerc1=parseFloat((tax1*100)/tax3);
				    tax1Amt=parseFloat((gstInRs*taxPerPerc1)/100);

				}
			   if(tax2==0)
				{
				   taxPerPerc2=0;
				}
			   else
				{
					taxPerPerc2=parseFloat((tax2*100)/tax3);
					tax2Amt=parseFloat((gstInRs*taxPerPerc2)/100);

				}
			}
			
			 document.getElementById("sp_disc_rs").value=disc_amt.toFixed(2);//new

			$('#gstrs').html(gstInRs.toFixed(2));  document.getElementById("gst_rs").setAttribute('value',gstInRs.toFixed(2));

			var mGstAmt=mrpBaseRate;
			$('#mgstamt').html('AMT-'+mGstAmt.toFixed(2));  document.getElementById("m_gst_amt").setAttribute('value',mGstAmt.toFixed(2));
			
			$('#price').html(wt*dbRate);
			
			document.getElementById("sp_calc_price").setAttribute('value',wt*dbRate);
		
			$('#rate').html(wt*flavourAdonRate);	
			document.getElementById("sp_add_rate").setAttribute('value',wt*flavourAdonRate);
			$('#subtotal').html(spSubtotal.toFixed(2));	
			document.getElementById("sp_sub_total").setAttribute('value',spSubtotal.toFixed(2));
			
			$('#INR').html('INR-'+spSubtotal.toFixed(2));
			document.getElementById("sp_grand").setAttribute('value',spSubtotal.toFixed(2));
			$('#tot').html('TOTAL-'+spSubtotal.toFixed(2));
			document.getElementById("total_amt").setAttribute('value',spSubtotal.toFixed(2));
			$('#rmAmt').html(spSubtotal.toFixed(2));
			document.getElementById("rm_amount").setAttribute('value',spSubtotal.toFixed(2));
			
			document.getElementById("t1amt").setAttribute('value',tax1Amt.toFixed(2));
			
			document.getElementById("t2amt").setAttribute('value',tax2Amt.toFixed(2));
			
	}</script> 
<!------------------------------------------------END------------------------------------------------>	
<!------------------------CALLING FUNCTION WHEN FLAVOUR CHANGE FOR GETTING ADDON RATE---------------->		
<script type="text/javascript">
$(document).ready(function() { 
	$('#spFlavour').change(
			function() {
				var spId=document.getElementById("sp_id").value;
				$.getJSON('${findAddOnRate}', {
					spId:spId,
					spfId : $(this).val(),
					ajax : 'true'
				}, function(data) {
					 $('#rate').empty();	
					 $("#dbAdonRate").val(0);//data.spfAdonRate
					$("#rate").html(data.mrp);
					document.getElementById("dbPrice").value=data.mrp;//new
					document.getElementById("dbRate").value=data.mrp;//new
					document.getElementById("spBackendRate").value=data.rate;//new
				     var wt=$('#spwt').find(":selected").text();
                     var tax3 = parseFloat($("#tax3").val());
					 var tax1 = parseFloat($("#tax1").val());
					 var tax2 = parseFloat($("#tax2").val());
				
					document.getElementById("sp_add_rate").setAttribute('value',0);//data.spfAdonRate
				
					document.getElementById("adv").value=0;
					
					
					var flavourAdonRate =0;//data.spfAdonRate;
					
					
					var sp_ex_charges= parseFloat($("#sp_ex_charges").val());
					
					var sp_disc=parseFloat($("#sp_disc").val());
					
					var price = data.mrp;//$("#dbPrice").val();
				
					var totalFlavourAddonRate= wt*flavourAdonRate;
					
					 var totalCakeRate= wt*price;
					 var totalAmount=parseFloat(totalCakeRate+totalFlavourAddonRate)+sp_ex_charges;
					 
					 var disc_amt=(totalAmount*sp_disc)/100;
					 totalAmount=totalAmount-disc_amt;
					 var mrpBaseRate=parseFloat((totalAmount*100)/(tax3+100));
				   
						var gstInRs=0;
						var taxPerPerc1=0;
						var taxPerPerc2=0;
						var tax1Amt=0;
						var tax2Amt=0;
						if(tax3==0)
							{
							    gstInRs=0;
							
							}
					    else
						{
						   gstInRs=(mrpBaseRate*tax3)/100;
							
						   if(tax1==0)
							{
							   taxPerPerc1=0;
							}
						   else
							{
							    taxPerPerc1=parseFloat((tax1*100)/tax3);
							    tax1Amt=parseFloat((gstInRs*taxPerPerc1)/100);

							}
						   if(tax2==0)
							{
							   taxPerPerc2=0;
							}
						   else
							{
								taxPerPerc2=parseFloat((tax2*100)/tax3);
								tax2Amt=parseFloat((gstInRs*taxPerPerc2)/100);

							}
						}
						
					  var grandTotal=parseFloat(totalCakeRate+totalFlavourAddonRate);
					  document.getElementById("sp_disc_rs").value=disc_amt.toFixed(2);//new
					    $('#price').html(totalCakeRate);
					    document.getElementById("sp_calc_price").setAttribute('value',totalCakeRate);
					    
						$('#rate').html(totalFlavourAddonRate);$('#sp_add_rate').html(totalFlavourAddonRate);
						document.getElementById("sp_add_rate").setAttribute('value',totalFlavourAddonRate);
						$('#subtotal').html(totalAmount.toFixed(2));
						
						document.getElementById("sp_sub_total").setAttribute('value', totalAmount.toFixed(2));
						$('#INR').html('INR-'+ totalAmount.toFixed(2));
						document.getElementById("sp_grand").setAttribute('value', totalAmount.toFixed(2));
						$('#tot').html('TOTAL-'+ totalAmount.toFixed(2));
						document.getElementById("total_amt").setAttribute('value', totalAmount.toFixed(2));
						$('#rmAmt').html(totalAmount.toFixed(2));
						document.getElementById("rm_amount").setAttribute('value', totalAmount.toFixed(2));
						
						document.getElementById("t1amt").setAttribute('value',tax1Amt.toFixed(2));
						
						document.getElementById("t2amt").setAttribute('value',tax2Amt.toFixed(2));
						
						$('#gstrs').html(gstInRs.toFixed(2)); 
						document.getElementById("gst_rs").setAttribute('value',gstInRs.toFixed(2));
						$('#mgstamt').html('AMT-'+mrpBaseRate.toFixed(2)); 
						document.getElementById("m_gst_amt").setAttribute('value',mrpBaseRate.toFixed(2));
						
				});
			});
});
</script>
<script>

function onChangeDiscRs() {
	var disc_amt=parseFloat($("#sp_disc_rs").val());
	var gtotal =parseFloat($("#total_amt").val());
	
if(disc_amt>0 && !isNaN(disc_amt)){
if(gtotal<disc_amt){
	document.getElementById("sp_disc").value=0;
	chChange();
		alert("Please enter valid discount amount.")
		document.getElementById("sp_disc_rs").value=0;
	}else{ 
	var wt = $('#spwt').find(":selected").text();
	var flavourAdonRate =$("#dbAdonRate").val();
	var tax3 = parseFloat($("#tax3").val());
	var tax1 = parseFloat($("#tax1").val());
	var tax2 = parseFloat($("#tax2").val());
	document.getElementById("adv").value=0;
	var sp_ex_charges= parseFloat($("#sp_ex_charges").val());
	//alert("sp_ex_charges"+sp_ex_charges);
	//alert("sp_disc"+sp_disc);
	var dbRate = $("#dbPrice").val();//dbRate
	//alert("tax1:"+tax1+"tax2"+tax2+"tax3"+tax3);
	
	
	var totalCakeRate = wt*dbRate;
	var totalFlavourAddonRate = wt*flavourAdonRate;
    var add=parseFloat(totalCakeRate+totalFlavourAddonRate);
    var grandTotal=parseFloat(add);
    //alert("without sp_ex_charges"+add);
	var spSubtotal=add+sp_ex_charges;
	//alert("with sp_ex_charges"+spSubtotal);
	document.getElementById("adv").value=0;
	//alert("disc_amt"+disc_amt);
	var discPer=disc_amt/(spSubtotal/100);
	//alert("final "+spSubtotal);
	spSubtotal=spSubtotal-disc_amt;
	
	var mrpBaseRate=parseFloat((spSubtotal*100)/(tax3+100));
	
	var gstInRs=0;
	var taxPerPerc1=0;
	var taxPerPerc2=0;
	var tax1Amt=0;
	var tax2Amt=0;
	if(tax3==0)
		{
		    gstInRs=0;
		
		}
    else
	{
	   gstInRs=(mrpBaseRate*tax3)/100;
		
	   if(tax1==0)
		{
		   taxPerPerc1=0;
		}
	   else
		{
		    taxPerPerc1=parseFloat((tax1*100)/tax3);
		    tax1Amt=parseFloat((gstInRs*taxPerPerc1)/100);

		}
	   if(tax2==0)
		{
		   taxPerPerc2=0;
		}
	   else
		{
			taxPerPerc2=parseFloat((tax2*100)/tax3);
			tax2Amt=parseFloat((gstInRs*taxPerPerc2)/100);

		}
	}
	
 
	document.getElementById("sp_disc").value=discPer.toFixed(2);//new
	$('#gstrs').html(gstInRs.toFixed(2));  document.getElementById("gst_rs").setAttribute('value',gstInRs.toFixed(2));

	var mGstAmt=mrpBaseRate;
	$('#mgstamt').html('AMT-'+mGstAmt.toFixed(2));  document.getElementById("m_gst_amt").setAttribute('value',mGstAmt.toFixed(2));
	
	$('#price').html(wt*dbRate);
	document.getElementById("sp_calc_price").value=wt*dbRate;
	$('#rate').html(wt*flavourAdonRate);	
	document.getElementById("sp_add_rate").setAttribute('value',wt*flavourAdonRate);
	//$('#subtotal').html(grandTotal);	
	
	$('#subtotal').html(spSubtotal.toFixed(2));	
	/* document.getElementById("sp_sub_total").setAttribute('value',add); */
	document.getElementById("sp_sub_total").setAttribute('value',spSubtotal.toFixed(2));
	
	$('#INR').html('INR-'+spSubtotal.toFixed(2));
	document.getElementById("sp_grand").setAttribute('value',spSubtotal.toFixed(2));
	$('#tot').html('TOTAL-'+spSubtotal.toFixed(2));
	document.getElementById("total_amt").setAttribute('value',spSubtotal.toFixed(2));
	$('#rmAmt').html(spSubtotal.toFixed(2));
	document.getElementById("rm_amount").setAttribute('value',spSubtotal.toFixed(2));
	
	document.getElementById("t1amt").setAttribute('value',tax1Amt.toFixed(2));
	
	document.getElementById("t2amt").setAttribute('value',tax2Amt.toFixed(2));
	}
}
}

</script>

<script>

function chChange() {
	var sp_ex_charges= parseFloat($("#sp_ex_charges").val());
	if(sp_ex_charges>=0 && !isNaN(sp_ex_charges)){
	var wt = $('#spwt').find(":selected").text();
	var flavourAdonRate =$("#dbAdonRate").val();
	var tax3 = parseFloat($("#tax3").val());
	var tax1 = parseFloat($("#tax1").val());
	var tax2 = parseFloat($("#tax2").val());
	document.getElementById("adv").value=0;
	
	//alert("sp_ex_charges"+sp_ex_charges);
	var sp_disc=parseFloat($("#sp_disc").val());
	//alert("sp_disc"+sp_disc);
	var dbRate = $("#dbPrice").val();//dbRate
	//alert("tax1:"+tax1+"tax2"+tax2+"tax3"+tax3);
	
	
	var totalCakeRate = wt*dbRate;
	var totalFlavourAddonRate = wt*flavourAdonRate;
    var add=parseFloat(totalCakeRate+totalFlavourAddonRate);
    var grandTotal=parseFloat(add);
    //alert("without sp_ex_charges"+add);
	var spSubtotal=add+sp_ex_charges;
	//alert("with sp_ex_charges"+spSubtotal);
	document.getElementById("adv").value=0;
	
	var disc_amt=(spSubtotal*sp_disc)/100;
	//alert("disc_amt"+disc_amt);
	
	spSubtotal=spSubtotal-disc_amt;
	
	
	//alert("final "+spSubtotal);
	
	
	var mrpBaseRate=parseFloat((spSubtotal*100)/(tax3+100));
	
	var gstInRs=0;
	var taxPerPerc1=0;
	var taxPerPerc2=0;
	var tax1Amt=0;
	var tax2Amt=0;
	if(tax3==0)
		{
		    gstInRs=0;
		
		}
    else
	{
	   gstInRs=(mrpBaseRate*tax3)/100;
		
	   if(tax1==0)
		{
		   taxPerPerc1=0;
		}
	   else
		{
		    taxPerPerc1=parseFloat((tax1*100)/tax3);
		    tax1Amt=parseFloat((gstInRs*taxPerPerc1)/100);

		}
	   if(tax2==0)
		{
		   taxPerPerc2=0;
		}
	   else
		{
			taxPerPerc2=parseFloat((tax2*100)/tax3);
			tax2Amt=parseFloat((gstInRs*taxPerPerc2)/100);

		}
	}
	
 
	  document.getElementById("sp_disc_rs").value=disc_amt.toFixed(2);//new
	$('#gstrs').html(gstInRs.toFixed(2));  document.getElementById("gst_rs").setAttribute('value',gstInRs.toFixed(2));

	var mGstAmt=mrpBaseRate;
	$('#mgstamt').html('AMT-'+mGstAmt.toFixed(2));  document.getElementById("m_gst_amt").setAttribute('value',mGstAmt.toFixed(2));
	
	$('#price').html(wt*dbRate);
	document.getElementById("sp_calc_price").value=wt*dbRate;
	$('#rate').html(wt*flavourAdonRate);	
	document.getElementById("sp_add_rate").setAttribute('value',wt*flavourAdonRate);
	//$('#subtotal').html(grandTotal);	
	
	$('#subtotal').html(spSubtotal.toFixed(2));	
	/* document.getElementById("sp_sub_total").setAttribute('value',add); */
	document.getElementById("sp_sub_total").setAttribute('value',spSubtotal.toFixed(2));
	
	$('#INR').html('INR-'+spSubtotal.toFixed(2));
	document.getElementById("sp_grand").setAttribute('value',spSubtotal.toFixed(2));
	$('#tot').html('TOTAL-'+spSubtotal.toFixed(2));
	document.getElementById("total_amt").setAttribute('value',spSubtotal.toFixed(2));
	$('#rmAmt').html(spSubtotal.toFixed(2));
	document.getElementById("rm_amount").setAttribute('value',spSubtotal.toFixed(2));
	
	document.getElementById("t1amt").setAttribute('value',tax1Amt.toFixed(2));
	
	document.getElementById("t2amt").setAttribute('value',tax2Amt.toFixed(2));
	
}
}

</script>

<!------------------------------------------------END------------------------------------------------>	
<!------------------------------------REMAINING AMOUNT ONKEYUP FUNCTION------------------------------>	
<script type="text/javascript">
function advanceFun() {
	
	var advance=parseFloat($("#adv").val());
	var rmamt =parseFloat($("#total_amt").val());
	var rTot = 0;
	if(rmamt<advance){
		document.getElementById("adv").value=0;
		advanceFun();
	}else{		
		rTot = rmamt-advance;
		$('#rmAmt').html(rTot);
		document.getElementById("rm_amount").setAttribute('value',rTot);		
	}
}
</script>
<!------------------------------------------------END------------------------------------------------>
<!------------------------------BLANK VALIDATION FOR SPCODE------------------------------------------>	
	
<script type="text/javascript">
function validateForm() {
    var spCode = document.forms["form"]["sp_code"].value;
    if (spCode == "") {
        alert("Special Cake Code must be filled out");
        document.getElementById('sp_code').focus();
        return false;
    }
}
</script>	
<!-------------------------------------------ALL VALIDATIONS----------------------------------------->	
 <script type="text/javascript">
function validate() {
	
	 var phoneNo = /^\d{10}$/;  
	 var temp=document.getElementById('temp').value;
	 var ctype=document.getElementById('ctype').value;
	 var alphaExp = /^[a-zA-Z]+$/;


    var eventName,spId,spCustName,spPlace,spCustMob,spType,spFlavour,spCode,spWt,noOfChars,image1,spExCharges,spDisc,totalAmt,rmAmount;
    eventName = document.getElementById("event_name").value;
    spPlace = document.getElementById("sp_place").value;
    spCustName=document.getElementById("sp_cust_name").value;
    spCustMob=document.getElementById("sp_cust_mobile_no").value; 
    spType=document.getElementById("sptype").value; 
    spFlavour=document.getElementById("spFlavour").value;
    spCode=document.getElementById("sp_code").value;
    spWt=document.getElementById("spwt").value;
    noOfChars=document.getElementById("noOfChars").value;
    spExCharges=document.getElementById("sp_ex_charges").value;
    spDisc=document.getElementById("sp_disc").value;
    totalAmt=document.getElementById("total_amt").value;
    rmAmount=document.getElementById("rm_amount").value;
    image1 = document.getElementById('image');
    var isCustChCake=document.getElementById('isCustChoiceCk').value;
    var spPhoUpload=document.getElementById('spPhoUpload').value;

 
    var isValid=true;
    
    if (spCode == "") {
        alert("Special Cake Code must be filled out");
      
        isValid= false;
    }else 
    if (spType == "") {
        alert("Please Select Special Cake Type");
      
        isValid= false;
    }else  if (spWt == "") {
        alert("Please Select Special Cake Weight");
      
        isValid= false;
    }else if (spFlavour == "") {
        alert("Please Select Flavour");
  
        isValid=false;
    }  else
    if((isCustChCake == 1 && (image1.getAttribute('src') == ""||image1.getAttribute('src') == null)))
    {
    	alert("Please upload Photo Cake 1 !!");
        
        isValid=false;
    } else
    if((spPhoUpload == 1 && (image1.getAttribute('src') == ""||image1.getAttribute('src') == null)))
    {
    	alert("Please upload Photo Cake !!");
        
        isValid=false;
    } 
    /* else  if (eventName == "") {
        alert("Please Enter Message");
        document.getElementById('event_name').focus();
        
        isValid=false;
    } */else if (spPlace == "") {
        alert("Please Enter Place of delivery");
        document.getElementById('sp_place').focus();

        isValid= false;
    }else if (spCustName == "") {
        alert("Please Enter Customer Name");
        document.getElementById('sp_cust_name').focus();

        isValid= false;
    } 
	  else   if(!spCustMob.match(phoneNo))  
	  {  
	     alert("Not a valid Mobile Number");  
	     document.getElementById('sp_cust_mobile_no').value="";
	     document.getElementById('sp_cust_mobile_no').focus();
	     isValid= false;  
	  }  else   if(spExCharges == "")  
	  {  
		     alert("Please Enter Valid Extra Charges ");  
		     document.getElementById('sp_ex_charges').value="";
		     document.getElementById('sp_ex_charges').focus();
		     isValid= false;  
		  } else   if(spDisc == "")  
		  {  
			     alert("Please Enter Valid Discount % ");  
			     document.getElementById('sp_disc').value="";
			     document.getElementById('sp_disc').focus();
			     isValid= false;  
			  } else 
				     if(rmAmount<0)  
				  {  
					     alert("Please Enter Valid Advance Amount!");  
					     document.getElementById('adv').value="0";
					     document.getElementById('adv').focus();
					     $('#rmAmt').html(totalAmt);document.getElementById("rm_amount").setAttribute('value',totalAmt);
					     isValid= false;  
					  } else 
	if(temp==0)
		{
		
		 if(noOfChars>0)
	     {
			 if (ctype.length < noOfChars  || ctype.length > noOfChars) {
				    alert('please enter '+noOfChars+' characters for Aplhabetical Type Cake');
				    return false;
				} else if(ctype.match(alphaExp))
		          {
					  isValid= true;  
		          }
		          else{
		              alert("Please only enter characters  for Aplhabetical Type");
		              isValid= false;  
		          }
	     }else{
		  if(ctype.match(alphaExp))
          {
			  isValid= true;  
          }
          else{
              alert("Please only enter characters  for Aplhabetical Type");
              isValid= false;  
          }
	     }
		}else 	if(temp==1)
			{
			var regex=/^[0-9]+$/;
			 if(noOfChars>0)
		     {
				 if (ctype.length < noOfChars  || ctype.length > noOfChars) {
					    alert('please enter '+noOfChars+' digits for Numerical Type');
					    return false;
					}else  if (!ctype.match(regex)){
					    alert("Please only  enter numeric characters for Numerical Type! (Allowed input:0-9)");
					    isValid= false;  
					  }
				  else
					  {
					  	isValid= true;  
					  }
		     }else{
			
		    if (!ctype.match(regex)){
				    alert("Please only  enter numeric characters for Numerical Type! (Allowed input:0-9)");
				    isValid= false;  
				  }
			  else
				  {
				  	isValid= true;  
				  }
		     }
			}
    if(isValid)
    	{
    	document.getElementById("click").style.background='#5659a0';
    	document.getElementById("click").disabled = true;//new

    	}
    return isValid;
 
}
</script> 
<!------------------------------------------------END------------------------------------------------>	
<!------------------------------------------SELECT PHOTO SCRIPT-------------------------------------->	

<script>
 document.getElementById("order_photo").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        document.getElementById("image").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
</script>
<script>
 document.getElementById("cust_choice_ck").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        document.getElementById("img").src = e.target.result;
    };

    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
</script>
<!------------------------------------------------END------------------------------------------------>	

<!-------------------------------Getting Available Slots ON Date Selection---------------------------->

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script>
var b4=${specialCake.spBookb4};
var todaysDate=new Date();
var min=new Date(todaysDate.setDate(todaysDate.getDate()+b4));

  $( function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'dd-mm-yy' ,  minDate:min,
        onSelect: function(date) {
           
      	    	var isSlotUsed =$("#isSlotUsed").val();         

      	    	var produTime =$("#sp_pro_time").val();         
      	     

                  if(isSlotUsed=='1')
                  	{
      			      $.getJSON('${findAvailableSlot}', {
      				  deldate : date,
      				  prodTime: produTime,
      			      ajax : 'true'
      			} , function(availableSlots) {
      				
      			
      				
      				if(availableSlots>0)
      					{
      					
      					$("#slotUsedSpan").html(availableSlots +' Slots Available');
      					
      					}
      				else
      					{
      				
      					$("#slotUsedSpan").html('No Slots Available');
      				
      					
      					}
      				
      			});
             }
         }
      });
  } );
  $( function() {
    $( "#datepicker2" ).datepicker({ dateFormat: 'dd-mm-yy' });
  } );
  $( function() {
    $( "#datepicker3" ).datepicker({ dateFormat: 'dd-mm-yy' });
  } );
  $( function() {
    $( "#datepicker4" ).datepicker({ dateFormat: 'dd-mm-yy' });
  } );
  $( function() {
    $( "#datepicker5" ).datepicker({ dateFormat: 'dd-mm-yy' });
  } );
  </script>
  <!-----------------------------------------END----------------------------------------------------->
  <!-------------------------Getting Available Slots On Submit Click -------------------------------->
  
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<script>

$(document).ready(function () {
    $("#click").click(function ()  {
   
      	       var date = $('#datepicker').datepicker({ dateFormat: 'dd-mm-yy' }).val();
      	  
      	    	var isSlotUsed =$("#isSlotUsed").val();         
      	  	 
      	    	var produTime =$("#sp_pro_time").val();         
      	  
                  if(isSlotUsed=='1')
                  	{
              
      			      $.getJSON('${findAvailableSlot}', {
      				  deldate : date,
      				  prodTime: produTime,
      			      ajax : 'true'
      			} , function(availableSlots) {
      				
      				if(availableSlots>0)
      					{
      					$("#slotUsedSpan").html(availableSlots +' Slots Available');
      				var valid=	validate();
      				
      				
      				if(valid){
      					document.forms["from_ord"].submit();
      				}	
      					
      					}
      				else
      					{
      				
      					$("#slotsNotAvailable").html('No Slots Available');
      					alert("Sorry, No Slots Available !");
      					}
      				
      			
      			});
             }else{
            	 var valid=	validate();
   				
   				
   				if(valid){
   					document.getElementById("click").disabled = true;//new
   					document.forms["from_ord"].submit();
   				}	
            	 
             }
         });
});
  
</script> 
<!-----------------------------------------END----------------------------------------------------->
<!---------Hide And Show Div For Marathi And English Textarea------- -->
<script>
function showDiv(elem){
   if(elem.value == 1)
	   {
	  
         document.getElementById('marathiDiv').style.display= "block";
         document.getElementById('transliterateTextarea').value = '';
         document.getElementById('englishDiv').style="display:none";
	   }
   else if(elem.value == 2)
   { 
	   document.getElementById('marathiDiv').style.display= "block"; 
       document.getElementById('transliterateTextarea').value = '';
       document.getElementById('englishDiv').style="display:none";
   } else if(elem.value == 3)
   {
	  
	   document.getElementById('englishDiv').style.display = "block"; 
       document.getElementById('textarea').value = '';
	   document.getElementById('marathiDiv').style="display:none";
   }
}
function showDiv1(elem){
	   if(elem.value == 1)
		   {
	         document.getElementById('msgGujrati').style.display= "block";
	         document.getElementById('event_name_g').value = '';
	         document.getElementById('msgEnglish').style="display:none";
	         document.getElementById('msgMarathi').style="display:none";
		   }
	   else if(elem.value == 2)
	   { 
		   document.getElementById('msgMarathi').style.display= "block"; 
	       document.getElementById('event_name').value = '';
	       document.getElementById('msgEnglish').style="display:none";
	       document.getElementById('msgGujrati').style="display:none";
	   } else if(elem.value == 3)
	   {
		  
		   document.getElementById('msgEnglish').style.display = "block"; 
	       document.getElementById('event_name_e').value = '';
		   document.getElementById('msgMarathi').style="display:none";
	       document.getElementById('msgGujrati').style="display:none";

	   }
	}
</script>
<!------------------------END--------------------------------------------> 



<script type="text/javascript">
function showCtype(){
var temp=document.getElementById('temp').value;
	if(temp==0)
		{
		document.getElementById('cktype').innerHTML = 'Alphabetical';

		}else if(temp==1)
		{
			document.getElementById('cktype').innerHTML = 'Numerical';
		}else
	if (temp == 2 ) {  ///regular
		document.getElementById("ctype1").style = "display:none" //hide numeric
	}
	
}

</script>

<script type="text/javascript">
function onBlurSpCode(spCode)
{ 
	if(spCode==''||spCode==null)
		{
		alert("Please Select Sp Cake");
		}else
			{
			document.getElementById('searchform').submit();

			}
			
	
}
</script>
<!-- <script type="text/javascript">
$(document).bind("contextmenu",function(e) {
 e.preventDefault();
});
$(document).keydown(function(e){
    if(e.which === 123){
       return false;
    }
});
</script> -->
<script type="text/javascript">
$("#sp_code").on('input', function () {
    var val = this.value;
    if($('#categories option').filter(function(){
        return this.value.toUpperCase() === val.toUpperCase();        
    }).length) {
        //send ajax request
        if(val!=null || val!="")
        		{
        	document.getElementById("searchform").submit();// Form submission

        		}
       
    }
});
</script>
<!-- --------------------------------------------------------- -->
<div id="addEmpModal" class="modal">
		<div id="overlay">
			<div class="clock"></div>
		</div>

		<div class="modal-content" style="width: 75%">
			<span class="close" onclick="closeNewCustPopUp()" style="opacity: 2;">&times;</span>

			<h3 class="pageTitle">Add Customer</h3>
			
			<div>
				<div class="row">
					<form action="saveFranchiseeEmp" id="fr_emp_form" method="post" autocomplete="off">
						<div class="col-lg-12">

						<input type="hidden" name="custId" id="custId" value="0" />

							<div class="profile">
								<div class="profilefildset">Customer Name* </div>
								<div class="profileinput">
									<input type="text" class="texboxitemcode"
										placeholder="Enter Customer Name" name="customerName"
										onchange="trim(this)" id="customerName" />
								</div>
							</div>
							
							<div class="profile">
								<div class="profilefildset">Mobile Number</div>
								<div class="profileinput">
									<input type="text" class="texboxitemcode" placeholder="Enter Mobile No."
									name="mobileNo" id="mobileNo" onchange="trim(this)" maxlength="10" autocomplete="off"
									oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"/>
								</div>
							</div>
							
							<div class="profile"  style="display: none;">
								<div class="profilefildset">Pin Code</div>
								<div class="profileinput">
									<input type="text" class="texboxitemcode" placeholder="Enter Pin Code" value="0"
							name="pincode" id="pincode" onchange="trim(this)" maxlength="6"
							pattern="[0-9]" />
								</div>
							</div>
							
							<div class="profile" style="display: none;">
								<div class="profilefildset">Distance(In Kms)</div>
								<div class="profileinput">
									<input type="text" class="texboxitemcode" 
									placeholder="Enter distance in kms" name="kms" id="kms" value="0">
								</div>
							</div>
							
							

							<div class="profile">
								<div class="profilefildset">Gender*</div>
								<div class="profileinput">
								<input type="radio" type="radio" name="gender"
									id="moption" checked value="1"> <label for="moption">M</label>
									
								<input type="radio" id="foption" name="gender"
									value="2"> <label for="foption">F </label>

								</div>								
							</div>
							
							
							<div class="profile" style="display: none;">
								<div class="profilefildset">Type</div>
								<div class="profileinput">
									<select name="custType" id="custType"
										data-placeholder="Customer Type" class="texboxitemcode"
										class="input_add " style="text-align: left;">
										<option value="1" style="text-align: left;">Owner</option>
										<option value="2" style="text-align: left;">Employee</option>
										<option value="3" style="text-align: left;" selected>Customer</option>
									</select>
								</div>
							</div>

							<div class="profile">
								<div class="profilefildset">Age Group*</div>
								<div class="profileinput">
									<select name="ageRange" id="ageRange"
										data-placeholder="Age-Group" class="texboxitemcode"
										class="input_add " style="text-align: left;">
										<option value="14-21" style="text-align: left;">14-21 Years</option>
										<option value="22-28" style="text-align: left;">22-28 Years</option>
										<option value="29-35" style="text-align: left;">29-35 Years</option>
										<option value="36-42" style="text-align: left;">36-42 Years</option>
										<option value="43-49" style="text-align: left;">43-49 Years</option>
										<option value="50-56" style="text-align: left;">50-56 Years</option>
										<option value="57 & above" style="text-align: left;">57 & above</option>
									</select>
								</div>
							</div>
							
							<div class="profile">
								<div class="profilefildset">DOB</div>
								<div class="profileinput">
									<input name="dateOfBirth" type="date" class="texboxitemcode"
										id="dateOfBirth" placeholder="Date Of Birth"/>
								</div>
							</div>
							
						<div class="profile">
								<div class="profilefildset">Business</div>
								<div class="profileinput">
								<input type="radio" type="radio" name="selector"
									id="y-option" onclick="isBuissness(1)"> <label for="y-option">Yes</label>
									
								<input type="radio" id="n-option" name="selector" onclick="isBuissness(0)"
								checked>  <label for="n-option">No </label>

								</div>								
							</div>
							
							<div style="display: none;" id="isbuissnessdiv">
								<div class="profile">
									<div class="profilefildset">Company Name*</div>
									<div class="profileinput">
										<input placeholder="Enter Company Name" name="companyName"
									onchange="trim(this)" id="companyName"  type="text" class="texboxitemcode" />
									</div>
								</div>
								
								<div class="profile">
									<div class="profilefildset">Address</div>
									<div class="profileinput">
										<input  placeholder="Enter Address" name="custAdd" id="custAdd"
									onchange="trim(this)"  class="texboxitemcode" />
									</div>
								</div>
								
								<div class="profile">
									<div class="profilefildset">GST Number*</div>
									<div class="profileinput">
										<input placeholder="Enter GST Number" name="gstNo" id="gstNo"
									onchange="trim(this)" type="text" maxlength="15" class="texboxitemcode" />
									</div>
								</div>
								
							</div>
							
							<div class="profile">
								<div class="profilefildset">Remark</div>
								<div class="profileinput">
									<input placeholder="Enter Remark"
							name="remark" id="remark" onchange="trim(this)" class="texboxitemcode" required />
								</div>
							</div>

						</div>

						
					</form>
				</div>
			</div>

			<div class="pop_btns">
				<div class="close_l" style="text-align: center;">
					<input type="submit" class="btn additem_btn" id="saveCust" value="Save" onclick="addCustomer()">
					<!-- <button class="btn additem_btn" onclick="closeNewCustPopUp()" id="cls_btn">Close</button> -->
				</div>				
				<div class="clr"></div>
			</div>

		</div>


	</div>
	<script>
function openNewCustPopUp() {

	var modal = document.getElementById("addEmpModal");
	modal.style.display = "block";

}

function closeNewCustPopUp() {

	var modal = document.getElementById("addEmpModal");
	modal.style.display = "none";	
}

function showEmpInfo(custId) {
	
		$.getJSON('${getCustById}', {
			custId : custId,			
			ajax : 'true'
	}, function(data) {
		 //alert(JSON.stringify(data))
		document.getElementById("dob").value = data.custDob;
		document.getElementById("sp_cust_mobile_no").value = data.phoneNumber;
		document.getElementById("gstin").value = data.gstNo;
		document.getElementById("sp_cust_name").value = data.custName;
		
	}); 
}  

function isBuissness(value) {

	if (value == 1) {
		$("#isbuissnessdiv").show();
	} else {
		$("#isbuissnessdiv").hide();
	}

}

function trim(el) {
	el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
	replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space 
	replace(/\n +/, "\n"); // Removes spaces after newlines
	return;
}

function validateMobile(mobile) {
	//alert(mobile);
	var mob = /^[1-9]{1}[0-9]{9}$/;

	if (mob.test($.trim(mobile)) == false) {

		//alert("Please enter a valid email address .");
		return false;

	}
	return true;

}

function checkGST(g){
    let regTest = /\d{2}[A-Z]{5}\d{4}[A-Z]{1}[A-Z\d]{1}[Z]{1}[A-Z\d]{1}/.test(g)
     if(regTest){
        let a=65,b=55,c=36;
        return Array['from'](g).reduce((i,j,k,g)=>{ 
           p=(p=(j.charCodeAt(0)<a?parseInt(j):j.charCodeAt(0)-b)*(k%2+1))>c?1+(p-c):p;
           return k<14?i+p:j==((c=(c-(i%c)))<10?c:String.fromCharCode(c+b));
        },0); 
    }
    return regTest
}
</script>


<script type="text/javascript">
function addCustomer() {
	
	document.getElementById("saveCust").disabled = true;
	var phNo="";
	//$('#addcust').modal('hide');
	//$('#addcust').popup('hide'); //for close popup;
	var custId = document.getElementById("custId").value;
	var customerName = document.getElementById("customerName").value;
	var mobileNo = document.getElementById("mobileNo").value;
	var kms= document.getElementById("kms").value;
	phNo=mobileNo;
	var dateOfBirth = document.getElementById("dateOfBirth").value;
	var custType = document.getElementById("custType").value;
	custType=3;
	var ageRange = document.getElementById("ageRange").value;
	
	$.getJSON('${checkEmailText}', {
		phoneNo : mobileNo,	
			ajax : 'true',
	},

	function(saveFlag) {
		
	//	alert(saveFlag);
		
		 if(parseInt(saveFlag)>0 && parseInt(saveFlag)!=custId){		
		
			 document.getElementById("saveCust").disabled = false;
			 
			   alert("Duplicate Mobile Number Found.");
				document.getElementById("mobileNo").value = "";
				document.getElementById("mobileNo").focus();
		}else{
	var gender = 2;
	if (document.getElementById('moption').checked) {
		gender = 1;
	}
	
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
	} 
	
	else if (mobileNo == "" || !validateMobile(mobileNo)) {
		alert("Enter Valid Mobile No");
		flag = 1;
	}  else if (ageRange == 0) {
		alert("Please Select Age Group");
		flag = 1;
	} else if (buisness == 1) {

		if (companyName == "") {
			alert("Enter Company Name");
			flag = 1;
		} else if (gstNo == "") {
			alert("Enter GST No");
			flag = 1;
		}/* else if(checkGST(gstNo)==false){
			alert("Invalid GST No");
			flag = 1;
		} */
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
							
							document.getElementById("saveCust").disabled = false;

							//alert(JSON.stringify(data.customerList));

							if (data.error == false) {

								//var html = '<option value="0" selected>Select Customer</option>';
								var html = '';
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

								$('#sp_cust_id').html(html);

								$("#sp_cust_id").trigger("chosen:updated");
								$('.chosen-select').trigger(
										'chosen:updated');
								
								document.getElementById("pincode").value = "";
								document.getElementById("remark").value = "";
								document.getElementById("customerName").value = "";
								document.getElementById("mobileNo").value = "";
								document.getElementById("kms").value = "0";
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
								
								$("#isbuissnessdiv").hide();
								
								alert("Customer Added Successfully");
								
								$("#sp_cust_id").trigger("chosen:updated");
					
								closeNewCustPopUp(); 
							} else {
								alert("Failed To Add Customer");
							}
							//alert("2")
							closeNewCustPopUp(); 
						});
				}
			}
		});
}

		
	</script>

</body>
</html>
