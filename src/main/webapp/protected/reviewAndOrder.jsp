<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

     <!-- Begin content-->
  	<section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <!--<div id="product" ng-controller="CheckoutController" ng-init="getCheckout();">-->
            <div id="product">
            	<div class="row">
                	<div id="checkout-step5" class="checkout checkout-step5 span12">
                    	<h1 class="pb15">Checkout</h1>
                        <div class="progress-bar clearfix pt20">
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
                                    <li class="completed" id="payment-progress-bar">
                                    	<h4>
                                        	<a href="/checkOutStep3">Payment method</a>
                                        </h4>
            						</li>
                                    <li class="current" id="overview-progress-bar">
                						<h4>Review &amp; complete</h4>
            						</li>
                                </ol>
                            </div>
                        <div id="review-order" class="review-order">
                        	<div class="head">
                                <h2>Please review your order</h2> 
                            </div>
                            <div class="checkout-text span11">
            					<p>Please <strong>review your order information</strong> below and click the <strong>'Submit Payment'</strong> button at the bottom of this page to complete your purchase.  You will be unable to amend your order online once you have done this. A confirmation of your order will be sent to your email address.</p>
        							</div>
                           	<div class="section-title row span11">
                                <h3>Order review</h3>
                                <hr class="divider">
                                <div class="clearfix"></div>
                            </div>

                            <form id="order_payment" method="post" action="/checkout/checkoutStatus" name="orderPayment">
                            	<div class="order-details span11 my-account clearfix">
                                	<div class="address-details clearfix borderln">
                                    	<div class="fl span5">
                                        	<div class="details-title mt10">
                								<h4>Your billing address:</h4>
                                                <span class="fr"><a id="backToBilling" href="/billingDeliveryInfo">Change billing address</a></span>
                                                <div class="clearfix"></div>
                                    			<hr class="divider">
            								</div>
                                            <address>
                                            	<dl>
													<dt>Title</dt> <dd>{{shoppingCart.orderVo.customerByBillingCustomerIdVo.title}}</dd>
													<dt>Name</dt> <dd>{{shoppingCart.orderVo.customerByBillingCustomerIdVo.firstName}} {{checkOut.billingCustomerVo.lastName}}</dd>
													<dt>Address</dt> <dd class="address-1">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine1}}</dd>
														<dd class="address-2">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressLine2}}</dd>
														<dd class="address-3">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressLine3}}</dd>
														<dt>City</dt><dd class="address-city">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.city}}</dd>
													<dt>County</dt> <dd class="address-Region">{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.county}}</dd>
													<dt>Postcode</dt> <dd>{{shoppingCart.orderVo.customerByBillingCustomerIdVo.addressVo.postCode}}</dd>
													<dt>Country</dt> <dd>United Kingdom</dd>
												</dl>
                                            </address>
                                            <div class="clearfix"></div>
                                      	</div>

                                        <div class="fr span5">
												<div class="details-title mt10">
													<h4>Your delivery address:</h4>
													<span class="fr"><a id="backToDelivery" href="/billingDeliveryInfo">Change delivery address</a></span>
													<div class="clearfix"></div>
													<hr class="divider">
												</div>
												<address>
													<dl>
														<dt>Title</dt> <dd>{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.title}}</dd>
														<dt>Name</dt> <dd>{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.firstName}} {{checkOut.deliveryCustomerVo.lastName}}</dd>
														<dt>Address</dt> <dd class="address-1">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine1}}</dd>
															<dd class="address-2">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressLine2}}</dd>
															<dd class="address-3">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressLine3}}</dd>
															<dt>City</dt><dd class="address-city">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.city}}</dd>
														<dt>County</dt> <dd class="address-Region">{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.county}}</dd>
														<dt>Postcode</dt> <dd>{{shoppingCart.orderVo.customerByDeliveryCustomerIdVo.addressVo.postCode}}</dd>
														<dt>Country</dt> <dd>United Kingdom</dd>
													</dl>
												</address>
                                      	</div>
                                        <div class="clearfix"></div>
                                        <div class="address-note pt20 pl15">
                                            <p><strong>Please note:</strong> If the name used on your delivery address is different to your billing address your invoice(s) will be sent to the billing address.</p>
                                        </div>
                                    </div>
                                    <div class="email-details clearfix">
                                   		<div class="details-title">
                                            <h4>Email address:</h4>
                                            <span class="fr"><a href="/editPersonalInfo">Edit your account details</a></span>
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                        </div>  
                                        <dl>
                    						<dt>Your account email address</dt>
                                            <dd>{{shoppingCart.orderVo.customerByCustomerIdVo.email}}</dd>
                						</dl> 
                                    </div>
                                    <div class="postage-method clearfix">
                                    	<div class="details-title">
                                            <h4>Postage method</h4>
                                            <span class="fr"><a id="" href="/checkoutEditPostage">Change postage method</a></span>
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                        </div>
                                        <table cellspacing="0" class="order-table" id="overview-table">
                        					<tbody>
                                            	<tr class="first">
                                                <td class="">{{shoppingCart.orderVo.shipperVo.shipperId}}</td>
                                                <td class="last"><span class="price">&pound;{{shoppingCart.orderVo.shipperVo.price}}</span></td>
                                            	</tr>
                    						</tbody>
                                     	</table>
                                    </div>
                                    <div class="basket-details">
                                    	<div class="details-title">
                                            <h4>Basket items:</h4>
                                            <span class="fr"><a href="/checkoutEditCart">Edit basket contents</a></span>
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                        </div> 
                                        <table cellspacing="0" class="data-table" id="overview-table">
                    						<colgroup><col width="520">
                    							<col width="100">
                                        		<col width="50">
                    							<col width="80">
                                        	</colgroup>
                                        	<thead>
                        						<tr>
                            						<th rowspan="1">Product Name</th>
                            						<th colspan="1" class="tr">Price</th>
                            						<th rowspan="1" class="tc">Quantity</th>
                            						<th colspan="1" class="tr header-total">Item total</th>
                        						</tr>
                                        	</thead>
                    						<tbody data-ng-repeat="shoppingCartLineItem in shoppingCart.lineItems">

                                            	<tr>
                                                	<td class="item">
                                        				<a href="/product" class="product-name">
                                                        	<strong>{{shoppingCartLineItem.productVo.productId}}</strong>
                                                      	</a><br>
                                        				50ml jar 
                                       				</td>
                                                    <td class="tr">
                                        				<span class="price">&pound;{{shoppingCartLineItem.productVo.priceVo.amount}}</span>  </td>
                                                    <td class="tc">{{shoppingCartLineItem.quantity}}</td>
                                                    <td class="tr item-total">
                                        				<span class="price">&pound;{{shoppingCartLineItem.totalCost}}</span>
                                        			</td>
                                  				</tr>

                                            </tbody>
                                            <tfoot>
                        						<tr>
    												<td colspan="3" class="tr">Subtotal</td>
    												<td class="tr">
                                                    	<span class="price">&pound;{{shoppingCart.subTotalCost}}</span>
                                                	</td>
                                                </tr>
												<tr>
    												<td colspan="3" class="tr">
                                                    	{{shoppingCart.orderVo.shipperVo.name}}
                                                    </td>
                                                    <td class="tr">
                                                        <span class="price">&pound;{{shoppingCart.orderVo.shipperVo.price}}</span>
                                                    </td>
												</tr>
                        						<tr class="final-total">
                            						<td colspan="3" class="tr">
                                                    	<em>Total:</em>
                                                   	</td>
                            						<td class="tr totals">
                                                    	<span class="price">
                                                        	<em><span class="price">&pound; {{parseInt(shoppingCart.orderVo.shipperVo.price) + parseInt(1)}}</span></em>
                                                        </span>
                                                 	</td>
                        						</tr>
                    						</tfoot>
            							</table>
                                    </div>
                                    <div class="request-and-payment-details">
                                    	<div class="fl span5">
                                        	<div class="details-title">
                                            	<h4>Delivery requests:</h4>
                                            	<span class="fr"><a href="#">Edit your requests</a></span>
                                            	<div class="clearfix"></div>
                                            	<hr class="divider">
                                        	</div>
                                            <ul class="requests">
                                    		</ul>
                                        </div>
                                        <div class="fr span5">
                                        	<div class="details-title">
                                            	<h4>Payment method</h4>
                                            	<span class="fr"><a href="/checkOutStep3">Edit payment method</a></span>
                                            	<div class="clearfix"></div>
                                            	<hr class="divider">
                                        	</div>
                                            <dl class="card-details">
                                                <dt>Card type</dt><dd>Visa/Electron</dd>
                                                <dt>Name on card</dt><dd>Rajan Sharma</dd>
                                                <dt>Card number</dt><dd>xxxxxxxxxxxx7545</dd>
                                                <dt>Expiry date</dt><dd>05/2022</dd>
                                                <dt>Security number</dt><dd>***</dd>
                                            </dl>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                           		</div>
                                <div class="clearfix"></div>
                                <hr class="divider">
                                <div class="submit-payment-text">
                    <p class="tr pt20">Please click 'Submit Payment' to complete your purchase.<br>We will process your order and send you a confirmation email.</p>
                
    </div>
								<div class="clearfix"></div>
                            	<hr class="divider">
                                <div class="action_bottom">
                                    <input type="button" onclick="location.href='/checkout/paymentMethod'" value="Back to payment method" class="btn">
                                      <input type="submit" value="Submit payment" class="btn fr">
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
                <img src="../resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>