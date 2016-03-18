<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

     <!-- Begin content-->
  	<section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <div id="product" ng-controller="CheckoutController">
            	<div class="row">
                	<div class="checkout checkout-step2 span12">
                    	<h1 class="pb15">Checkout - New Delivery Address</h1>
                        <div class="address-fields">
                        	<ul class="messages">
                                <li class="success-msg">
                                    <h5>Success</h5>
                                    <ul class="stylenone">
                                        <li>Thank you for registering with Tamaar Skincare.</li>
                                    </ul>
                                </li>
                            </ul>
                        	<div class="progress-bar clearfix">
                            	<ol>
                                	<li class="first" id="login-progress-bar">
                						<h4><a href="/login">Login / register</a></h4>
            						</li>
                                    <li class="current" id="delivery-progress-bar">
                						<h4>Delivery &amp; Billing</h4>
            						</li>
                                    <li class="" id="shipping-progress-bar">
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
                            <div class="head">
            					<h2>Checkout - New Delivery Address</h2>
        					</div>
                            <div class="checkout-text span11">
            					<p>
                                	<strong>Please note:</strong> 
                                    If the name used on your delivery address is different to your billing address your invoice(s) will be sent to the billing address.
                                </p>
        					</div>
                            <div id="login" class="new-address span11">
                            	<form name="billingDeliveryAddressForm" novalidate>
                                	<div class="section-title">
                                    	<h3>Address</h3>
                                        <hr class="divider">
                                    </div>
                                    <p class="required fr">* Required Fields</p>
                                    <div class="span6">
                                    	<table class="create_new_account">
                                        	<tbody>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="addressField1"><strong>Address line 1</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input ng-model="deliveryAddressVo.addressLine1" type="text" value="" name="addressField1" id="addressField1" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="addressField2"><strong>Address line 2</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input ng-model="deliveryAddressVo.addressLine2" type="text" value="" name="addressField2" id="addressField2" class="text">
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="addressField3"><strong>Address line 3</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input ng-model="deliveryAddressVo.addressLine3" type="text" value="" name="addressField3" id="addressField3" class="text">
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="cityField"><strong>City</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input ng-model="deliveryAddressVo.city" type="text" value="" name="cityField" id="cityField" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="county"><strong>County</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input ng-model="deliveryAddressVo.county" type="text" value="" name="county" id="county" class="text">
                                                 	</td>
                                                </tr>
                                               	<tr>
                                                    <td class="label">
                                                    	
                                                    	<label for="postalCode">
                                                        	<strong>Postcode</strong>
                                                       	</label>
                                                    </td>
                                                    <td class="value">
                                                    	<input ng-model="deliveryAddressVo.postCode" type="text" value="" name="postalCode" id="postalCode" class="text" required pattern="\+?[0-9, A-Z]{3,12}" >
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                            </tbody>
                                        </table>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="section-title pt20">
                                    	<h3>Add telephone number</h3>
                                        <hr class="divider">
                                    </div>
                                    <div class="span6">
                                    	<table>
                                        	<tbody>
                                            	<tr>
                                                	<td class="label">
                                                    	<label for="telephone"><strong>Telephone</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" id="telephone" class="text" value="" 
                                                        name="telephone">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr class="divider mt20">
                                    <div class="action_bottom">
                                  <input type="button" onclick="location.href='/userProfile'" value="Cancel" class="btn">
                                  <input ng-click="createDeliveryAddress();" type="submit" value="Save Addresss" class="btn fr">
                                </div>
                                </form>
                            </div>
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