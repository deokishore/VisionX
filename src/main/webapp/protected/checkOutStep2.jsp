<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
  	<section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
           
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <div id="product">
            	<div class="row">
                	<div class="checkout checkout-step3 span12">
                    	<h1 class="pb15">Checkout</h1>
                        <div class="postage">
                        	<div class="progress-bar clearfix">
                            	<ol>
                                	<li class="first" id="login-progress-bar">
                						<h4><a href="/login">Login / register</a></h4>
            						</li>
                                    <li class="completed" id="delivery-progress-bar">
                						<h4>
                                        <a href="/billingDeliveryInfo">Billing &amp; delivery</a></h4>
            						</li>
                                    <li class="current" id="shipping-progress-bar">
                                        <h4>Postage options</h4>
                                    </li>
                                    <li class="" id="payment-progress-bar">
                						<h4>Payment method</h4>
            						</li>
                                    <li class="" id="overview-progress-bar">
                						<h4>Review &amp; complete</h4>
            						</li>
                                </ol>
                            </div>
                            <form id="shipping_method_form" method="post" action="/checkOutStep3">
                            	<div class="postage-options">
                            		<div class="head">
            							<h2>Postage options</h2> 
        							</div>
                            		<div class="checkout-text span11">
            					<p>Your parcel will be delivered by Royal Mail. Below you will find the postage options available for your chosen delivery address. Please select your preferred postage method and let us know if you have any special requirements or delivery instructions.</p>
        					</div>
                            		<div class="section-title row span11">
                            			<h3>Postage method</h3>
                            			<hr class="divider">
                        			</div>
                                    <div class="postage-method span11 p30 borderln pt20">
                                    	<p class="pb15 pl15">Please select your postage method from the options below.</p>
                                       	<div class="inner-box span5">
                                            	<div id="checkout-shipping-method-load" class="default-box">
                                                	<ul id="shipping-rate" class="stylenone" style="display:inline;">
                                                    <li class="p10">
	                    								<input type="radio" checked="checked" class="radio-0" value=
                                                        "UK-UK-RM-STANDARD" id="radiobtn1" name="shipping_method">
	                    								<label for="radiobtn1">Standard Service &ndash; 3-5 working 
                                                        days (<span class="price">&pound;3.75</span>)
                        								</label>
	               					 				</li>
                    			
	                <li class="p10">
	                    <input type="radio" class="radio-1" value="UK-UK-RM-STANDARD:REC" id="radiobtn1" name="shipping_method">
	                    <label for="radiobtn1">Recorded Standard Service &ndash; 3-5 working days (<span class="price">&pound;5.00</span>)
                        </label>
	                </li>
                    			
	                <li class="p10">
	                    <input type="radio" class="radio-2" value="UK-UK-RM-FIRST" id="radiobtn2" name="shipping_method">
	                    <label for="radiobtn2">Priority Service &ndash; 2-3 working days (<span class="price">&pound;5.25</span>)
                        </label>
	                </li>
                    			
	                <li class="p10">
	                    <input type="radio" class="radio-3" value="UK-UK-RM-FIRST:REC" id="radiobtn3" name="shipping_method">
	                    <label for="radiobtn3">Recorded Priority Service &ndash; 2-3 working days (<span class="price">&pound;6.50</span>)
                        </label>
	                </li>
                    			
	                <li class="p10">
	                    <input type="radio" class="radio-4" value="UK-UK-RM-NEXTDAY" id="radiobtn4" name="shipping_method">
	                    <label for="radiobtn4">Special Delivery &ndash; 1-2 working days (<span class="price">&pound;9.25</span>)
                        </label>
	                </li>
                            </ul>
                                                </div>
                                            </div>
                                    </div>
                                    <div class="section-title row span11">
                            			<h3>Delivery requests</h3>
                            			<hr class="divider">
                        			</div>
                                    <div class="special-requests span11 p30 borderln pt20">
                                    	<p class="pl15">
                                        	<input type="checkbox" id="show-comments" name="">
                                            <label for="show-comments">I have delivery requests that I wish to make</label>
										</p>
                                        <div class="inner-box">
                                        	<ul class="have-requests stylenone">	
                                                    <li class="p10">
                                                        <input type="checkbox" id="checkbox1" name="">
                                                        <label for="checkbox1">If not in when postman delivers</label>
                                                    </li>
                                                    <li class="p10">
                                                        <input type="checkbox" id="checkbox2" name="">
                                                        <label for="checkbox2">Please send order & invoice to delivery address</label>
                                                    </li>
                                                    <li class="p10">
                                                        <input type="checkbox" id="checkbox3" name="">
                                                        <label for="checkbox3">Please mark parcel & invoice private/confidential</label>
                                                    </li>
                                                    <li class="p10">
                                                        <input type="checkbox" id="checkbox4" name="">
                                                        <label for="checkbox4">Other</label>
                                                    </li>
                                                </ul>
                                            <p class="pl15">If you have any questions regarding the options, please do get in touch on +44 (0)1234 567890.</p>
                                      	</div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr class="divider">
                                    <div class="action_bottom">
                                  <input type="button" onclick="location.href='/billingDeliveryInfo'" value="Back to delivery & billing" class="btn">
                                  <input type="submit" value="Continue to payment method" class="btn fr">
                                </div>
                            	</div>
                            </form>
                        </div>
                 	</div>
                </div>
            </div>
            <!-- End Order Summary--> 
            
  		</section>
	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>