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
                            <a class="nav-selected" href="" id="iside-nav-overview">My account</a>
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
                                    <a href="/orderHistory" id="side-nav-orders">
                                    Order history &amp; reorder</a>
                                </li>
                                <li class="last">
                                    <a href="/manageSubscriptions" id="side-nav-newsletter" class="current">
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
           
            <!-- Edit Personal Information -->
            	<div class="account-create span9" id="personal-info">
      						<h1 class="pb15">My Account</h1>
                            <form method="post" id="manage_subscription" action="/">
                            	<div class="dashboard">                           
                            	<div class="head mt20">
                            		<h2>Email subscription(s)</h2>
                            	</div>
                                <div class="subscriptions mt20">
                            		<ul class="subscribe stylenone">
                                        <li>
                                            You are currently subscribed to our Botanical Bulletin email updates.                        				</li>
                                    </ul>
                                    <hr class="divider">
                                    <div class="action_bottom">
                                      <input type="button" class="btn fl" value="Remain subscribed" onClick="location.href='/userProfile'">
                                      <input type="submit" class="btn fr" value="Unsubscribe">
                                    </div>
                            	</div>
                            </div>
                            </form>
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