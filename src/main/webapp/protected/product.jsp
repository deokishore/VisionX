<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

     <script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

     <!-- Begin content-->
     <div ng-controller="ProductsController" ng-init="searchProdcut('${productId}');">

            <meta name="_csrf" content="${_csrf.token}" />
            <meta name="_csrf_header" content="${_csrf.headerName}" />

     		<section id="content" class="clearfix pb15">

               <!-- Products section -->
               <div id="product" class="anti-acne-cream">
               	<div class="row clearfix">
             			<div class="span12">
                   		<!-- Begin Breadcrumbs -->
              				<div class="span12">
                   			<div class="breadcrumb clearfix">
                   	<span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/"><span itemprop="title">Home</span></a></span>
                   	<span class="arrow-space">&gt;</span>
                       <span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/products"><span itemprop="title">Products</span></a></span>
                       <span class="arrow-space">&gt;</span>
                   	<strong>Moisturiser 1</strong>
                   </div>
               			</div>
               			<!-- End Breadcrumbs -->
                       </div>
                       <div class="span6">
                       	<div class="image featured borderyln">
                           	<a id="placeholder" class="thumbnail fancybox" rel="ligthbox" href="{{shoppingCartLineItem.productVo.imagePath}}">
             						<img class="img-responsive" alt="Moisturiser Tamaar" src="{{shoppingCartLineItem.productVo.imagePath}}">
           					</a>
                           </div>
                       </div>
                       <div class="span6">
                       	<h1 class="title">{{shoppingCartLineItem.productVo.productId}}</h1>
                               <div class="purchase">
                                    <h2 id="price-preview" class="price"> <span id="currency-default">{{shoppingCartLineItem.productVo.priceVo.amount | currency:'£' }}</span><br> </h2>
                                </div>

                           <form id="add-item-form" action="" method="post" class="variants clearfix">

                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                               <!-- Begin product options -->
                               <div class="product-options">

                                 <div id="quantity_btns_1" class="quantity-btns" >
                                    <input type="button" id="subtract-1" value="" class="subtract" ng-click="updateShoppingCart(shoppingCartLineItem, -1)">
                                    <input type="text" name="qty" value="1" id="qty_box-1" class="quantity-box">
                                    <input type="button" id="add-1" value="" class="add" ng-click="updateShoppingCart(shoppingCartLineItem, +1)">
                                 </div>

                    			 <div class="clearfix"></div>
                                 <div class="purchase-section">

                                   <div class="purchase">
                                         <a ng-href='#myModal'
                                           role="button"
                                           ng-click='addToCart()'
                                           title="Add to cart"
                                           class="btn btn-inverse"
                                           data-toggle="modal"> Add to cart
                                         </a>
                                   </div>

                                 </div>

                                  <jsp:include page="addToCart.jsp"/>

                               </div>
                               <!-- End product options -->

                         	</form>



                           <!-- Product Description -->
                           <div id="tabs" class="tabsdata">
                             	<ul>
                                    <li><a href="#tabs-1">Description</a></li>
                                    <li><a href="#tabs-2">Ingredients</a></li>
                                    <li><a href="#tabs-3">How to use</a></li>
                                </ul>
                                <!-- Tab 1 Start-->
                           	    <div id="tabs-1" class="description">
                                   <p>{{shoppingCartLineItem.productVo.description}}</p>
                         		</div>

                                <!-- Tab 2 -->
                                <div id="tabs-2" class="description">
                               	     <p>
                               	        <div ng-repeat="ingredient in shoppingCartLineItem.productVo.ingredients">
                                            <strong>{{ingredient.key}} - </strong>{{ingredient.value}}<br>
                                        </div>
                                	 </p>
                         	    </div>

                                <!-- Tab 3 -->
                           	    <div id="tabs-3" class="description" >
                           	        <div ng-repeat="howtouse in shoppingCartLineItem.productVo.howtouses">
                                        <p>
                                            <strong>{{howtouse.key}}</strong><br>
                                            {{howtouse.value}}
                                        </p>
                                    </div>
                            	</div>

                           </div>
                           <!-- End Product Description -->

                           <!-- Begin social buttons -->
                           <div class="social pt20">
                               <div id="social" class="clearfix">
                         			<p class="share-this">Share this item:</p>
                         			<div class="google-plus"><g:plusone size="medium" annotation="none"></g:plusone></div>
                         			<div class="tweet-btn">
                           					<a href="http://twitter.com/share" class="twitter-share-button"
                                               data-url="http://www.tamaar.com/products/moisturiser" data-count="none">
                                               Tweet</a>
   											<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
                         					</div>
   							</div>
                       		<script type="text/javascript">
   								(function() {
   								var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
   								po.src = 'https://apis.google.com/js/plusone.js';
   								var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
   								})();
   							</script>
                             </div>
                           <!-- End social buttons -->

                       </div>
                   </div>
                   <div class="row">
                     <div class="span12 borderlnb">
                       <h3 class="collection-title">Related products</h3>
                     </div>
                   </div>

                   <div class="row products">

                        <div  ng-repeat="product in productList">

                            <div class="product span3">
                                  <div class="image borderyln">
                                      <a href="/product?productId={{product.productId}}">
                                          <img alt="Anti Wrinkle Cream" src="{{product.imagePath}}">
                                      </a>
                                  </div>

                                  <div class="details">
                                     <a class="clearfix" href="/product?productId={{product.productId}}">
                                            <h4 class="title">{{product.productId}}</h4>
                                            <span class="vendor"><span id="currency-default">{{shoppingCartLineItem.productVo.priceVo.amount | currency:'£' }}</span></span>
                                            <input type="button" class="btn" value="View Details" name="viewdetails" id="viewdtls1">
                                     </a>
                                  </div>
                            </div>
                        </div>
                   </div>
           	</div>
               <!-- End product section -->



     		</section>
     		<!-- End content-->

 			<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        	<!-- End Tree Image -->
        	<div class="clearfix"></div>
        	</div>

