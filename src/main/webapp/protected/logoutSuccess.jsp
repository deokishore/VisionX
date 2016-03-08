<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

     <!-- Begin content-->
   	<section id="content" class="row clearfix pb15"> 
    
            <!-- Begin Breadcrumbs -->
            
            <!-- End Breadcrumbs --> 
           
            <!-- Logout -->
            	<div class="my-account account-create span12">
					<h1>My account</h1>
					<div class="logged-out">
                        <div class="head row">
                            <h2 class="">You have now logged out of your account</h2>
                        </div>
                        <div class="my-account-text">
                            <p>You have successfully logged out of your account and will be redirected to the 
                            homepage in 5 seconds.</p>
                        </div>
                	</div>
					<script type="text/javascript">
					//&lt;![CDATA[
						setTimeout(function(){ location.href = '/'},5000);
					//]]&gt;
					</script>
				</div>	
            <!-- End Logout --> 

  		</section>
   	 <!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>