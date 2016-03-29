<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            <div id="cart">
            	<div class="row">
                	<div class="span12">
                    	<h1>Your Shopping Cart</h1>
                        <div class="pb15">
                        	<input type="button" value="Proceed to checkout" name="cntshopping" class="btn fr" id="checkout" onClick="location.href='/billingDeliveryInfo'">
                            <div class="clearfix"></div>
                        </div>
                        <form id="cartform" method="post" action="/billingDeliveryInfo">
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
                                <tbody>
                               		<tr>
                                    	<td class="image">
                                            <div class="product_image borderyln span2">
                                              <a href="/product">
                                                <img alt="Anti Wrinkle Cream" src="resources/images/products/anti-wrinkle/tmr-anti-wrinkle_small.png">
                                              </a>
                                            </div>
                                      	</td>
                                        <td class="item">
                                            <a href="/product">
                                              <strong>Anti Wrinkle Cream</strong>
                                              <p>250ml bottle</p>
                                            </a>
                                     	</td>
                                        <td class="qty">
                                           <div id="quantity_btns_1" class="quantity-btns">
                                         <input type="button" id="subtract-1" value="" class="subtract">
                                         <input type="text" name="qty" value="1" id="qty_box-1" class="quantity-box">
                                            <input type="button" id="add-1" value="" class="add">
                                            </div>
                                     	</td>
                                        <td class="price">£39.00</td>
                                        <td class="itemtotal">
                                        	<span class="total">£39.00</span>
                                        </td>
                                        <td class="remove">
                                        	<a class="cart" href="#">Remove</a>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<td class="image">
                                            <div class="product_image borderyln span2">
                                              <a href="/product">
                                               <img alt="Anti Acne Cream" src="resources/images/products/anti-acne/tmr-anti-acne_small.png">
                                              </a>
                                            </div>
                                      	</td>
                                        <td class="item">
                                            <a href="/product">
                                              <strong>Anti Acne Cream</strong>
                                              <p>150ml bottle</p>
                                            </a>
                                     	</td>
                                        <td class="qty">
                                            <div id="quantity_btns_2" class="quantity-btns">
                                         <input type="button" id="subtract-2" value="" class="subtract">
                                         <input type="text" name="qty" value="1" id="qty_box-2" class="quantity-box">
                                            <input type="button" id="add-2" value="" class="add">
                                            </div>
                                     	</td>
                                        <td class="price">£45.00</td>
                                        <td class="itemtotal">
                                        	<span class="total">£45.00</span>
                                        </td>
                                        <td class="remove">
                                        	<a class="cart" href="#">Remove</a>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<td class="image last">
                                            <div class="product_image borderyln span2">
                                              <a href="/product">
                                                <img alt="Skin Lightening Cream" src="resources/images/products/skin-lightening/tmr-skin-lightening_small.png">
                                              </a>
                                            </div>
                                      	</td>
                                        <td class="item last">
                                            <a href="/product">
                                              <strong>Skin Lightening Cream</strong>
                                              <p>250ml bottle</p>
                                            </a>
                                     	</td>
                                        <td class="qty last">
                                            <div id="quantity_btns_3" class="quantity-btns">
                                         <input type="button" id="subtract-3" value="" class="subtract">
                                         <input type="text" name="qty" value="1" id="qty_box-3" class="quantity-box">
                                            <input type="button" id="add-3" value="" class="add">
                                            </div>
                                     	</td>
                                        <td class="price last">£34.00</td>
                                        <td class="itemtotal last">
                                        	<span class="total">£34.00</span>
                                        </td>
                                        <td class="remove last">
                                        	<a class="cart" href="#">Remove</a>
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
                                                <td colspan="1" class="tr titles"><span>Subtotal</span></td>
                                                <td class="a-right totals"><span>£147.00</span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="1" class="tr titles"><span>Delivery options from</span></td>
                                                <td class="a-right totals"><span>£0.00</span></td>
                                            </tr>
                                            <tr>
                                                <td colspan="1" class="tr titles"><span>Total</span></td>
                                                <td class="a-right totals"><span>£147.00</span></td>
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