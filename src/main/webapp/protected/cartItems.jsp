<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js' />"></script>

     <!-- Begin content-->
    <section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            <div class="span12">
                <div class="breadcrumb clearfix">
                	<span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/"><span itemprop="title">Home</span></a></span> 
                	<span class="arrow-space">&gt;</span>
                    <span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/products"><span itemprop="title">Products</span></a></span>
                    <span class="arrow-space">&gt;</span>
                	<strong>Cart Items</strong>
                </div>
            </div>
            <!-- End Breadcrumbs --> 
    
            <!-- Cart Items -->
            <div id="cart" ng-controller="CheckoutController">
            	<div class="row">
                	<div class="span12">
                    	<h1>Your Shopping Cart</h1>
                        <div class="pb15"><input type="button" id="checkout" class="btn fr" name="cntshopping" 
                        value="Proceed to checkout" onClick="location.href='/login'">
                          <div class="clearfix"></div>
                        </div>
                        <form id="cartform" method="post" action="/checkoutLogin">
                        	<table id="shopping-cart-table" class="data-table" cellspacing="0" border="0">
                             	<colgroup>
                                	<col width="90">
                                    <col width="260">
                                    <col width="80">
                                    <col width="80"> 
                                    <col width="80">
                                    <col width="80">
                                </colgroup>
                                <thead>
                                    <tr>
                                      <th class="image">&nbsp;</th>
                                      <th class="item">Item</th>
                                      <th class="qty">Quantity</th>
                                      <th class="price">Price</th>
                                      <th class="itemtotal">Item total</th>
                                      <th class="remove">&nbsp;</th>
                                    </tr>
                              	</thead>
                                <tbody data-ng-repeat="shoppingCartLineItem in shoppingCart.lineItems">

                               		<tr>
                                    	<td class="image">
                                            <div class="product_image borderyln span2">
                                              <a href="/product">
                                                <img alt="Anti Wrinkle Cream" src="{{shoppingCartLineItem.productVo.imagePath}}">
                                              </a>
                                            </div>
                                      	</td>
                                        <td class="item">
                                            <a href="/product">
                                              <strong>{{shoppingCartLineItem.productVo.productId}}</strong>
                                              <p>{{shoppingCartLineItem.productVo.size}} ml bottle</p>
                                            </a>
                                     	</td>
                                        <td class="qty">
                                        	<div class="quantity-btns" id="quantity_btns_1">
                                                <input type="button" class="subtract" value="" id="subtract-1">
                                                <input type="text" class="quantity-box" id="qty_box-1" value="{{shoppingCartLineItem.quantity}}"
                                                name="qty">
                                                <input type="button" class="add" value="" id="add-1">
                                            </div>
                                            
                                     	</td>
                                        <td class="price"> <span id="currency-default">{{shoppingCartLineItem.productVo.priceVo.amount | currency:'£' }}</span></td>
                                        <td class="itemtotal">
                                        	<span class="total"><span id="currency-default">{{shoppingCartLineItem.totalCost | currency:'£' }}</span></span>
                                        </td>
                                        <td class="remove">
                                            <a class="cart" href="" ng-click="removeProductFromCart(shoppingCartLineItem);">Remove</a>

                                        </td>
                                    </tr>

                                </tbody>
                                </tbody>
                             </table>
                            <div class="shopping-cart-totals">
                            	<div class="shopping-cart-collaterals">
                                	<table id="shopping-cart-totals-table" cellspacing="0">
                                    	<tbody>
                                        	<tr>
                                                <td colspan="1" class="tr titles"><span>Sub Total</span></td>
                                                <td class="a-right totals"><span id="currency-default">{{getTotal() | currency:'£' }}</span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="1" class="tr titles"><span>Delivery options from</span></td>
                                                <td class="a-right totals"><span>&pound;0.00</span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="1" class="tr titles"><span>Grand Total</span></td>
                                                <td class="a-right totals"><span id="currency-default">{{getTotal() | currency:'£' }}</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="buttons clearfix">
                              <input type="button" onClick="location.href='/products'"  value="Continue shopping" name="checkout" class="btn fl" id="continue-shopping">
                              <input type="submit" value="Proceed to checkout" name="cntshopping" class="btn fr" id="checkout">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- End Cart Items--> 
  		</section> 
	<!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>