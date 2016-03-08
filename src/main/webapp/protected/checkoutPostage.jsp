<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

<div ng-controller="CheckoutController" ng-init="getShipperList();">
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
                						<h4><a href="/accountLogin">Login / register</a></h4>
            						</li>
                                    <li class="completed" id="delivery-progress-bar">
                						<h4>
                                        <a href="/billingDeliveryInfo">Billing &amp; delivery</a></h4>
            						</li>
                                    <li class="current" id="shipping-progress-bar">
                                        <h4>
                                        <a href="/checkOutStep2">Postage options</a></h4>
                                    </li>
                                    <li class="" id="payment-progress-bar">
                						<h4>Payment method</h4>
            						</li>
                                    <li class="" id="overview-progress-bar">
                						<h4>Review &amp; complete</h4>
            						</li>
                                </ol>
                            </div>

                            <form name="delvBilngForm" role="form" ng-submit="setShipperValue()" >
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
                                        <div class="inner-box span6">
                                            <div id="checkout-shipping-method-load">
                                                <ul ng-repeat="shipper in shipperList" id="shipping-rate" class="list-group">
                                                    <li class="list-group-item">
                                                        <input name="shipping_method" type="radio" ng-checked="{{shipper.name}}" ng-model="$parent.shipper.name" ng-change="setShipperId('{{shipper.shipperId}}')" value="{{shipper.name}}">
                                                        <label class="badge" for="radiobtn1">{{shipper.name}} (<span class="price">£ {{shipper.price}}</span>)
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
                                           <label for="show-comments">I have delivery requests that I wish to make</label>
										</p>
                                        	<div class="inner-box span11">
                                        	    <form ng-submit="createNotice(selectedTicket)">
                                                     <textarea ng-model="shoppingCart.orderVo.deliveryRequest"></textarea>
                                                 </form>
                                                <p class="pl15">If you have any questions regarding the options, please do get in touch on +44 (0)1234 567890.</p>
                                            </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr class="divider">

                                    <div class="action_bottom">
                                        <input type="submit" value="Previous" class="btn"  onclick="location.href='/checkout/billingDeliveryInfo'">
                                        <input type="submit"value="Continue to payment" class="btn fr">
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