<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<head>
<title>Resizing the Bootstrap Modal</title>

<style type="text/css">
    @media screen and (min-width: 768px) {
        .modal-dialog {
          width: 750px; /* New width for default modal */
        }
        .modal-sm {
          width: 350px; /* New width for small modal */
        }
    }
    @media screen and (min-width: 992px) {
        .modal-lg {
          width: 950px; /* New width for large modal */
        }
    }
</style>
</head>


<div class="modal fade" id="myModal">
<div class="modal-dialog">

      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 class="modal-title">Order Details of  Order Id : {{orderVo.orderId}} </h3>
        </div>

        <ul class="nav nav-tabs" id="tabContent">
                <li class="active"><a href="#tab1primary" data-toggle="tab">Order Detail</a></li>
                    <li><a href="#tab2primary" data-toggle="tab">Home Address</a></li>
                    <li><a href="#tab3primary" data-toggle="tab">Delivery Address</a></li>
                    <li><a href="#tab4primary" data-toggle="tab">Billing Address</a></li>
                    <li><a href="#tab5primary" data-toggle="tab">Postage</a></li>
                    <li><a href="#tab6primary" data-toggle="tab">Payment Details</a></li>
                </ul>

              <div class="tab-content">

                <!-- First tab Start -->
                <div class="tab-pane active" id="tab1primary">
                      <div class="control-group">
                        <h5 class="text-center">Order Detail</h5>
                        <hr class="divider">
                        <table class="table table-striped" id="tblGrid">
                            <thead id="tblHead">
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
                </div>
                <!-- First tab End -->

                <!-- Second tab Start -->
                <div class="tab-pane" id="tab2primary">
                    <div class="control-group">
                        <h5 class="text-center">Home Address</h5>
                        <hr class="divider">
                        <table class="table table-striped" id="tblGrid">
                            <thead id="tblHead">
                                <tr>
                                     <th>Names</th>
                                     <th>Values</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><p><span class="label label-success">Title</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByCustomerIdVo.title}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Name</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByCustomerIdVo.firstName}} {{orderVo.orderVo.customerByCustomerIdVo.lastName}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Address</span></p></td>
                                    <td><p><span class="label label-success"><dd class="address-1">{{orderVo.orderVo.customerByCustomerIdVo.addressVo.addressLine1}}</dd>
                                     <dd class="address-2">{{orderVo.customerByCustomerIdVo.addressVo.addressLine2}}</dd>
                                     <dd class="address-3">{{orderVo.customerByCustomerIdVo.addressVo.addressLine3}}</dd>
                                     <dt>City</dt><dd class="address-city">{{orderVo.customerByCustomerIdVo.addressVo.city}}</dd></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">County</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByCustomerIdVo.addressVo.county}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Postcode</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByCustomerIdVo.addressVo.postCode}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Country</span></p></td>
                                    <td><p><span class="label label-success">United Kingdom</span></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Second tab End -->

                <!-- Third tab Start -->
                <div class="tab-pane" id="tab3primary">
                    <div class="control-group">
                        <h5 class="text-center">Delivery Address</h5>
                        <hr class="divider">
                        <table class="table table-striped" id="tblGrid">
                            <thead id="tblHead">
                                <tr>
                                     <th>Names</th>
                                     <th>Values</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><p><span class="label label-success">Title</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByDeliveryCustomerIdVo.title}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Name</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByDeliveryCustomerIdVo.firstName}} {{orderVo.orderVo.customerByDeliveryCustomerIdVo.lastName}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Address</span></p></td>
                                    <td><p><span class="label label-success"><dd class="address-1">{{orderVo.orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine1}}</dd>
                                     <dd class="address-2">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine2}}</dd>
                                     <dd class="address-3">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.addressLine3}}</dd>
                                     <dt>City</dt><dd class="address-city">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.city}}</dd></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">County</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.county}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Postcode</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByDeliveryCustomerIdVo.addressVo.postCode}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Country</span></p></td>
                                    <td><p><span class="label label-success">United Kingdom</span></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Third tab End -->

                <!-- Fourth tab Start -->
                <div class="tab-pane" id="tab4primary">
                    <div class="control-group">
                        <h5 class="text-center">Billing Address</h5>
                        <hr class="divider">
                        <table class="table table-striped" id="tblGrid">
                            <thead id="tblHead">
                               <tr>
                                 <th>Names</th>
                                 <th>Values</th>
                               </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><p><span class="label label-success">Title</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByBillingCustomerIdVo.title}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Name</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByBillingCustomerIdVo.firstName}} {{orderVo.orderVo.customerByBillingCustomerIdVo.lastName}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Address</span></p></td>
                                    <td><p><span class="label label-success"><dd class="address-1">{{orderVo.orderVo.customerByBillingCustomerIdVo.addressVo.addressLine1}}</dd>
                                     <dd class="address-2">{{orderVo.customerByBillingCustomerIdVo.addressVo.addressLine2}}</dd>
                                     <dd class="address-3">{{orderVo.customerByBillingCustomerIdVo.addressVo.addressLine3}}</dd>
                                     <dt>City</dt><dd class="address-city">{{orderVo.customerByBillingCustomerIdVo.addressVo.city}}</dd></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">County</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByBillingCustomerIdVo.addressVo.county}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Postcode</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.customerByBillingCustomerIdVo.addressVo.postCode}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Country</span></p></td>
                                    <td><p><span class="label label-success">United Kingdom</span></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Fourth tab End -->

                <!-- Fifth tab Start -->
                <div class="tab-pane" id="tab5primary">
                    <div class="control-group">
                        <h5 class="text-center">Postage Details:</h5>
                        <hr class="divider">
                        <table class="table table-striped" id="tblGrid">
                            <thead id="tblHead">
                               <tr>
                                 <th>Names</th>
                                 <th>Values</th>
                               </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><p><span class="label label-success">Shipper</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.shipperVo.shipperId}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Name</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.shipperVo.name}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Price</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.shipperVo.price}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Deliver Request</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.deliveryRequest}}</span></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Fifth tab End -->

                <!-- Sixth tab Start -->
                <div class="tab-pane" id="tab6primary">
                     <div class="control-group">
                        <h5 class="text-center">Customer Payment Details:</h5>
                        <hr class="divider">
                        <table class="table table-striped" id="tblGrid">
                            <thead id="tblHead">
                               <tr>
                                 <th>Names</th>
                                 <th>Values</th>
                               </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><p><span class="label label-success">Name On The Card</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.paymentDetailsVo.nameOnCard}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Card Type</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.shipperVo.name}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Card Number</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.paymentDetailsVo.cardNumber}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Expiry</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.paymentDetailsVo.expiryMonth}} - {{orderVo.paymentDetailsVo.expiryYear}}</span></p></td>
                                </tr>
                                <tr>
                                    <td><p><span class="label label-success">Security Number</span></p></td>
                                    <td><p><span class="label label-success">{{orderVo.paymentDetailsVo.securityNumber}}</span></p></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Sixth tab End -->
        </div>



        <div class="modal-footer">
          <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
        </div>

      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->

<script src="<c:url value="/resources/js/pages/contacts.js" />"></script>