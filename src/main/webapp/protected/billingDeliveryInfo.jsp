<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

     <!-- Begin content-->
	<section id="content" class="clearfix pb15">
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <!-- <div id="product" ng-controller="CheckoutController" ng-init="getCheckout();">-->
            <div id="product" ng-controller="CheckoutController" ng-init="getCheckout();">

            	<div class="row">
                	<div class="checkout checkout-step2 span12">
                    	<h1 class="pb15">Checkout</h1>
                        <div class="address-fields">

                        	<ul class="messages" ng-show="shoppingCart.loginResponse.status != 'OK'">
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


                            	<div class="billing-delivery-confirmation">
                            		<div class="head">
            							<h2>Delivery & Billing</h2>
        							</div>
                            		<div class="checkout-text span11">
									<p>
									   Please confirm your billing address below, and if required select or add an alternative delivery address.
									</p>
        						</div>



								<!-- Delivery Address Section Start -->

								<div class="billing-delivery-info span11 pt20 p30 pb10 borderln">

									<div class="section-title row span11">
										<h3>Delivery Address</h3>
										<hr class="divider">
									</div>

									<p class="pb15 pl15">This is where we will send your invoice and your products unless an alternative delivery address is specified.</p>
									<div class="billing-options">

										<div class="fl span5">
											<div class="sub-title">
												<h4 class="bold p0">Delivery Address Management:</h4>
												<hr class="divider">
												<ul class="stylenone nomargin">
													<li>
														<div class="option">
															<input type="checkbox" ng-disabled="deliveryAddressModel.value"  ng-model="bilDelCheckboxModel.value" ng-click="handleDelvBilngCheckBox()"/>
															<label for="billing">Both (Delivery and Billing)</label>
														</div>

														<div class="edit">
															<span style="margin-top:-14px;" class="edit fr bold">
																<a id="edit-address-info" ng-show="!addEditBillingAddressModel.value" href ng-click="editDeliveryAddress()">Edit Address</a>
															</span>
														</div>
													</li>
												</ul>
												<hr class="divider">
											</div>
										</div>

										<div class="fr span5">
											<div class="sub-title">
												<h4 class="bold p0">Your Delivery Address:</h4>
												<hr class="divider">
												<dl>
													<dt>Title</dt> <dd>{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.title}}</dd>
													<dt>Name</dt> <dd>{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.firstName}} {{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.lastName}}</dd>
													<dt>Address</dt> <dd class="address-1">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine1}}</dd>
														<dd class="address-2">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine2}}</dd>
														<dd class="address-3">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine3}}</dd>
														<dt>City</dt><dd class="address-city">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.city}}</dd>
													<dt>County</dt> <dd class="address-Region">{{oshoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.county}}</dd>
													<dt>Postcode</dt> <dd>{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.postCode}}</dd>
													<dt>Country</dt> <dd>United Kingdom</dd>
												</dl>
											</div>
										</div>

									</div>
								</div>
								<!-- End Delivery Address -->






							<!-- Start Delivery Address Editing -->
							<div class="billing-delivery-info span11 pt20 p30 pb10 borderln" ng-show="deliveryAddressModel.value == true">

								<div class="section-title">
									<h3>Edit Delivery Address</h3>
									<hr class="divider">
								</div>

								<div id="login" class="new-address span11">

									<form name="delvBilngForm" role="form" ng-submit="updateDeliveryCustomer()" >

										<div class="span6">
											<table class="create_new_account">
												<tbody>

													<tr>
														<td>
															<p class="required fr">* Required Fields</p>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="prefix">
																<strong>Title</strong>
															</label>
														</td>
														<td class="value">
															<select ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.title" class="wide228" name="prefix" id="prefix" required>
																<option value="">Please select</option>
																<option value="Miss">Miss</option>
																<option value="Mr">Mr</option>
																<option value="Mrs">Mrs</option>
																<option value="Ms">Ms</option>
																<option value="Other">Other</option>
															</select>
															<span class="required">*</span>
														</td>
													</tr>

													<tr>
														<td class="label">

															<label for="firstName">
																<strong>First Name</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.firstName" type="text" value="" name="firstName" id="firstName" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="lastName">
																<strong>Last Name</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.lastName" type="text" value="" name="lastName" id="lastName" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="emailAddress">
																<strong>Email Address</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.email" type="email" value="" name="emailAddress" id="emailAddress" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="addressField1"><strong>Address line 1</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine1" type="text" value="" name="addressField1" id="addressField1" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="addressField2"><strong>Address line 2</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine2" type="text" value="" name="addressField2" id="addressField2" class="text">
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="addressField3"><strong>Address line 3</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine3" type="text" value="" name="addressField3" id="addressField3" class="text">
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="cityField"><strong>City</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.city" type="text" value="" name="cityField" id="cityField" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="county"><strong>County</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.county" type="text" value="" name="county" id="county" class="text">
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="postalCode">
																<strong>Postcode</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.postCode" type="text" value="" name="postalCode" id="postalCode" class="text" required pattern="\+?[0-9, A-Z]{3,12}" >
															<span class="required">*</span>
														</td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix"></div>
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
													<input type="button" ng-click="deliveryAddressModel.value = false" value="Cancel" class="btn">
													<input type="submit" value="Update Delivery Addresss" class="btn fr">
												</div>
											</div>
									</form>
								</div>
							</div>
							<!-- End Delivery Address Editing -->





								<!-- Billing Address Show Section Start -->

								<div id="billingAddressId" class="billing-delivery-info span11 pt20 p30 pb10 borderln" ng-show="billingAddressDisplayModel.value">
									<div class="section-title row span11">
										<h3>Billing Address</h3>
										<hr class="divider">
									</div>
									<p class="pb15 pl15">This is where we will send your invoice and your products unless an alternative delivery address is specified.</p>
									<div class="billing-options">
										<div class="fl span5">
											<div class="sub-title">
												<h4 class="bold p0">Billing Address Management:</h4>
												<hr class="divider">
												<ul class="stylenone nomargin">
													<li>
														<div class="edit">
															<span style="margin-top:-14px;" class="edit fr bold">
																<a id="edit-address-info" ng-show="!addEditBillingAddressModel.value" href ng-click="editBillingAddress()">Edit Address</a>
															</span>
														</div>
													</li>
												</ul>
												<hr class="divider">
											</div>
										</div>
										<div class="fr span5">
											<div class="sub-title">
												<h4 class="bold p0">Your Billing Address:</h4>
												<hr class="divider">
												<dl>
													<dt>Title</dt> <dd>{{shoppingCart.orderVo.customerByBillingCustomerIdVo.title}}</dd>
													<dt>Name</dt> <dd>{{shoppingCart.orderVo.customerByBillingCustomerIdVo.firstName}} {{orderVo.customerByBillingCustomerIdVo.lastName}}</dd>
													<dt>Address</dt> <dd class="address-1">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine1}}</dd>
														<dd class="address-2">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine2}}</dd>
														<dd class="address-3">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine3}}</dd>
														<dt>City</dt><dd class="address-city">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.city}}</dd>
													<dt>County</dt> <dd class="address-Region">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.county}}</dd>
													<dt>Postcode</dt> <dd>{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.postCode}}</dd>
													<dt>Country</dt> <dd>United Kingdom</dd>
												</dl>
											</div>
										</div>
									</div>
								</div>
								<!-- Billing Address Show Section End -->



							<!-- Start Billing Address -->
							<div class="billing-delivery-info span11 pt20 p30 pb10 borderln" ng-show="addEditBillingAddressModel.value">

							<div class="section-title">
								<h3>Billing Address</h3>
								<hr class="divider">
							</div>

								<div id="login" class="new-address span11">

									<form name="addEditForm" role="form" ng-submit="updateBillingCustomer()" >

										<div class="span6">
											<table class="create_new_account">
												<tbody>

													<tr>
														<td>
															<p class="required fr">* Required Fields</p>

														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="prefix">
																<strong>Title</strong>
															</label>
														</td>
														<td class="value">
															<select ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.title" class="wide228" name="prefix" id="prefix" required>
																<option value="">Please select</option>
																<option value="Miss">Miss</option>
																<option value="Mr">Mr</option>
																<option value="Mrs">Mrs</option>
																<option value="Ms">Ms</option>
																<option value="Other">Other</option>
															</select>
															<span class="required">*</span>
														</td>
													</tr>

													<tr>
														<td class="label">

															<label for="firstName">
																<strong>First Name</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.firstName" type="text" value="" name="firstName" id="firstName" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="lastName">
																<strong>Last Name</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.lastName" type="text" value="" name="lastName" id="lastName" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="emailAddress">
																<strong>Email Address</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.email" type="email" value="" name="emailAddress" id="emailAddress" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="addressField1"><strong>Address line 1</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine1" type="text" value="" name="addressField1" id="addressField1" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="addressField2"><strong>Address line 2</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine2" type="text" value="" name="addressField2" id="addressField2" class="text">
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="addressField3"><strong>Address line 3</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine3" type="text" value="" name="addressField3" id="addressField3" class="text">
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="cityField"><strong>City</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.city" type="text" value="" name="cityField" id="cityField" class="text" required>
															<span class="required">*</span>
														</td>
													</tr>
													<tr>
														<td class="label">
															<label for="county"><strong>County</strong></label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.county" type="text" value="" name="county" id="county" class="text">
														</td>
													</tr>
													<tr>
														<td class="label">

															<label for="postalCode">
																<strong>Postcode</strong>
															</label>
														</td>
														<td class="value">
															<input ng-model="shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.postCode" type="text" value="" name="postalCode" id="postalCode" class="text" required pattern="\+?[0-9, A-Z]{3,12}" >
															<span class="required">*</span>
														</td>
													</tr>
												</tbody>
											</table>
											<div class="clearfix"></div>
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
													<input type="button" ng-click="cancelBillingAddSaving() " value="Cancel" class="btn">
													<input type="submit" value="Save Billing Addresss" class="btn fr">
												</div>
											</div>
									</form>
								</div>
							</div>

							<!-- End Billing Address Editing-->

                                    <div class="clearfix"></div>
                                    <hr class="divider">
									<div class="action_bottom">

									  <input type="button" onclick="location.href='/checkout/customerRegistration?isGuest={{shoppingCart.loginResponse.isGuest}}'" value="Previousss" class="btn">

									  <input ng-show="continueToPostageOptionsButtonModel.value"  type="submit" onclick="location.href='/checkout/checkoutPostage'" value="Continue to postage options" class="btn fr">

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