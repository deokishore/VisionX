<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
   	<section id="content" class="clearfix pb15 row"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    		
            <!-- Order Summary -->
               <div id="checkout-step5" class="checkout checkout-step5 span12">
                    	<h1 class="pb15">My account</h1>
                        <div id="review-order" class="review-order">
                        	<div class="my-account">
                        		<div class="head">
                                <h2>Order number: 202473158</h2>
                            </div>
                            	<div class="order-details">
                            		<div class="my-account-text span11">    
                            		<p>
                                    	Here is a summary of the order number 202473158 that was placed on 22 June 
                                        2015.
                                	</p>
                            		<p class="order-actions details-title">
                            			<a href="/printOrder" onclick="this.target='_blank';">
                                    		Print order details
                                    	</a>															                            		</p>
                        		</div>
                                	<div class="order-status">
                                	<div class="section-title row span11">
                                		<h3>Order status</h3>
                                		<hr class="divider">
                                		<div class="clearfix"></div>
                            		</div>
                                    <div class="clearfix"></div>
                                    <div class="my-account-text span11">  
                                        <p>Your order status is: <strong>Successfull</strong></p>
                                    </div>
                                </div>
                                	<div class="section-title span11">
                                    <h3>Order summary</h3>
                                    <hr class="divider">
                                    <div class="clearfix"></div>
                                </div>
                               	 	<div class="address-details span11 clearfix">
                                    <div class="fl span5">
                                        <div class="details-title">
                                            <h4>Your billing address</h4>
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                        </div>
                                        <address>
                                            <dl>
                                                <dt>Title</dt><dd>Mr</dd>
                                                <dt>Name</dt><dd>Rajan Kumar</dd>
                                                <dt>Address</dt><dd class="address-1">Flat 1</dd>
                                                <dd class="address-2">Vermeer Court</dd>
                                                <dd class="address-2">1 Rembrandt Close</dd>
                                                <dd class="address-2">London</dd>
                                                <dd class="address-3"></dd>
                                                <dt>Postcode</dt><dd>E14 3XA</dd>
                                                <dt>Country</dt><dd>United Kingdom</dd>
                                            </dl>
                                        </address>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="fr span5">
                                        <div class="details-title">
                                            <h4>Your delivery address</h4>
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                        </div>
                                        <address>
                                            <dl>
                                                <dt>Title</dt><dd>Mr</dd>
                                                <dt>Name</dt><dd>Rajan Kumar</dd>
                                                <dt>Address</dt><dd class="address-1">Flat 1</dd>
                                                <dd class="address-2">Vermeer Court</dd>
                                                <dd class="address-2">1 Rembrandt Close</dd>
                                                <dd class="address-2">London</dd>
                                                <dd class="address-3"></dd>
                                                <dt>Postcode</dt><dd>E14 3XA</dd>
                                                <dt>Country</dt><dd>United Kingdom</dd>
                                            </dl>
                                        </address>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            	</div>
                        	</div>
                            <div class="order-details span11 clearfix my-account">
                            	<div class="basket-details">
                                	<div class="section-title">
                                            <h3>Order items</h3>
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
                    						<tbody>
                                            	<tr>
                                                	<td class="item">
                                        				<a href="/product" class="product-name">
                                                        	<strong>New Skin Lightening Cream</strong>
                                                      	</a><br>
                                        				50ml jar 
                                       				</td>
                                                    <td class="tr">
                                        				<span class="price">&pound;99.00</span>                                    				</td>
                                                    <td class="tc">1</td>
                                                    <td class="tr item-total">
                                        				<span class="price">&pound;99.00</span>                                    				</td>
                                  				</tr>
                                                <tr>
                                             		<td class="item">
                                        				<a href="/product" class="product-name">
                                        					<strong>Anti Wrinkle Cream</strong>
                                                        </a><br>
    													45ml jar                                 
                                                    </td>
                                                    <td class="tr">
                       	 								<span class="price">&pound;45.00</span>                                    				</td>
                                                    <td class="tc">1</td>
                                                    <td class="tr item-total">
                                                    	<span class="price">&pound;45.00</span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tfoot>
                        						<tr>
    												<td colspan="3" class="tr">Subtotal</td>
    												<td class="tr">
                                                    	<span class="price">&pound;144.00</span>
                                                	</td>
                                                </tr>
												<tr>
    												<td colspan="3" class="tr">
                                                    	Delivery (Tamaar - Recorded Priority Service &ndash; 2-3 
                                                    	working days)    
                                                    </td>
                                                    <td class="tr">
                                                        <span class="price">&pound;3.75</span>    
                                                    </td>
												</tr>
                        						<tr class="final-total">
                            						<td colspan="3" class="tr">
                                                    	<em>Total:</em>
                                                   	</td>
                            						<td class="tr totals">
                                                    	<span class="price">
                                                        	<em><span class="price">&pound;147.75</span></em>
                                                        </span>
                                                 	</td>
                        						</tr>
                    						</tfoot>
            							</table>
                                </div>
                                <div class="postage-and-payment">
                                    <div class="fl span4">
                                        <div class="details-title">
                                            <h4>Postage method</h4>
                                            <div class="clearfix"></div>
                                            <hr class="divider">
                                        </div>
                                        <span> Tamaar - Standard Service - 3-5 working days</span>
                                    </div>
                                    <div class="fr span6">
                                        <div class="details-title">
                                            <h4>Payment method</h4>
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
                            <div class="action_bottom">
                                    <input type="button" onclick="location.href='/orderHistory'" value="Back to my orders" class="btn">
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