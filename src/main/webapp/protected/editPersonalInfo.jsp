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
                                    <a href="/editPersonalInfo" id="side-nav-account_edit" class="current">Edit personal details</a>
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
           
            <!-- Edit Personal Information -->
    			<div class="account-create span9" id="personal-info">
      						<h1 class="pb15">My Account</h1>
                            <div class="dashboard">
                            	<div class="head mt20">
                            		<h2>Edit personal details</h2>
                            	</div>
                            	<div id="login" class="mt20">
                            		<form method="post" id="create_account" action="/userProfile">
                           		<div class="p30">
                                	<p class="required fr">* Required Fields</p>
                                	<div class="span6">
                            			<table class="edit_personal_info">
                                        	<tbody>
                                            	<tr>
                                                    <td class="label">
                                                    	<label for="prefix">
                                                        	<strong>Title</strong>
                                                       	</label>
                                                    </td>
                                                    <td class="value">
                                                    	<select class="wide228" name="prefix" id="prefix" required>
                											<option value="">Please select</option>        
                                   							<option value="Miss">Miss</option>
                                                            <option value="Mr" selected="selected">Mr</option>
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
                                                    	<input type="text" class="text" id="firstName" name="firstName" value="Rajat" required>
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
                                                    	<input type="text" class="text" id="lastName" name="lastName" value="Sharma" required>
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
                                                    	<input type="email" class="text" id="emailAddress" name="emailAddress" value="rajat.sharma@gmail.com" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                                <tr>
                                                    <td class="label">
                                                    	<label class="label" for="tmr_hearaboutus">
                                                        	<strong>Where you hear about us?</strong>
                                            			</label>
                                                    </td>
                                                    <td class="value">
                                                    	<select id="tmr_hearaboutus" name="tmr_hearaboutus" class="wide228" required>
                                                            <option value="">Please select</option>
                                                            <optgroup label="Friends / family">
                                                                <option value="1">Recommended by a Friend</option>
                                                            </optgroup>
                                                            <optgroup label="Social media">
                                                                <option value="2">Facebook</option>
                                                                <option value="3">Twitter</option>
                                                            </optgroup>
                                                            <optgroup label="Blog">
                                                                 <option value="4">Other Blog</option>
                                                                 <option value="5">Our Blog</option>
                                                           	</optgroup>
                                                            <optgroup label="----------------">
																<option value="6">Goody Bag</option>
																<option value="7">Website Search Engine</option>
                                                            </optgroup>
                                                            <option value="9">Other</option>
                                                        </select>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                            </tbody>
                                        </table>      								
                            		</div>
                                	<div class="clearfix"></div>
                                </div>
                                <div class="p30">
                                	<h3>Change your password</h3>
                                	<hr class="divider">
                                	<div class="span6">
                            			<table class="change_password">
                                        	<tbody>
                                            	<tr>
                                                    <td class="label">
                                                    	<label for="current_password">
                                                        	<strong>Current password</strong>
                                                        </label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="password" class="text" id="current_password" name="current_password">
                                                 	</td>
                                             	</tr>
                                                <tr>
                                                    <td class="label">
                                                    	<label for="password">
                                                        	<strong>New password</strong>
                                                        </label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="password" class="text" id="password" name="password">                                                     
                                                 	</td>
                                             	</tr>
                                                <tr>
                                                    <td class="label">
                                                    	<label for="confirmation">
                                                        	<strong>Confirm new password</strong>
                                                        </label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="password" class="text" id="confirmation" name="confirmation">
                                                 	</td>
                                             	</tr>
                                            </tbody>
                                        </table>      								
                            	</div>
                                	<div class="clearfix"></div>
                                </div>
                                <hr class="divider">
                                <div class="action_bottom">
                                  <input type="submit" class="btn fr" value="Save my personal details">
                                </div>
                                </form>
                            	</div>
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