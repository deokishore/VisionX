<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

     <!-- Begin content-->
  	<section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <div id="product" ng-controller="CheckoutController" ng-init="clearOutShoppingCart();">
            	<div class="row">
                	<div id="checkout-step6" class="checkout checkout-step6 span12">
                    	<h1 class="pb15">Checkout successful</h1>
                        <div id="order-successful" class="successful my-account">
                        	<div class="head">
                                <h2>Your order has been processed.</h2>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                 	</div>
                </div>
            </div>
            <!-- End Order Summary--> 
            
  		</section>
	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="../resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>