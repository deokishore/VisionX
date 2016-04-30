<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="<c:url value='/resources/css/checkout_style.css'  />" rel="stylesheet"/>

<script src="<c:url value='/resources/js/pages/checkout.js' />"></script>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog" ng-controller="CheckoutController">
   <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">

         <div class="modal-header modal-info">
               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h2 class="modal-title" id="sampleModalLabel">Checked Out Products</h2>
         </div>

         <div class="modal-body">
            <div class="shopping-cart">

               <div class="product-options-header">
                 <label class="product-image">Image</label>
                 <label class="product-details">Product</label>
                 <label class="product-price">Price</label>
                 <label class="product-quantity">Quantity</label>
                 <label class="product-removal">Remove</label>
                 <label class="product-line-price">Total</label>
               </div>

               <div  data-ng-repeat="lineItem in shoppingCart.lineItems">
                  <div class="product">
                     <label></label>
                     <div class="product-image">
                        <img src="{{lineItem.productVo.imagePath}}">
                     </div>
                     <div class="product-details">
                        <div class="product-title">{{lineItem.productVo.productId}}</div>
                     </div>
                     <div class="product-price"><span id="currency-default">{{lineItem.productVo.priceVo.amount | currency:'£' }}</span></div>

                     <div class="product-quantity">
                        <input type="number" id="qty_box-1" value="{{lineItem.quantity}}" ng-model="lineItem.quantity" ng-change="updateShoppingCart2(lineItem)">
                     </div>

                     <div class="product-removal">
                        <button class="remove-product" ng-click="removeProductFromCart(shoppingCartLineItem);">  Remove </button>
                     </div>
                     <div class="product-line-price"> <span id="currency-default">{{lineItem.totalCost | currency:'£' }}</span> </div>
                  </div>
               </div>

               <div class="totals">
                  <div class="totals-item totals-item-total">
                     <div class="totals-value" id="cart-total"><span id="currency-default">{{getTotal() | currency:'£' }}</span> </div>
                     <div class="totals-value" id="cart-total"><span id="currency-default">Grand Total</span> </div>
                  </div>
               </div>

            </div>
         </div>

         <div class="modal-footer">

            <div ng-show="shoppingCart.loginResponse.status == 'OK'">
              <input type="button" id="checkout" class="btn fr" name="cntshopping" value="Checkout" onClick="location.href='/billingDeliveryInfo'">
            </div>

            <div ng-show="shoppingCart.loginResponse.status != 'OK'">
               <input type="button" id="checkout" class="btn fr" name="cntshopping" value="Checkout" onClick="location.href='/login'">
            </div>

            <input type="button" id="close" class="btn fr" name="cntshopping" value="Close" data-dismiss="modal">
         </div>

      </div>
   </div>
</div>
<!-- Modal -->