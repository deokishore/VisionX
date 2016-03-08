<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value='/resources/css/checkout_style.css'  />" rel="stylesheet"/>
<script src="<c:url value='/resources/js/pages/checkout.js' />"></script>


<div ng-controller="CheckoutController" ng-init="checkOutList();">

<div id="addToCartModal"
     class="modal hide fade in centering insertAndUpdateDialogs"
     role="dialog"
     aria-labelledby="updateContactsModalLabel"
     aria-hidden="true">

    <div class="shopping-cart">

      <div class="column-labels">
        <label class="product-image">Image</label>
        <label class="product-details">Product</label>
        <label class="product-price">Price</label>
        <label class="product-quantity">Quantity</label>
        <label class="product-removal">Remove</label>
        <label class="product-line-price">Total</label>
      </div>


      <div  data-ng-repeat="shoppingCartLineItem in shoppingCart.lineItems">

          <div class="product">
            <label></label>
            <div class="product-image">
              <img src="{{shoppingCartLineItem.productVo.imagePath}}">
            </div>
            <div class="product-details">
              <div class="product-title">{{shoppingCartLineItem.productVo.productId}}</div>
            </div>
            <div class="product-price">{{shoppingCartLineItem.productVo.priceVo.amount}}</div>
            <div class="product-quantity">
              <input type="number" value="{{shoppingCartLineItem.quantity}}" ng-model="shoppingCartLineItem.quantity" ng-change="updateShoppingCart(shoppingCartLineItem)">
            </div>

            <div class="product-removal">
              <button class="remove-product" ng-click="removeProductFromCart(shoppingCartLineItem);">
                Remove
              </button>
            </div>
            <div class="product-line-price">{{shoppingCartLineItem.totalCost}}</div>
          </div>

      </div>

    <div class="totals">
         <div class="totals-item totals-item-total">
            <label>Grand Total</label>
            <div class="totals-value" id="cart-total">{{ getTotal() }}</div>
         </div>
    </div>


    <div class="product">
         <input type="button" id="checkout" class="btn fr" name="cntshopping"
                                 value="Checkout" onClick="location.href='/checkoutLogin'">
         <a ng-href='#addToCartModal'
            role="button"
            ng-click='addToCart()'
            title="Add to cart"
            class="btn btn-inverse"
            data-toggle="modal"> Close
         </a>
    </div>



    </div>
</div>

</div>