<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div id="addContactsModal"
     class="modal hide fade in centering insertAndUpdateDialogs"
     role="dialog"
     aria-labelledby="addContactsModalLabel"
     aria-hidden="true">
    <div class="modal-header">
        <h3 id="addContactsModalLabel" class="displayInLine">
            <spring:message code="create"/>&nbsp;<spring:message code="contact"/>
        </h3>
    </div>
    <div class="modal-body">
        <form name="newContactForm" novalidate >
            <div class="pull-left">
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.name"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               autofocus
                               ng-model="contact.name"
                               name="name"
                               placeholder="<spring:message code='contact'/>&nbsp;<spring:message code='contacts.name'/>"/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.name.$error.required">
                                        <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.email"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               ng-model="contact.email"
                               name="email"
                               placeholder="<spring:message code='sample.email'/> "/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.email.$error.required">
                                    <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <div>
                    <div class="input-append">
                        <label>* <spring:message code="contacts.phone"/>:</label>
                    </div>
                    <div class="input-append">
                        <input type="text"
                               required
                               ng-model="contact.phoneNumber"
                               name="phoneNumber"
                               placeholder="<spring:message code='sample.phone'/> "/>
                    </div>
                    <div class="input-append">
                        <label>
                                <span class="alert alert-error"
                                      ng-show="displayValidationError && newContactForm.phoneNumber.$error.required">
                                    <spring:message code="required"/>
                                </span>
                        </label>
                    </div>
                </div>
                <input type="submit"
                       class="btn btn-inverse"
                       ng-click="createContact(newContactForm);"
                       value='<spring:message code="create"/>'/>
                <button class="btn btn-inverse"
                        data-dismiss="modal"
                        ng-click="exit('#addContactsModal');"
                        aria-hidden="true">
                    <spring:message code="cancel"/>
                </button>
            </div>
        </form>
    </div>
    <span class="alert alert-error dialogErrorMessage"
          ng-show="errorOnSubmit">
        <spring:message code="request.error"/>
    </span>
</div>


<div id="updateContactsModal"
     class="modal hide fade in centering modal-admin"
     role="dialog"
     aria-labelledby="updateContactsModalLabel"
     aria-hidden="true">

          <div style="background: #beb198;">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h3 ng-hide="newUser">Order Details</h3>
          </div>

          <div class="modal-header">
                  <h3 id="updateContactsModalLabel" class="displayInLine">
                      Order Id : {{orderVo.orderId}}
                  </h3>
          </div>

        <div class="col-md-6">
            <div class="panel with-nav-tabs panel-primary">

                <div class="panel-heading">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab1primary" data-toggle="tab">Order Detail</a></li>
                        <li><a href="#tab2primary" data-toggle="tab">Home Address</a></li>
                        <li><a href="#tab3primary" data-toggle="tab">Delivery Address</a></li>
                        <li><a href="#tab4primary" data-toggle="tab">Billing Address</a></li>
                        <li><a href="#tab5primary" data-toggle="tab">Postage</a></li>
                        <li><a href="#tab6primary" data-toggle="tab">Payment Details</a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">

                        <div class="tab-pane fade in active" id="tab1primary">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Order Detail Id</th>
                                        <th>Product Id</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody ng-repeat="orderDetailVo in orderVo.orderDetailsVO">
                                    <tr>
                                        <td><p><span class="label label-success">{{orderDetailVo.orderDetailId}} </span></p></td>
                                        <td><p><span class="label label-success">{{orderDetailVo.productVo.productId}}</span></p></td>
                                        <td><p><span class="label label-success">{{orderDetailVo.quantity}}</span></p></td>
                                        <td><p><span class="label label-success">{{orderDetailVo.totalPrice}}</span></p></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>


                        <div class="tab-pane fade" id="tab2primary">
                            <div>
                                <div class="sub-title">
                                    <h4 class="bold p0">Customer Home Address:</h4>
                                    <hr class="divider">
                                    <dl>
                                        <dt>Title</dt> <dd>{{orderVo.customerByCustomerIdVo.title}}</dd>
                                        <dt>Name</dt> <dd>{{orderVo.customerByCustomerIdVo.firstName}} {{orderVo.orderVo.customerByCustomerIdVo.lastName}}</dd>
                                        <dt>Address</dt> <dd class="address-1">{{orderVo.orderVo.customerByCustomerIdVo.addressVo.addressLine1}}</dd>
                                            <dd class="address-2">{{orderVo.customerByCustomerIdVo.addressVo.addressLine2}}</dd>
                                            <dd class="address-3">{{orderVo.customerByCustomerIdVo.addressVo.addressLine3}}</dd>
                                            <dt>City</dt><dd class="address-city">{{orderVo.customerByCustomerIdVo.addressVo.city}}</dd>
                                        <dt>County</dt> <dd class="address-Region">{{orderVo.customerByCustomerIdVo.addressVo.county}}</dd>
                                        <dt>Postcode</dt> <dd>{{orderVo.customerByCustomerIdVo.addressVo.postCode}}</dd>
                                        <dt>Country</dt> <dd>United Kingdom</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="tab3primary">
                            <div>
                                <div class="sub-title">
                                    <h4 class="bold p0">Customer Delivery Address:</h4>
                                    <hr class="divider">
                                    <dl>
                                        <dt>Title</dt> <dd>{{orderVo.customerByDeliveryCustomerIdVo.title}}</dd>
                                        <dt>Name</dt> <dd>{{orderVo.customerByDeliveryCustomerIdVo.firstName}} {{orderVo.orderVo.customerByDeliveryCustomerIdVo.lastName}}</dd>
                                        <dt>Address</dt> <dd class="address-1">{{orderVo.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine1}}</dd>
                                            <dd class="address-2">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine2}}</dd>
                                            <dd class="address-3">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine3}}</dd>
                                            <dt>City</dt><dd class="address-city">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.city}}</dd>
                                        <dt>County</dt> <dd class="address-Region">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.county}}</dd>
                                        <dt>Postcode</dt> <dd>{{orderVo.customerByDeliveryCustomerIdVo.addressVo.postCode}}</dd>
                                        <dt>Country</dt> <dd>United Kingdom</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab4primary">
                            <div>
                                <div class="sub-title">
                                    <h4 class="bold p0">Customer Billing Address:</h4>
                                    <hr class="divider">
                                    <dl>
                                        <dt>Title</dt> <dd>{{orderVo.customerByBillingCustomerIdVo.title}}</dd>
                                        <dt>Name</dt> <dd>{{orderVo.customerByBillingCustomerIdVo.firstName}} {{orderVo.orderVo.customerByBillingCustomerIdVo.lastName}}</dd>
                                        <dt>Address</dt> <dd class="address-1">{{orderVo.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine1}}</dd>
                                                <dd class="address-2">{{orderVo.customerByBillingCustomerIdVo.addressVo.addressLine2}}</dd>
                                                <dd class="address-3">{{orderVo.customerByBillingCustomerIdVo.addressVo.addressLine3}}</dd>
                                        <dt>City</dt><dd class="address-city">{{orderVo.customerByBillingCustomerIdVo.addressVo.city}}</dd>
                                        <dt>County</dt> <dd class="address-Region">{{orderVo.customerByBillingCustomerIdVo.addressVo.county}}</dd>
                                        <dt>Postcode</dt> <dd>{{orderVo.customerByBillingCustomerIdVo.addressVo.postCode}}</dd>
                                        <dt>Country</dt> <dd>United Kingdom</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>


                        <div class="tab-pane fade" id="tab5primary">
                            <div>
                                <div class="sub-title">
                                    <h4 class="bold p0">Postage Details:</h4>
                                    <hr class="divider">
                                    <dl>
                                        <dt>Shipper Id</dt> <dd>{{orderVo.shipperVo.shipperId}}</dd>
                                        <dt>Name </dt> <dd>{{orderVo.shipperVo.name}}</dd>
                                        <dt>Price </dt> <dd>{{orderVo.shipperVo.price}}</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="tab6primary">
                            <div>
                                <div class="sub-title">
                                    <h4 class="bold p0">Customer Home Address:</h4>
                                    <hr class="divider">
                                    <dl>
                                        <dt>Name On The Card</dt> <dd>{{orderVo.paymentDetailsVo.nameOnCard}}</dd>
                                        <dt>Card Type </dt> <dd>{{orderVo.paymentDetailsVo.cardType}}</dd>
                                        <dt>Card Number</dt> <dd>{{orderVo.paymentDetailsVo.cardNumber}}</dd>
                                        <dt>Expiry </dt> <dd>{{orderVo.paymentDetailsVo.expiryMonth}} - {{orderVo.paymentDetailsVo.expiryYear}}</dd>
                                        <dt>Security Number </dt> <dd>{{orderVo.paymentDetailsVo.securityNumber}}</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


</div>

<div id="deleteContactsModal"
     class="modal hide fade in centering"
     role="dialog"
     aria-labelledby="searchContactsModalLabel"
     aria-hidden="true">
    <div class="modal-header">
        <h3 id="deleteContactsModalLabel" class="displayInLine">
            <spring:message code="delete"/>&nbsp;<spring:message code="contact"/>
        </h3>
    </div>
    <div class="modal-body">
        <form name="deleteContactForm" novalidate>
            <p><spring:message code="delete.confirm"/>:&nbsp;{{contact.name}}?</p>

            <input type="submit"
                   class="btn btn-inverse"
                   ng-click="deleteContact();"
                   value='<spring:message code="delete"/>'/>
            <button class="btn btn-inverse"
                    data-dismiss="modal"
                    ng-click="exit('#deleteContactsModal');"
                    aria-hidden="true">
                <spring:message code="cancel"/>
            </button>
        </form>
    </div>
    <span class="alert alert-error dialogErrorMessage"
          ng-show="errorOnSubmit">
        <spring:message code="request.error"/>
    </span>
    <span class="alert alert-error dialogErrorMessage"
          ng-show="errorIllegalAccess">
        <spring:message code="request.illegal.access"/>
    </span>
</div>

<div id="searchContactsModal"
     class="modal hide fade in centering"
     role="dialog"
     aria-labelledby="searchContactsModalLabel"
     aria-hidden="true">
    <div class="modal-header">
        <h3 id="searchContactsModalLabel" class="displayInLine">
            <spring:message code="search"/>
        </h3>
    </div>
    <div class="modal-body">
        <form name="searchContactForm" novalidate>
            <label><spring:message code="search.for"/></label>

            <div>
                <div class="input-append">
                    <input type="text"
                           autofocus
                           required
                           ng-model="searchFor"
                           name="searchFor"
                           placeholder="<spring:message code='contact'/>&nbsp;<spring:message code='contacts.name'/> "/>
                </div>
                <div class="input-append displayInLine">
                    <label class="displayInLine">
                        <span class="alert alert-error"
                              ng-show="displayValidationError && searchContactForm.searchFor.$error.required">
                            <spring:message code="required"/>
                        </span>
                    </label>
                </div>
            </div>
            <input type="submit"
                   class="btn btn-inverse"
                   ng-click="searchContact(searchContactForm, false);"
                   value='<spring:message code="search"/>'
                    />
            <button class="btn btn-inverse"
                    data-dismiss="modal"
                    ng-click="exit('#searchContactsModal');"
                    aria-hidden="true">
                <spring:message code="cancel"/>
            </button>
        </form>
    </div>
    <span class="alert alert-error dialogErrorMessage"
          ng-show="errorOnSubmit">
        <spring:message code="request.error"/>
    </span>
</div>
