<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
   	<section id="content" class="row clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            <div class="span12 pt20">
                <div class="breadcrumb clearfix">
                	<span itemtype="http://data-vocabulary.org/Breadcrumb" itemscope=""><a itemprop="url" title="Tamaar" href="/"><span itemprop="title">Home</span></a></span> 
                    <span class="arrow-space">&gt;</span>
                	<strong>Delivery Information</strong>
                </div>
            </div>
            <!-- End Breadcrumbs --> 
    		
            <!-- Side Bar Left -->
           <aside class="fl pl15">
           		<ul id="left-hand-nav">
                    	<li><a href="/contactUs">Contact us</a></li>
                        <li><a class="nav-selected" href="/deliveryInformation">Delivery information</a></li>
                        <li><a href="/returnsRefunds">Returns and refunds</a></li>
                        <li>
                            <a href="javascript:void(0);" id="iside-nav-overview">Help</a>
                            <ul>
                                <li>
                                    <a href="/termsConditions" id="side-nav-company">Terms and conditions
                                    </a>
                               </li>
                                <li>
                                    <a href="/privacyPolicy" id="side-nav-mission">
                                    Privacy policy</a>
                                </li>
                                <li>
                                    <a href="/sitemap" id="side-nav-vision">Sitemap</a>
                                </li>
                                <li class="last">
                                    <a href="/faqs" id="side-nav-vision">Faqs</a>
                                </li>
                            </ul>
                        </li>
                    </ul>   
           </aside>
           <!-- End Side Bar Left -->
           
           <!-- Customer Order Details -->
           <div id="delivery-information" class="span9">
           		<div class="row">
                    	<p class="intro">Please see our delivery options below.</p>
      					<h2>UK delivery options</h2>
                        <hr class="divider">
                        <p>All of our UK deliveries are made using Royal Mail and include delivery to Northern Ireland &amp; the Channel Islands.</p>
                    </div>
                <div class="row">
                        <h3>Orders over &pound;50* </h3>
                        <hr class="divider">
                        <div class="span4">
                    		<p><strong>Standard Service</strong></p>
                    	</div>
                        <div class="span4">
                            <p> 3 to 5 working days</p>
                        </div>
                        <div class="span3">
                            <p> Free </p>
                        </div>
                        <div class="span4">
                    		<p><strong>Recorded Standard Service</strong></p>
                    	</div>
                        <div class="span4">
                            <p>3 to 5 working days</p>
                        </div>
                        <div class="span3">
                            <p>&pound;1.25</p>
                        </div>
                    </div>
                <div class="row">
                        <h3>Orders under &pound;50</h3>
                        <hr class="divider">
                        <div class="span4">
                    		<p><strong>Standard Service</strong></p>
                    	</div>
                        <div class="span4">
                            <p> 3 to 5 working days</p>
                        </div>
                        <div class="span3">
                            <p> &pound;3.75</p>
                        </div>
                        <div class="span4">
                    		<p><strong>Recorded Standard Service</strong></p>
                    	</div>
                        <div class="span4">
                            <p>3 to 5 working days</p>
                        </div>
                        <div class="span3">
                            <p> &pound;5.00</p>
                        </div>
                    </div>
                <div class="row">
                    <h2>All orders</h2>
                    <hr class="divider">
                    <div class="span4">
                        <p><strong>Priority Service  </strong></p>
                    </div>
                    <div class="span4">
                        <p>2 to 3 working days </p>
                    </div>
                    <div class="span3">
                        <p> &pound;5.25 </p>
                    </div>
                    <div class="span4">
                        <p><strong>Recorded Priority Service  </strong></p>
                    </div>
                    <div class="span4">
                        <p>2 to 3 working days </p>
                    </div>
                    <div class="span3">
                        <p> &pound;6.50 </p>
                    </div>
                     <div class="span4">
                        <p><strong>Special Delivery Next Day (Signed For Service)</strong></p>
                    </div>
                    <div class="span4">
                        <p>Next working day - deliveries can be made between 7am and 9pm</p>
                    </div>
                    <div class="span3">
                        <p>&pound;9.25</p>
                    </div>
              	</div>
                <div class="row">
                	<p><strong><em>Please Note:</em></strong><em> Special Delivery - while we make every effort to get your order out on the same day, if you place it after midday, there is a possibility that it will be sent the following day. In addition, orders placed on a Friday, Saturday or Sunday will be delivered on Tuesday.</em></p>
                </div>
                <div class="row">
                    <h2>Republic of Ireland  and Europe delivery options</h2>
                    <hr class="divider">
                    <div class="span4">
                        <p><strong>Standard Service</strong></p>
                    </div>
                    <div class="span4">
                        <p>7 to 10 working days</p>
                    </div>
                    <div class="span3">
                        <p>&pound;5.70</p>
                    </div>
                    <div class="span4">
                        <p><strong>International Signed For Service</strong></p>
                    </div>
                    <div class="span4">
                       <p>7 to 10 working days</p>
                    </div>
                    <div class="span3">
                        <p>&pound;11.70</p>
                    </div>
              	</div>
                <div class="row">
                    <h2>Rest of the World delivery options</h2>
                    <hr class="divider">
                    <div class="span4">
                        <p><strong>Standard Service</strong></p>
                    </div>
                    <div class="span4">
                        <p>10 to 14 working days</p>
                    </div>
                    <div class="span3">
                        <p>&pound;15.00</p>
                    </div>
                    <div class="span4">
                        <p><strong>International Signed For Service</strong></p>
                    </div>
                    <div class="span4">
                       <p>10 to 14 working days</p>
                    </div>
                    <div class="span3">
                        <p>&pound;21.00</p>
                    </div>
              	</div>
                <div class="row">
                    <h2>Delivery FAQs</h2>
                    <hr class="divider">
                    <ul class="nobullet" style="list-style:none outside none;">
   						<li>
                        	<strong>My order is being shipped outside the European Union (EU). Will I have to pay 
                            customs charges?</strong>
                    	</li>
 						<li>If your order is being shipped outside the European Union (EU), customs charges and taxes 
                        may apply that you will need to pay directly. Please check these requirements with the 
                        relevant authority before placing an order.</li>
						<li>We may at our discretion require payment by bank transfer rather than by credit card prior
                        to shipping. </li>
 						<li><strong>I have not received my order, what should I do?</strong></li> 
						<li>If you have chosen to have your order despatched via standard UK delivery, please allow up to 7 working days for your order to arrive. If it is already after 7 working days, we recommend that you first contact your local sorting office to check if they are holding it for you. If they do not have your parcel, please call us on  +44 (0)1234 567890 and we will be happy to investigate this for you.<br><br>
    
   If you have chosen to have your order despatched via special or recorded signed-for delivery, including our International signed-for service, please call us on  +44 (0)1234 567890 and we will be happy to investigate this for you.</li>
   
   <li><strong>Can I track my order?</strong></li>
   <li>We despatch standard UK orders using Royal Mail standard delivery - a service that currently cannot be tracked.<br><br> If you chose to have your order despatched via special or recorded signed-for delivery, including our International signed-for service, please call us on  +44 (0)1234 567890 and we will be happy to update you.  </li>
 
  <li><strong>Do you deliver to BFPO addresses?</strong></li>
 
 <li>Yes, please enter your delivery address as normal during the checkout,  selecting BFPO in the country field.</li>
 
 <li><strong>Can I have my order delivered to multiple addresses?</strong></li>
 
 <li>If you would like to send orders to more than one address, please place a separate order for each delivery address.</li>
 </ul>
              	</div>
          	</div>
           <!-- End Customer Order Details -->
                
  		</section>
	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>