<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
   	<section id="content" class="clearfix pb15 row"> 
    
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
           <!-- Customer Account -->
           <div id="my-account" class="account-create my-account span9">
               <h1 class="title clearfix">My Account</h1>
               <div class="dashboard">
                    <ul class="messages">
                    	<li class="success-msg">
                    		<h5>Success</h5>
                    		<ul class="stylenone">
                    			<li>Thank you for registering with Tamaar Skincare.</li>
                    		</ul>
                    	</li>
                    </ul>
                    <div class="welcome-msg pt20">
                        <p>Hello Mr Rajat  Sharma, welcome to your membership area.</p>
                    </div>
                    <div class="head">
                        <h2>Account overview</h2>
                    </div>
                    <div class="account-info row">
                        <div class="checkout-text">
                            <p style="">We promise to respect your privacy. Please be assured that we will never pass on your details to third party organisations and that your personal details are held securely and in strict confidence.</p>
                        </div>
                        <div class="section-title row">
                            <h3>Personal details</h3>
                            <hr class="divider">
                        </div>
                        <div class="contact-info">
                            <div class="span4">
                                <div class="sub-title">
                                    <h4 class="bold p0">Contact information</h4>
                                    <span class="edit fr bold" style="margin-top:-14px;">
                                        <a href="/editPersonalInfo" id="Edit_Personal_Info">Edit</a>
                                    </span>
                                    <hr class="divider">
                                </div>
                                <div class="contact-details">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="label">
                                                    <label><strong>Name</strong></label>
                                                </td>
                                                <td class="value">
                                                    <span>Mr. Rajat Sharma</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label><strong>Email Address</strong></label>
                                                </td>
                                                <td class="value">
                                                    <span>rajat.sharma@gmail.com</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="sub-title"><a href="/changePassword" id="edit-password" class="bold">Change password</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="span4">
                                <div class="sub-title">
                                    <h4 class="bold p0">Email subscription(s)</h4>
                                    <span class="edit fr bold" style="margin-top:-14px;">
                                        <a href="/manageSubscriptions" id="edit-subscription">Edit</a>
                                    </span>
                                    <hr class="divider">
                                </div>
                                <div class="subscriptions">
                                    <p class="pt10">You are currently subscribed to our Botanical Bulletin email updates.</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="billing-info row">
                        <div class="section-title row">
                            <h3>Billing &amp; delivery addresses</h3>
                            <hr class="divider">
                        </div>
                        <div class="address-details">
                            <div class="span4">
                                <div class="sub-title">
                                    <h4 class="bold p0">Primary billing address</h4>
                                    <span class="edit fr bold" style="margin-top:-14px;">
                                        <a href="/newAddress" id="add-billing-address">Add</a>
                                    </span>
                                    <hr class="divider">
                                </div>
                                <dl>
                                <p class="pt10">You have no saved addresses.</p>
                                </dl>
                                <ul class="stylenone nomargin">
                                	<li class="sub-title">
                                    <a href="/newAddress" id="add-saved-address" class="bold">Add new address</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="span4">
                                <div class="sub-title">
                                    <h4 class="bold p0">Primary delivery address</h4>
                                    <span class="edit fr bold" style="margin-top:-14px;">
                                        <a href="/newAddress" id="add-shipping-address">Add</a>
                                    </span>
                                    <hr class="divider">
                                </div>
                                <div class="shipping-info">
                                    <p class="pt10">You have no saved addresses.</p>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
           </div>
           <!-- End Customer Account -->

  		</section>
   	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="../resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>