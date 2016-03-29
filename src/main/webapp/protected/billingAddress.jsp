<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
	<section id="content" class="row clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    		
           
           <!-- Side Bar Left -->
           	<aside class="fl pl15">
           		<ul id="left-hand-nav">
               		<li>
                            <a class="nav-selected" href="/userProfile" id="iside-nav-overview">My account</a>
                            <ul>
                                <li>
                                    <a href="/editPersonalInfo" id="side-nav-account_edit">Edit personal details</a>
                               </li>
                                <li>
                                    <a href="/billingAddress" id="side-nav-address_book" class="current">
                                    Billing &amp; delivery addresses</a>
                                </li>
                                <li>
                                    <a href="/newAddress" id="side-nav-add_new_address">Add a new address</a>
                                </li>
                                <li>
                                    <a href="/orderHistory" id="side-nav-orders">
                                    Order history &amp; reorder</a>
                                </li>
                                <li class="last">
                                    <a href="/manageSubscriptions" id="side-nav-newsletter">
                                    Email subscription(s)</a>
                               </li>
                                <li>
                                    <a class="link-logout" href="/logoutSuccess" id=
                                    "side-nav-logout">Log out</a>
                                </li>
                            </ul>
                        </li>
                </ul>
           </aside>
           <!-- End Side Bar Left -->

           <!-- Order Summary -->
             <div class="my-account account-create span9">
             	<h1 class="pb15">My account</h1>
                <div class="head">
                    <h2>Delivery & Billing addresses</h2>
                </div>
                <div class="address-book">
                	<div id="login" class="new-address">
                    	<div class="section-title">
                        	<h3>Default addresses</h3>
                            <hr class="divider">
                        </div>
                        <div class="clearfix"></div>
                        <div class="address-fields">
                        	<div class="fl">
                            	<div class="details-title">
                                    <h4>Default billing address</h4>
                                    <div class="clearfix"></div>
                                    <hr class="divider">
                                </div>
                                <address>
                                            	<dl>
                                                    <dt>Title</dt><dd>Mr</dd>
                                                	<dt>Name</dt><dd>Rajat Kumar</dd>
                                                    <dt>Address</dt><dd class="address-1">Flat 6</dd>
                                                    <dd class="address-2">Vermeer Court</dd>
                                                    <dd class="address-3">1 Rembrandt Close</dd>
                                                    <dt>City</dt><dd class="address-city">London</dd>
                                                	<dt>County / region</dt><dd class="address-Region"></dd>
                                                	<dt>Postcode</dt><dd>E14 3XA</dd>
                                                	<dt>Country</dt><dd>United Kingdom</dd>
                                                </dl>
                                            </address>
                             	<div class="clearfix"></div>
                                <p class="pt20 sub-title"><a href="/editBilling" id="edit-default-billing">Edit billing address</a></p>
                          	</div>
                            <div class="fr">
                            	<div class="details-title">
                                    <h4>Default delivery address</h4>
                                    <div class="clearfix"></div>
                                    <hr class="divider">
                                </div>
                                <address>
                                	<dl>
                                                    <dt>Title</dt><dd>Mr</dd>
                                                	<dt>Name</dt><dd>Rajat Kumar</dd>
                                                    <dt>Address</dt><dd class="address-1">Flat 6</dd>
                                                    <dd class="address-2">Vermeer Court</dd>
                                                    <dd class="address-3">1 Rembrandt Close</dd>
                                                    <dt>City</dt><dd class="address-city">London</dd>
                                                	<dt>County / region</dt><dd class="address-Region"></dd>
                                                	<dt>Postcode</dt><dd>E14 3XA</dd>
                                                	<dt>Country</dt><dd>United Kingdom</dd>
                                                </dl>
                             	</address>
                                <div class="clearfix"></div>
                                <p class="pt20 sub-title"><a href="/shipper" id="edit-default-billing">Edit delivery address</a></p>
                             </div>
                     	</div>
                        <div class="clearfix"></div>
                        <div class="section-title pt20">
                            <h3>Additional address entries</h3>
                        </div>
                        <div class="address-block">
                            <p>You have no additional address entries in your address book.</p>
                            <ul class="add stylenone sub-title">    
                                <li>
                                    <a href="/newAddress" id="new-address"><span>Add New Address</span></a>
                                </li>
                            </ul>
                         </div>
                         <hr class="divider mt20">
                      </form>
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