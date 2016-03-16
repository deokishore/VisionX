<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="<c:url value='/resources/js/pages/LoginController.js'/>"></script>

     <!-- Begin content-->
	<section id="content" class="clearfix pb15">

            <!-- Begin Breadcrumbs -->

            <!-- End Breadcrumbs -->

            <!-- Customer Login -->
            	<div id="customer-login">
  					<div class="row">
    					<div class="span12" id="login">
    						<!--
      						<h1>Sign in</h1>
      		                <div class="span5 pt20 greybordergt" ng-controller="LoginController">
                            	<h3 class="p15">Existing Customer</h3>
                            	<div class="alert alert-error" ng-show="error">{{errorMessage}}</div>
								<form method="post" id="customer_login"  ng-submit="accountLogin(customerVo)">
                                    <label class="label" for="customer_email"><strong>Email Address</strong></label>
                                    <input type="email" class="text" id="customer_email" name="customer_email" value="" ng-model="customerVo.email" required>

                                    <label class="label" for="customer_password"><strong>Password</strong></label>
                                    <input type="password" size="16" class="text" id="customer_password" name="customer_password" value="" ng-model="customerVo.password" required>

                                    <a onclick="showRecoverPasswordForm();return false;" href="#">Forgot your password?</a>

                                    <div class="action_bottom">
                                        <input type="submit" value="Sign In" class="btn" name="usersignin" id="usersignin">
                                    </div>
      						    </form>
                            </div>
                            -->




										<div class="span5 pt20 greybordergt">
										<h3 class="p15">Sign In</h3>
											<c:url var="loginUrl" value="/login" />
											<form action="${loginUrl}" method="post" class="form-horizontal">

												<c:if test="${param.error != null}">
													<div class="alert alert-danger">
														<p>Invalid username and password.</p>
													</div>
												</c:if>

												<c:if test="${param.invalid != null}">
													<div class="alert alert-danger">
														<p>Invalid username and password.</p>
													</div>
												</c:if>



												<c:if test="${param.logout != null}">
													<div class="alert alert-success">
														<p>You have been logged out successfully.</p>
													</div>
												</c:if>

												<div class="input-group input-sm">
													<label for="customer_email"><strong>Email Address</strong></label>
													<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
												</div>
												<div class="input-group input-sm">
													<label for="customer_email"><strong>Password</strong></label>
													<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
												</div>

												<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />

												<div class="action_bottom">
													<input type="submit" value="Log innnn" class="btn">
												</div>
											</form>
										</div>





                            <div class="span6 pt20">
                            	<h3 class="p15">New to Tamaar?</h3>
                                <p style="color:#beb198;">
                                  If this is your first order with us online, select continue for a simple, hassle-free online shopping experience.
                               	</p>
                                <div class="action_bottom">
									<input type="button" value="Continue" class="btn" name="newUserSignUp" id="newUserSignUp" onClick="location.href='/checkout/customerRegistration?isGuest=false'">
								</div>
                            </div>
    					</div>
    					<div class="span6" style="display:none;" id="recover-password">
      						<h2>Reset Password</h2>
      						<p class="note">We will send you an email to reset your password.</p>
							<form method="post" action="#" accept-charset="UTF-8">

                          		<label class="label" for="email">Email Address</label>
                          		<input type="email" class="text" id="recover-email" name="email" size="30" value="">

                          		<div class="action_bottom">
                                <input type="submit" value="Submit" class="btn">
                          		<span class="note">or <a onclick="hideRecoverPasswordForm();return false;" href="#">Cancel</a>
                                </span>
                                </div>
                          </form>
    					</div>
  					</div>
				</div>
                <script type="text/javascript">
				  function showRecoverPasswordForm() {
					document.getElementById('recover-password').style.display = 'block';
					document.getElementById('login').style.display='none';
				  }

				  function hideRecoverPasswordForm() {
					document.getElementById('recover-password').style.display = 'none';
					document.getElementById('login').style.display = 'block';
				  }

  				if (window.location.hash == '#recover') { showRecoverPasswordForm() }
			</script>
            <!-- End Customer Login -->

  		</section>
	<!-- End content-->

 		<!--Begin Tree Image -->
            <div class="tmrtree span12">
                <img src="resources/images/bg-footer.png" alt="Tamaar Skin Care">
            </div>
        <!-- End Tree Image -->
        <div class="clearfix"></div>