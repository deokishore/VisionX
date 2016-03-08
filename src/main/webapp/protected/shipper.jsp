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
                    	<h1 class="pb15">Edit Address</h1>
                        <div class="address-fields">
                            <div class="head">
            					<h2>Edit Address</h2> 
        					</div>
                            <div class="checkout-text">
            					<p>
                                	<strong>Please note:</strong> 
                                    If the name used on your delivery address is different to your billing address your invoice(s) will be sent to the billing address.
                                </p>
        					</div>
                            <div id="login" class="new-address">
                            	<form id="addressForm" method="post" action="/billingAddress">
                                	<div class="section-title">
                                    	<h3>Edit Address</h3>
                                        <hr class="divider">
                                    </div>
                                    <p class="required fr">* Required Fields</p>
                                    <div class="span6">
                                    	<table class="create_new_account">
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
                                                    	
                                                    	<label for="country_id"><strong>Country</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<select title="Country" class="validate-select wide228" id="country_id" name="country_id" required><option value="">Please select....</option><optgroup label="Favourites"><option value="GG">Guernsey</option><option value="IM">Isle of Man</option><option value="JE">Jersey</option><option selected="selected" value="GB">United Kingdom</option></optgroup><option value=""> </option><option value="AF">Afghanistan</option><option value="AL">Albania</option><option value="DZ">Algeria</option><option value="AS">American Samoa</option><option value="AD">Andorra</option><option value="AO">Angola</option><option value="AI">Anguilla</option><option value="AQ">Antarctica</option><option value="AG">Antigua and Barbuda</option><option value="AR">Argentina</option><option value="AM">Armenia</option><option value="AW">Aruba</option><option value="AU">Australia</option><option value="AT">Austria</option><option value="AZ">Azerbaijan</option><option selected="selected" value="GB">BFPO</option><option value="BS">Bahamas</option><option value="BH">Bahrain</option><option value="BD">Bangladesh</option><option value="BB">Barbados</option><option value="BY">Belarus</option><option value="BE">Belgium</option><option value="BZ">Belize</option><option value="BJ">Benin</option><option value="BM">Bermuda</option><option value="BT">Bhutan</option><option value="BO">Bolivia</option><option value="BA">Bosnia and Herzegovina</option><option value="BW">Botswana</option><option value="BV">Bouvet Island</option><option value="BR">Brazil</option><option value="IO">British Indian Ocean Territory</option><option value="VG">British Virgin Islands</option><option value="BN">Brunei</option><option value="BG">Bulgaria</option><option value="BF">Burkina Faso</option><option value="BI">Burundi</option><option value="KH">Cambodia</option><option value="CM">Cameroon</option><option value="CA">Canada</option><option value="CV">Cape Verde</option><option value="KY">Cayman Islands</option><option value="CF">Central African Republic</option><option value="TD">Chad</option><option value="CL">Chile</option><option value="CN">China</option><option value="CX">Christmas Island</option><option value="CC">Cocos [Keeling] Islands</option><option value="CO">Colombia</option><option value="KM">Comoros</option><option value="CG">Congo - Brazzaville</option><option value="CD">Congo - Kinshasa</option><option value="CK">Cook Islands</option><option value="CR">Costa Rica</option><option value="HR">Croatia</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="CI">Côte d’Ivoire</option><option value="DK">Denmark</option><option value="DJ">Djibouti</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="EC">Ecuador</option><option value="EG">Egypt</option><option value="SV">El Salvador</option><option value="GQ">Equatorial Guinea</option><option value="ER">Eritrea</option><option value="EE">Estonia</option><option value="ET">Ethiopia</option><option value="FK">Falkland Islands</option><option value="FO">Faroe Islands</option><option value="FJ">Fiji</option><option value="FI">Finland</option><option value="FR">France</option><option value="GF">French Guiana</option><option value="PF">French Polynesia</option><option value="TF">French Southern Territories</option><option value="GA">Gabon</option><option value="GM">Gambia</option><option value="GE">Georgia</option><option value="DE">Germany</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GR">Greece</option><option value="GL">Greenland</option><option value="GD">Grenada</option><option value="GP">Guadeloupe</option><option value="GU">Guam</option><option value="GT">Guatemala</option><option value="GG">Guernsey</option><option value="GN">Guinea</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HT">Haiti</option><option value="HM">Heard Island and McDonald Islands</option><option value="HN">Honduras</option><option value="HK">Hong Kong SAR China</option><option value="HU">Hungary</option><option value="IS">Iceland</option><option value="IN">India</option><option value="ID">Indonesia</option><option value="IQ">Iraq</option><option value="IE">Ireland</option><option value="IM">Isle of Man</option><option value="IL">Israel</option><option value="IT">Italy</option><option value="JM">Jamaica</option><option value="JP">Japan</option><option value="JE">Jersey</option><option value="JO">Jordan</option><option value="KZ">Kazakhstan</option><option value="KE">Kenya</option><option value="KI">Kiribati</option><option value="KW">Kuwait</option><option value="KG">Kyrgyzstan</option><option value="LA">Laos</option><option value="LV">Latvia</option><option value="LB">Lebanon</option><option value="LS">Lesotho</option><option value="LR">Liberia</option><option value="LY">Libya</option><option value="LI">Liechtenstein</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="MO">Macau SAR China</option><option value="MK">Macedonia</option><option value="MG">Madagascar</option><option value="MW">Malawi</option><option value="MY">Malaysia</option><option value="MV">Maldives</option><option value="ML">Mali</option><option value="MT">Malta</option><option value="MH">Marshall Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MU">Mauritius</option><option value="YT">Mayotte</option><option value="MX">Mexico</option><option value="FM">Micronesia</option><option value="MD">Moldova</option><option value="MC">Monaco</option><option value="MN">Mongolia</option><option value="ME">Montenegro</option><option value="MS">Montserrat</option><option value="MA">Morocco</option><option value="MZ">Mozambique</option><option value="MM">Myanmar [Burma]</option><option value="NA">Namibia</option><option value="NR">Nauru</option><option value="NP">Nepal</option><option value="NL">Netherlands</option><option value="AN">Netherlands Antilles</option><option value="NC">New Caledonia</option><option value="NZ">New Zealand</option><option value="NI">Nicaragua</option><option value="NE">Niger</option><option value="NU">Niue</option><option value="NF">Norfolk Island</option><option value="MP">Northern Mariana Islands</option><option value="NO">Norway</option><option value="OM">Oman</option><option value="PK">Pakistan</option><option value="PW">Palau</option><option value="PS">Palestinian Territories</option><option value="PA">Panama</option><option value="PG">Papua New Guinea</option><option value="PY">Paraguay</option><option value="PE">Peru</option><option value="PH">Philippines</option><option value="PN">Pitcairn Islands</option><option value="PL">Poland</option><option value="PT">Portugal</option><option value="PR">Puerto Rico</option><option value="QA">Qatar</option><option value="RO">Romania</option><option value="RU">Russia</option><option value="RW">Rwanda</option><option value="RE">Réunion</option><option value="BL">Saint Barthélemy</option><option value="SH">Saint Helena</option><option value="KN">Saint Kitts and Nevis</option><option value="LC">Saint Lucia</option><option value="MF">Saint Martin</option><option value="PM">Saint Pierre and Miquelon</option><option value="VC">Saint Vincent and the Grenadines</option><option value="WS">Samoa</option><option value="SM">San Marino</option><option value="SA">Saudi Arabia</option><option value="SN">Senegal</option><option value="RS">Serbia</option><option value="SC">Seychelles</option><option value="SL">Sierra Leone</option><option value="SG">Singapore</option><option value="SK">Slovakia</option><option value="SI">Slovenia</option><option value="SB">Solomon Islands</option><option value="SO">Somalia</option><option value="ZA">South Africa</option><option value="GS">South Georgia and the South Sandwich Islands</option><option value="KR">South Korea</option><option value="ES">Spain</option><option value="LK">Sri Lanka</option><option value="SR">Suriname</option><option value="SJ">Svalbard and Jan Mayen</option><option value="SZ">Swaziland</option><option value="SE">Sweden</option><option value="CH">Switzerland</option><option value="ST">São Tomé and Príncipe</option><option value="TW">Taiwan</option><option value="TJ">Tajikistan</option><option value="TZ">Tanzania</option><option value="TH">Thailand</option><option value="TL">Timor-Leste</option><option value="TG">Togo</option><option value="TK">Tokelau</option><option value="TO">Tonga</option><option value="TT">Trinidad and Tobago</option><option value="TN">Tunisia</option><option value="TR">Turkey</option><option value="TM">Turkmenistan</option><option value="TC">Turks and Caicos Islands</option><option value="TV">Tuvalu</option><option value="UM">U.S. Minor Outlying Islands</option><option value="VI">U.S. Virgin Islands</option><option value="UG">Uganda</option><option value="UA">Ukraine</option><option value="AE">United Arab Emirates</option><option selected="selected" value="GB">United Kingdom</option><option value="US">United States</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VU">Vanuatu</option><option value="VA">Vatican City</option><option value="VE">Venezuela</option><option value="VN">Vietnam</option><option value="WF">Wallis and Futuna</option><option value="EH">Western Sahara</option><option value="YE">Yemen</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option><option value="AX">Åland Islands</option></select>
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="companyName"><strong>Company</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="" name="companyName" id="companyName" class="text">
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="addressField1"><strong>Address line 1</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="Flat 6" name="addressField1" id="addressField1" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="addressField2"><strong>Address line 2</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="Vermeer Court" name="addressField2" id="addressField2" class="text">
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="addressField3"><strong>Address line 3</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="1 Rembrandt Close" name="addressField3" id="addressField3" class="text">
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="cityField"><strong>City</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="London" name="cityField" id="cityField" class="text" required>
                                                        <span class="required">*</span>
                                                 	</td>
                                                </tr>
                                                <tr>
                                                	<td class="label">
                                                    	<label for="county"><strong>County</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="" name="county" id="county" class="text">
                                                 	</td>
                                                </tr>
                                               	<tr>
                                                    <td class="label">
                                                    	
                                                    	<label for="postalCode">
                                                        	<strong>Postcode</strong>
                                                       	</label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" value="E14 3XA" name="postalCode" id="postalCode" class="text" required pattern="\+?[0-9, A-Z]{3,12}">
                                                        <span class="required">*</span>
                                                 	</td>
                                             	</tr>
                                            </tbody>
                                        </table>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="section-title pt20">
                                    	<h3>Add telephone number</h3>
                                        <hr class="divider">
                                    </div>
                                    <div class="span6">
                                    	<table>
                                        	<tbody>
                                            	<tr>
                                                	<td class="label">
                                                    	<label for="telephone"><strong>Telephone</strong></label>
                                                    </td>
                                                    <td class="value">
                                                    	<input type="text" id="telephone" class="text" value="7655465342" 
                                                        name="telephone">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="choose-delivery pt20 p10">
                                    	<ul class="stylenone">
                                            <li>This is your default billing address</li>
                        					<li>This is your default delivery address</li>
                    					</ul>
                                    </div>
                                    <hr class="divider mt20">
                                    <div class="action_bottom">
                                  <input type="button" onclick="location.href='/billingAddress'" value="Cancel" class="btn">
                                  <input type="submit" value="Save Address" class="btn fr">
                                </div>
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