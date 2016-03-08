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
                                    <a href="/billingAddress" id="side-nav-address_book">
                                    Billing &amp; delivery addresses</a>
                                </li>
                                <li>
                                    <a href="/newAddress" id="side-nav-add_new_address">Add a new address</a>
                                </li>
                                <li>
                                    <a href="/orderHistory" id="side-nav-orders" class="current">
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
    			<div id="order-history" class="my-account account-create span9" >
      						<h1 class="pb15">My Account</h1>                         
                            	<div class="head mt20">
                            		<h2>Order history</h2>
                            	</div>
                                <div class="my-orders mt20">
                            		<p class="pl15">Listed below are all your orders placed on our website over the last 12 months. Please note, some previous orders may not be available to reorder. This is due to an item in the order no longer being available. If you would like information on orders you cannot see below or have any other queries, please call us on +44 (0)1234 567890.
                                    
                                    <table class="data-table" id="my-orders-table">
                                        <colgroup><col width="1">
                                            <col width="1">
                                            <col>
                                            <col>
                                            <col width="1">
                                            <col width="1">
                                        </colgroup>
            						<thead>
                						<tr class="first last">
                    <th>Date</th>
                    <th>Order number</th>
                    <th>Order sent to</th>
                    <th>Delivery Method</th>
                    <th><span class="nobr">Order total</span></th>
                    <th><span class="nobr">Order status</span></th>
                    <th>&nbsp;</th>
                </tr>
            						</thead>
            						<tbody>
                                        <tr class="first odd">
                            				<td><span class="nobr">22/06/2015</span></td>
                            				<td><a href="/orderDetails">202473158</a></td>
                            				<td><span class="nobr">Mr Mehul Sharma</span></td>
                            				<td>Tamaar - Standard Service - 3-5 working days</td>
                            				<td><span class="price">&pound;42.75</span></td>
                            				<td><em>Successful</em></td>
                        				</tr>
                                        <tr class="last even">
                            				<td><span class="nobr">22/06/2015</span></td>
                            				<td><a href="/orderDetails">202473158</a></td>
                            				<td><span class="nobr">Mr Mehul Sharma</span></td>
                            				<td>Tamaar - Standard Service - 3-5 working days</td>
                            				<td><span class="price">&pound;42.75</span></td>
                            				<td><em>Successful</em></td>
                        				</tr>
                                    </tbody>
        						</table>
                            	</div>
    					</div>
            <!-- End Edit Personal Information --> 
	
  		</section>
   	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>