<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/checkout.js'/>"></script>

     <!-- Begin content-->
  	<section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
    
            <!-- Order Summary -->
            <div id="product" ng-controller="CheckoutController">
            	<div class="row">
                	<div class="checkout checkout-step1 span12">
                    	<h1 class="pb15">Checkout</h1>
                        <div class="account-create">
                        	<div class="progress-bar clearfix">
                            	<ol>
                                	<li class="first" id="login-progress-bar">
                						<h4><a href="/login">Login / register</a></h4>
            						</li>
                                    <li class="current" id="delivery-progress-bar">
                						<h4>Billing &amp; delivery</h4>
            						</li>
                                    <li class="" id="shipping-progress-bar">
                                        <h4>Postage options</h4>
                                    </li>
                                    <li class="" id="payment-progress-bar">
                						<h4>Payment method</h4>
            						</li>
                                    <li class="" id="overview-progress-bar">
                						<h4>Review &amp; complete</h4>
            						</li>
                                </ol>
                            </div>
                            <div class="head">
            					<h2>Registration</h2> 
        					</div>
                            <div class="checkout-text span11">
            					<p>Before placing an order please tell us some information about yourself. We'll use this to get in touch with you about your order if we need to. We promise to respect your privacy. Please be assured that we will never pass on your details to third party organisations and that your personal details are held securely and in strictest confidence.</p>
        					</div>
                            <div id="login" class="new-registration span11">

                                	<div class="section-title">
                                    	<h3>Personal details</h3>
                                        <hr class="divider">
                                    </div>
                                    <p>We promise to respect your privacy. Please be assured that we will never pass on your details to third party organisations and that your personal details are held securely and in strict confidence.</p>
                                    <p class="required fr">* Required Fields</p>
                                    <div class="span10">

                                    <form ng-submit="createNewOrder(shoppingCart)" >

                                    	<table class="create_new_account">
                                        	<tbody>
                                            	<tr>
                                                    <td class="label">
                                                    	<label for="prefix">
                                                        	<strong>Title</strong>
                                                       	</label>
                                                    </td>
                                                    <td class="value">
                                                    	<select data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.title" class="wide228" name="prefix" id="prefix" required>
                											<option value="">Please select</option>
                                   							<option value="Miss">Miss</option>
                                                            <option value="Mr">Mr</option>
                                                            <option value="Mrs">Mrs</option>
                                                            <option value="Ms">Ms</option>
                                                            <option value="Other">Other</option>
                                						</select>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                            	<tr>
                                                    <td class="label">

                                                    	<label for="firstName">
                                                        	<strong>First Name</strong>
                                                       	</label>
                                                    </td>
                                                    <td class="value">
                                                    	<input data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.firstName" type="text" value="" name="firstName" id="firstName" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                                <tr>
                                                    <td class="label">

                                                    	<label for="lastName">
                                                        	<strong>Last Name</strong>
                                                       	</label>
                                                    </td>
                                                    <td class="value">
                                                    	<input data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.lastName" type="text" value="" name="lastName" id="lastName" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                                <tr>
                                                    <td class="label">
                                                    	<label for="emailAddress">
                                                        	<strong>Email Address</strong>
                                                        </label>
                                                    </td>
                                                    <td class="value">
                                                    	<input data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.email" type="email" value="" name="emailAddress" id="emailAddress" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                                <tr ng-hide="shoppingCart.loginResponse.isGuest == true">
                                                    <td class="label">
                                                    	<label for="userPassword">
                                                        	<strong>Password</strong>
                                                        </label>
                                                    </td>
                                                    <td class="value">
                                                    	<input data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.password" type="password" value="" name="userPassword" id="userPassword" class="text" required="{{!shoppingCart.loginResponse.isGuest}}">
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>

                                                <tr ng-hide="shoppingCart.loginResponse.isGuest == true">
                                                    <td class="label">
                                                    	<label for="confirmPassword"><strong>Confirm Password</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.password" type="password" value="" name="confirmPassword" id="confirmPassword" class="text" name="userPassword" required="{{!shoppingCart.loginResponse.isGuest}}">
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>


                                             	<tr>
                                                    <td class="label">
                                                        <label for="addressField1"><strong>Address line 1</strong></label>
                                                    </td>
                                                    <td class="value">
                                                        <input data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.addressVo.addressLine1" type="text" value="" name="addressField1" id="addressField1" class="text" required>
                                                        <span class="required">*</span>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="label">
                                                        <label for="addressField2"><strong>Address line 2</strong></label>
                                                    </td>
                                                    <td class="value">
                                                        <input ng-model="shoppingCart.orderVo.customerByCustomerIdVo.addressVo.addressLine2" type="text" value="" name="addressField2" id="addressField2" class="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label">
                                                        <label for="addressField3"><strong>Address line 3</strong></label>
                                                    </td>
                                                    <td class="value">
                                                        <input ng-model="shoppingCart.orderVo.customerByCustomerIdVo.addressVo.addressLine3" type="text" value="" name="addressField3" id="addressField3" class="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label">
                                                        <label for="cityField"><strong>City</strong></label>
                                                    </td>
                                                    <td class="value">
                                                        <input ng-model="shoppingCart.orderVo.customerByCustomerIdVo.addressVo.city" type="text" value="" name="cityField" id="cityField" class="text" required>
                                                        <span class="required">*</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label">
                                                        <label for="county"><strong>Country</strong></label>
                                                    </td>
                                                    <td class="value">
                                                        <input ng-model="shoppingCart.orderVo.customerByCustomerIdVo.addressVo.county" type="text" value="" name="county" id="county" class="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label">

                                                        <label for="postalCode">
                                                            <strong>Postcode</strong>
                                                        </label>
                                                    </td>
                                                    <td class="value">
                                                        <input ng-model="shoppingCart.orderVo.customerByCustomerIdVo.addressVo.postCode" type="text" value="" name="postalCode" id="postalCode" class="text" required pattern="\+?[0-9, A-Z]{3,12}" >
                                                        <span class="required">*</span>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td class="label">
                                                    	<label for="tmr_hearaboutus">
                                                        	<strong>Where you hear about us?</strong>
                                            			</label>
                                                    </td>
                                                    <td class="value">
                                                    	<select data-ng-model="shoppingCart.orderVo.customerByCustomerIdVo.hdyhau"  class="wide228" name="tmr_hearaboutus" id="tmr_hearaboutus" required>
                                                            <option value="">Please select</option>
                                                            <optgroup label="Friends / family">
                                                                <option value="Recommended by a Friend">Recommended by a Friend</option>
                                                            </optgroup>
                                                            <optgroup label="Social media">
                                                                <option value="Facebook">Facebook</option>
                                                                <option value="Twitter">Twitter</option>
                                                            </optgroup>
                                                            <optgroup label="Blog">
                                                                 <option value="Other Blog">Other Blog</option>
                                                                 <option value="Our Blog">Our Blog</option>
                                                           	</optgroup>
                                                            <optgroup label="----------------">
																<option value="Goody Bag">Goody Bag</option>
																<option value="Website Search Engine">Website Search Engine</option>
                                                            </optgroup>
                                                            <option value="Other9">Other</option>
                                                        </select>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                            </tbody>
                                        </table>


                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr class="divider mt20">
                                    <div class="action_bottom">
                                    <input type="button" onclick="location.href='/login'" value="Cancel" class="btn">
                                    <input type="submit" value="Continue to billing & delivery" class="btn fr">
                                  </form>
                                </div>

                            </div>
                        </div>
                 	</div>
                </div>
            </div>
            <!-- End Order Summary--> 
            
  		</section>
	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="../resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>