<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

<div ng-controller="CheckoutController">

     <!-- Begin content-->
  	<section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <div id="product">
            	<div class="row">
                	<div class="checkout checkout-step4 span12">
                    	<h1 class="pb15">Checkout</h1>
                        <div class="postage">

                        	<div class="progress-bar clearfix">
                            	<ol>
                                	<li class="first" id="login-progress-bar">
                						<h4><a href="/login">Login / register</a></h4>
            						</li>
                                    <li class="completed" id="delivery-progress-bar">
                						<h4>
                                        	<a href="/billingDeliveryInfo">Billing &amp; delivery</a>
                                        </h4>
            						</li>
                                    <li class="completed" id="shipping-progress-bar">
                                        <h4>
                                        	<a href="/checkOutStep2">Postage options</a>
                                        </h4>
                                    </li>
                                    <li class="current" id="payment-progress-bar">
                						<h4>Payment method</h4>
            						</li>
                                    <li class="" id="overview-progress-bar">
                						<h4>Review &amp; complete</h4>
            						</li>
                                </ol>
                            </div>

                            <form name="co-payment-form" role="form" ng-submit="validatePaymentMethod()" >

                            	<div class="payment-options">
                            		<div class="head">
            							<h2>Please select your payment method</h2> 
        							</div>
                            		<div class="checkout-text span11">
            					        <p>We accept American Express, Maestro, Mastercard, Solo, Visa and PayPal payments. You can checkout as a one off payment, use a previously saved card or save your card details securely for a faster checkout next time.</p>
        							</div>
                            		<div class="section-title row span11">
                            			<h3>Payment method</h3>
                            			<hr class="divider">
                                        <div class="clearfix"></div>
                        			</div>
                                    <div id="login" class="payment-method span11 p20">
                                    	<div id="tabs" class="payment-method">
                                            <ul class="stylenone nomargin clearfix">
                                                <li><a id="dbtcard" href="#tabs-1">Enter card details</a></li>
                                                 <li><a id="paypalexp" href="#tabs-2">Paypal</a></li>
                                            </ul>
                                        	<div id="tabs-1" class="pb10">
                                            	<p class="important-info">Unless you choose to save your card details with us, your card details are never stored in our database and the information will be removed when you close your browser or complete a successful order.</p>
                                            	<hr class="divider">
                                            	<table class="create_new_account">
                                                    <tbody>
                                                        <tr>
                                                            <td class="label">
                                                                 <label for="chFirstName"><strong>Name on Card</strong>
                                                                 </label>
                                                            </td>
                                                            <td class="value">
                                                                <input ng-model="shoppingCart.orderVo.paymentDetailsVo.nameOnCard" type="text" class="text" id="cardHolderName" name="cardHolderName" value="" required>
                                                                <span class="required">*</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="label">
                                                                
                                                                <label for="pmt_cc_type"><strong>Select Card Type</strong>
                                                                </label>
                                                            </td>
                                                            <td class="value">
                                                                <select ng-model="shoppingCart.orderVo.paymentDetailsVo.cardType" name="pmt_cc_type" id="pmt_cc_type" class="wide228" required>
                                                                  <option value="">--Please Select--</option>	
                                                                  <option value="Visa">Visa</option>
                                                                  <option value="MasterCard">MasterCard</option>
                                                                </select>
                                                                <span class="required">*</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="label">
                                                                <label for="ccNumber"><strong>Card Number</strong></label>
                                                            </td>
                                                            <td class="value">
                                                                <input ng-model="shoppingCart.orderVo.paymentDetailsVo.cardNumber" type="text" class="text" id="ccNumber" name="ccNumber" value="" pattern="\+?[0-9]{12,20}" required>
                                                                <span class="required">*</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="label">
                                                                <label for="cc-expires-month"><strong>Expiry Date</strong>
                                                                </label>
                                                            </td>
                                                            <td class="value">
                                                                <select ng-model="shoppingCart.orderVo.paymentDetailsVo.expiryMonth" name="cc-expires-month" id="cc-expires-month"required>
                                                                    <option value="">Select Year</option>
                                                                    <option value="01">January - (01)</option>
                                                                    <option value="02">February - (02)</option>
                                                                    <option value="03">March - (03)</option>
                                                                    <option value="04">April - (04)</option>
                                                                    <option value="05">May - (05)</option>
                                                                    <option value="06">June - (06)</option>
                                                                    <option value="07">July - (07)</option>
                                                                    <option value="08">August - (08)</option>
                                                                    <option value="09">September - (09)</option>
                                                                    <option value="10">October - (10)</option>
                                                                    <option value="11">November - (11)</option>
                                                                    <option value="12">December - (12)</option>
                                                                </select>
                                                                <select ng-model="shoppingCart.orderVo.paymentDetailsVo.expiryYear" name="cc-expires-year" id="cc-expires-year" required>
                                                                  <option value="">Select Month</option>
                                                                  <option value="15">2015</option>
                                                                  <option value="16">2016</option>
                                                                  <option value="17">2017</option>
                                                                  <option value="18">2018</option>
                                                                  <option value="19">2019</option>
                                                                  <option value="20">2020</option>
                                                                  <option value="21">2021</option>
                                                                  <option value="22">2022</option>
                                                                  <option value="23">2023</option>
                                                                  <option value="24">2024</option>
                                                                </select>
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td class="label">
                                                                <label for="cc-cvv"><strong>Security Number</strong></label>
                                                            </td>
                                                            <td class="value">
                                                                <input ng-model="shoppingCart.orderVo.paymentDetailsVo.securityNumber" type="password" name="cc-cvv" size="4" maxlength="4" id="cc-cvv" required pattern="\+?[0-9]{3,4}">
                                                                <span class="required">*</span>
                                                                <span class="pt10"> (on back of the credit card)</span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                       			 </table>

                                        		<div class="clearfix"></div>
                                                <hr class="divider">
                                                <div class="save-title">
                                                	<h4>Save card details?</h4>
                                               		<ul class="save stylenone">
            										<li>
            										<input type="checkbox" class="checkbox" value="1" id="scd" name=
                                                    "payment[save_card_details]">
                									<label for="scd">Please check this box if you would like us to 
                                                    securely save your card details on our server. This will save you 
                                                    time when you next order on tamaar.com.</label>
                                                    </li>
                                                </ul>
                                            	</div>
                                        	</div>
                                            <div id="tabs-2" class="pay-pal">
                                            	<ul class="stylenone">
            										<li>
            										<input type="checkbox" name="paypal_express_cc_type" id="paypal_express_cc_type" value="1" class="checkbox">
                									<label for="paypal_express_cc_type">Please check this box if you would like to pay by PayPal. You will be redirected to PayPal when you have reviewed and confirmed your order details.</label>
                                                    </li>
                                                </ul>
                                        	</div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                            <div class="action_bottom">
                                          <input type="button" onclick="location.href='/checkout/checkoutPostage'" value="Back to postage options" class="btn">
                                          <input type="submit" value="Review & complete your order" class="btn fr">
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

  </div>