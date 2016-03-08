<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


     <!-- Begin content-->
     		<section id="content" class="clearfix pb15 row">
      
              <!-- Begin Breadcrumbs -->
              <div class="span12">
                  <div class="breadcrumb clearfix">
                  	<span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/"><span itemprop="title">Home</span></a></span> 
                  	<span class="arrow-space">&gt;</span>
                      <span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/products"><span itemprop="title">Products</span></a></span>
                      <span class="arrow-space">&gt;</span>
                  	<strong>Page 1 of 1</strong>
                  </div>
              </div>
              <!-- End Breadcrumbs --> 
      
              <!-- Products section -->
              <div class="products" ng-controller="ProductsController">

                  <div class="span12 p20">
                  	  <h3 class="pb15"><strong>Our Products</strong></h3>
                      <p>At Tamaar, we understand that sensitive skin comes in many forms, whether it be dry or oily,  youthful or mature. Our philosophy is dedicated to producing high performance products that won't irritate your skin. That's why we only use premium-grade organic ingredients and avoid both synthetic and natural irritants.</p>
              	  </div>

                <div  ng-repeat="product in productList">

                    <div class="product span4">
                          <div class="image borderyln">
                              <a href="/product">
                                  <img alt="Anti Wrinkle Cream" src="{{product.imagePath}}">
                              </a>
                          </div>

                          <div class="details">
                             <a class="clearfix" href="/product?productId={{product.productId}}">
                                    <h4 class="title">{{product.productId}}</h4>
                                    <span class="vendor">£ {{product.priceVo.amount}}</span>
                                    <input type="button" class="btn" value="View Details" name="viewdetails" id="viewdtls1">
                             </a>
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

