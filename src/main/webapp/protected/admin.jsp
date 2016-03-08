<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/LoginController.js'/>"></script>

     <!-- Begin content-->
  		<section id="content" class="clearfix pb15" ng-controller="LoginController">
				<a href="<c:url value="/logout" />">Logout</a>
            	<div id="customer-login">
  					<div class="row">
    					<div class="span12" id="login">
      				        <div class="span5 pt20 greybordergt">
      				        	<a href="<c:url value='/orderView'/>">Order List</a>
                            	<br>
                            	<a href="<c:url value='/checkout/billingDeliveryInfo'/>">Continue Shopping</a>
                            </div>
                    	</div>
  					</div>
				</div>

    	</section>
	<!-- End content-->

