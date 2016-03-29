<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
    <section id="content" class="clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            <div class="span12">
                <div class="breadcrumb clearfix">
                	<span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/"><span itemprop="title">Home</span></a></span> 
                	<span class="arrow-space">&gt;</span>
                	<strong>Contact Us</strong>
                </div>
            </div>
            <!-- End Breadcrumbs --> 
    
            <!-- Contact Us -->
            	<div id="page" class="row userpage-content">
                	<div id="contactus" class="span12 details">
                    	<h1 class="p25">Contact Us</h1>
                        <div class="span5 col2-set fl">
                        	<div class="section-title">
                                <h3>Customer enquiries</h3>
                                <p>For simple, hassle-free shopping and skincare advice, our team of trained advisors are available six days a week. </p>
                            </div>
                            <div class="section-title">
                                <h3>By phone</h3>
                                <p>Speak to one of our friendly advisors for expert skincare advice, one-to-one help with our range or to place an order.</p>
                            </div>
                            <div class="phone">Call us on<strong> +44 (0)1234 567890</strong></div>
                            <dl class="clearfix">
                              <dt>Monday to Friday:</dt>
                              <dd>8.00am - 10.00pm</dd>
                                    <dt>Saturday:</dt><dd>9.00am - 4.00pm </dd>
                                    <dt>Sunday* :</dt>
                                    <dd>10.00am - 4.00pm</dd> 
                                    <dt>Bank Holidays:</dt>
                                <dd>10.00am - 4.00pm</dd> 
                                </dl>
                            <p>*Excluding Easter Sunday</p>
                            <div class="section-title">
                                <h3>Live Help</h3>
                                <p>A quick and easy way to contact us. If you have any questions  about your order,  an advisor is just a click away.</p>
                                <p>If you cannot see the link below, either all of our advisors are busy or Live Help is currently not available.</p>
                            </div>
                            <div class="section-title">
                                <h3>By email</h3>
                                <p>We always welcome the opportunity to speak to our customers directly in order to fully understand your skincare needs and queries.  However, if you would prefer to email us, our address is:</p>
								<div class="email">
                                	<p class="sub-title">
                                    	<a href="mailto:info@tamaarskincare.com" class="sub-title">
                                        	info@tamaarskincare.com
                                    	</a>
                                   	</p>
                                </div>
                            </div>
                        </div>
                        <div class="span5 fr borderyln pl15 pt10 pb10">
                        	<div class="section-title">
                                <h3>Query</h3>
                                <p>For any query just fill this form!!</p>
                            </div>
                        	<div id="contact-form">
                                <h2 class="title">Contact Form</h2>
                                <form action="/" id="customer_login" method="post">
                                    <label for="customer_fullname" class="label">
                                        <strong>Full Name</strong>
                                    </label>
                                    <input type="text" value="" name="customer_fullname" id="customer_fullname" class="text" required>

                                    <label for="customer_phone" class="label">
                                        <strong>Phone Number</strong>
                                    </label>
                                    <input type="text" value="" name="customer_phone" id="customer_phone" class="text" pattern="\+?[0-9]{10,20}" required>
                                    
                                    <label for="customer_email" class="label">
                                        <strong>Email Id</strong>
                                    </label>
                                    <input type="email" value="" name="customer_email" id="customer_email" class="text" required>
                                    
                                    <label for="customer_message" class="label">
                                        <strong>Message</strong>
                                    </label>
                                    <textarea name="customer_message" id="customer_message" required></textarea>

                                    <div class="action_bottom pt20">
                                        <input class="btn" type="submit" value="Submit" />
                                        <input class="btn" type="reset" value="Reset" />
                                  </div>
                                  </form>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <hr class="divider">
                        <div class="company-info">
                        	<div class="span5">
                            	<div class="section-title">
                                <h3>Company information</h3>
                                <div class="vcard">
                                    <h2>Tamaar Skin Care</h2>
                                    <div class="adr pt10">
                                    <div> <span class="street-address">56, Vormon Street Lane</span></div>
                                    <div><span class="street-address">1, Rembrandt Close<br>
                                      Postal: E14 3CA <br>
                                      London, UK </span></div>
                                </div>
                                </div>
                                <p class="sub-title pt10">
                                    <a class="sub-title" href="mailto:info@tamaarskincare.com">
                                        info@tamaarskincare.com
                                    </a>
                                </p>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            <!-- End Contact Us --> 
    
  		</section>
	<!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="../resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>