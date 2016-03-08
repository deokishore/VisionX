package com.tamaar.service;

import com.tamaar.dao.AddressDAO;
import com.tamaar.dao.CustomerDAO;
import com.tamaar.dao.OrderDAO;
import com.tamaar.dao.OrderDetailDAO;
import com.tamaar.dao.PaymentDetailsDAO;
import com.tamaar.model.Address;
import com.tamaar.model.Customer;
import com.tamaar.model.Order;
import com.tamaar.model.OrderDetail;
import com.tamaar.model.PaymentDetails;
import com.tamaar.model.Product;
import com.tamaar.model.Shipper;
import com.tamaar.shoppingcart.ShoppingCart;
import com.tamaar.shoppingcart.ShoppingCartLineItem;
import com.tamaar.shoppingcart.parser.OrderVo;
import com.tamaar.util.BeanUtil;
import com.tamaar.vo.CustomerVo;
import com.tamaar.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by deokishore on 06/12/2015.
 */
@Service
public class CheckoutService {

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private OrderDetailDAO orderDetailDAO;

    @Autowired
    private CustomerDAO customerDAO;

    @Autowired
    private AddressDAO addressDAO;

    @Autowired
    private PaymentDetailsDAO paymentDetailsDAO;

    public void saveCustomer(CustomerVo customerVo) {
        Address address = new Address();
        BeanUtil.getAddress(address, customerVo.getAddressVo());

        Customer customer = new Customer();
        BeanUtil.getCustomer(customer, customerVo);
        Address persistAddress = addressDAO.save(address);
        customer.setAddress(persistAddress);
        Customer savedCustomer = customerDAO.save(customer);
        customerVo.setCustomerId(savedCustomer.getCustomerId());
        customerVo.getAddressVo().setAddressId(persistAddress.getAddressId());
    }

    public OrderVo savePaymentDetails(ShoppingCart shoppingCart) {
        Order order = BeanUtil.getOrder(shoppingCart.getOrderVo());
        PaymentDetails paymentDetails = paymentDetailsDAO.save(order.getPaymentDetails());
        order.setPaymentDetails(paymentDetails);
        //order = orderDAO.save(order);
        orderDAO.updatePaymentMethod(order.getOrderId(), paymentDetails.getPaymentDetailsId());
        return BeanUtil.getOrderVo(order);
    }


    public OrderVo saveNewOrder(ShoppingCart shoppingCart) {

        OrderVo orderVo = shoppingCart.getOrderVo();

        if(orderVo.getOrderId() != null) {

            // Customer Details
            Address existingAddress = addressDAO.findById(orderVo.getCustomerByCustomerIdVo().getAddressVo().getAddressId());

            existingAddress = BeanUtil.getAddress(existingAddress, orderVo.getCustomerByCustomerIdVo().getAddressVo());
            addressDAO.save(existingAddress);

            Customer existingCustomer = customerDAO.findById(orderVo.getCustomerByCustomerIdVo().getCustomerId());
            BeanUtil.getCustomer(existingCustomer, orderVo.getCustomerByCustomerIdVo());
            customerDAO.save(existingCustomer);

            CustomerVo customerVo = BeanUtil.getCustomerVo(existingCustomer);
            orderVo.setCustomerByCustomerIdVo(customerVo);

            // Delivery Customer Details
            if(orderVo.getCustomerByDeliveryCustomerIdVo() != null){

                Address existinDelivAddress = addressDAO.findById(orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo().getAddressId());

                existinDelivAddress = BeanUtil.getAddress(existinDelivAddress, orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo());
                addressDAO.save(existinDelivAddress);

                Customer existingDelivCustomer = customerDAO.findById(orderVo.getCustomerByDeliveryCustomerIdVo().getCustomerId());
                BeanUtil.getCustomer(existingDelivCustomer, orderVo.getCustomerByDeliveryCustomerIdVo());
                customerDAO.save(existingDelivCustomer);

                CustomerVo delivCustomerVo = BeanUtil.getCustomerVo(existingCustomer);
                orderVo.setCustomerByDeliveryCustomerIdVo(delivCustomerVo);

            }

            // Delivery Customer Details
            if(orderVo.getCustomerByBillingCustomerIdVo() != null){

                Address existingBillingAddress = addressDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getAddressVo().getAddressId());

                existingBillingAddress = BeanUtil.getAddress(existingBillingAddress, orderVo.getCustomerByBillingCustomerIdVo().getAddressVo());
                addressDAO.save(existingBillingAddress);

                Customer existingBillingCustomer = customerDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getCustomerId());
                BeanUtil.getCustomer(existingBillingCustomer, orderVo.getCustomerByBillingCustomerIdVo());
                customerDAO.save(existingBillingCustomer);

                CustomerVo billingCustomerVo = BeanUtil.getCustomerVo(existingBillingCustomer);
                orderVo.setCustomerByBillingCustomerIdVo(billingCustomerVo);
            }

            Order order = BeanUtil.getOrder(orderVo);
            order = orderDAO.save(order);

            List<ShoppingCartLineItem> lineItems = shoppingCart.getLineItems();

            for (ShoppingCartLineItem shoppingCartLineItem : lineItems) {
                ProductVo productVo = shoppingCartLineItem.getProductVo();
                Product product = BeanUtil.getProduct(productVo);
                int quantity = shoppingCartLineItem.getQuantity();
                double totalCost = shoppingCartLineItem.getTotalCost();
                OrderDetail orderDetail = new OrderDetail();

                orderDetail.setOrder(order);
                orderDetail.setProduct(product);
                orderDetail.setQuantity(String.valueOf(quantity));
                orderDetail.setTotalPrice(String.valueOf(totalCost));
                orderDetailDAO.save(orderDetail);
            }

            orderVo = BeanUtil.getOrderVo(order);

        } else {

            Order newOrder = BeanUtil.getNewOrder(orderVo);

            Address address = BeanUtil.getAddress(null, orderVo.getCustomerByCustomerIdVo().getAddressVo());
            address = addressDAO.save(address);

            Customer customer = BeanUtil.getCustomer(null, orderVo.getCustomerByCustomerIdVo());
            customer.setAddress(address);
            if(customer.getRole() == null || (customer.getRole() != null && !customer.getRole().equals("Admin"))){
                customer.setRole("Customer");
            }

            newOrder.setCustomerByCustomerId(customer);
            newOrder.setCustomerByDeliveryCustomerId(customer);
            newOrder.setCustomerByBillingCustomerId(customer);

            newOrder = orderDAO.save(newOrder);

            List<ShoppingCartLineItem> lineItems = shoppingCart.getLineItems();

            for (ShoppingCartLineItem shoppingCartLineItem : lineItems) {

                ProductVo productVo = shoppingCartLineItem.getProductVo();
                Product product = BeanUtil.getProduct(productVo);
                int quantity = shoppingCartLineItem.getQuantity();
                double totalCost = shoppingCartLineItem.getTotalCost();
                OrderDetail orderDetail = new OrderDetail();

                orderDetail.setOrder(newOrder);
                orderDetail.setProduct(product);
                orderDetail.setQuantity(String.valueOf(quantity));
                orderDetail.setTotalPrice(String.valueOf(totalCost));
                orderDetailDAO.save(orderDetail);
            }
            orderVo = BeanUtil.getOrderVo(newOrder);
        }
        return orderVo;
    }

    public OrderVo saveShipper(OrderVo orderVo) {
        if(orderVo.getShipperVo() != null) {
            Order order = orderDAO.findById(orderVo.getOrderId());
            Shipper shipper = BeanUtil.getShiper(orderVo.getShipperVo());
            order.setShipper(shipper);
            order = orderDAO.save(order);
            orderVo = BeanUtil.getOrderVo(order);
        }
        return orderVo;
    }


    public OrderVo makeDeliveryToBillingAddress(OrderVo orderVo) {

        if((orderVo.getCustomerByDeliveryCustomerIdVo() != null && orderVo.getCustomerByBillingCustomerIdVo() != null)
                && ( orderVo.getCustomerByDeliveryCustomerIdVo().getCustomerId() != orderVo.getCustomerByBillingCustomerIdVo().getCustomerId())) {

            int billingCustId = orderVo.getCustomerByBillingCustomerIdVo().getCustomerId();

            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByBillingCustomerId(order.getCustomerByDeliveryCustomerId());
            order = orderDAO.save(order);

            Customer customer = customerDAO.findById(billingCustId);
            int addressId = customer.getAddress().getAddressId();
            customerDAO.delete(customer);

            Address address = addressDAO.findById(addressId);
            addressDAO.delete(address);

            orderVo = BeanUtil.getOrderVo(order);

        } else {

            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByBillingCustomerId(order.getCustomerByDeliveryCustomerId());
            order = orderDAO.save(order);
            orderVo = BeanUtil.getOrderVo(order);

        }

        return orderVo;
    }


    public OrderVo saveOrder(OrderVo orderVo) {

        Address addressTwo = addressDAO.findById(orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo().getAddressId());
        if(addressTwo != null) {
            addressTwo = BeanUtil.getAddress(addressTwo, orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo());
            addressDAO.save(addressTwo);
        }

        addressTwo = new Address();
        addressTwo = BeanUtil.getAddress(addressTwo, orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo());
        addressDAO.save(addressTwo);

        Address addressOne = addressDAO.findById(orderVo.getCustomerByCustomerIdVo().getAddressVo().getAddressId());
        addressOne = BeanUtil.getAddress(addressOne, orderVo.getCustomerByCustomerIdVo().getAddressVo());
        addressOne = addressDAO.save(addressOne);
        orderVo.getCustomerByCustomerIdVo().getAddressVo().setAddressId(addressOne.getAddressId());
        Customer customerOne = customerDAO.findById(orderVo.getCustomerByCustomerIdVo().getCustomerId());
        BeanUtil.getCustomer(customerOne, orderVo.getCustomerByCustomerIdVo());
        customerOne.setAddress(addressOne);
        customerDAO.save(customerOne);
        orderVo.getCustomerByCustomerIdVo().setCustomerId(customerOne.getCustomerId());

        addressOne = addressDAO.findById(orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo().getAddressId());
        addressOne = BeanUtil.getAddress(addressOne, orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo());
        addressOne = addressDAO.save(addressOne);
        orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo().setAddressId(addressOne.getAddressId());
        customerOne = customerDAO.findById(orderVo.getCustomerByDeliveryCustomerIdVo().getCustomerId());
        BeanUtil.getCustomer(customerOne, orderVo.getCustomerByDeliveryCustomerIdVo());
        customerOne.setAddress(addressOne);
        customerDAO.save(customerOne);
        orderVo.getCustomerByDeliveryCustomerIdVo().setCustomerId(customerOne.getCustomerId());

        addressOne = addressDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getAddressVo().getAddressId());
        addressOne = BeanUtil.getAddress(addressOne, orderVo.getCustomerByBillingCustomerIdVo().getAddressVo());
        addressOne = addressDAO.save(addressOne);
        orderVo.getCustomerByBillingCustomerIdVo().getAddressVo().setAddressId(addressOne.getAddressId());
        customerOne = customerDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getCustomerId());
        BeanUtil.getCustomer(customerOne, orderVo.getCustomerByBillingCustomerIdVo());
        customerOne.setAddress(addressOne);
        customerDAO.save(customerOne);
        orderVo.getCustomerByBillingCustomerIdVo().setCustomerId(customerOne.getCustomerId());

        Order order = BeanUtil.getOrder(orderVo);
        order = orderDAO.save(order);

        orderVo = BeanUtil.getOrderVo(order);

        return orderVo;
    }

    public OrderVo delete(OrderVo orderVo) {
        if(orderVo.getCustomerByCustomerIdVo().getCustomerId()
                != orderVo.getCustomerByBillingCustomerIdVo().getCustomerId()) {
            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByBillingCustomerId(null);
            order = orderDAO.save(order);
            Customer customer = customerDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getCustomerId());
            customerDAO.delete(customer);
            orderVo = BeanUtil.getOrderVo(order);
        } else {
            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByBillingCustomerId(null);
            order = orderDAO.save(order);
            orderVo = BeanUtil.getOrderVo(order);
        }
        return orderVo;
    }

    public  OrderVo updateDeliveryCustomer(OrderVo orderVo) {
        if(orderVo.getCustomerByCustomerIdVo().getCustomerId()
                ==  orderVo.getCustomerByDeliveryCustomerIdVo().getCustomerId()) {
            Customer customer = new Customer();
            Address address = new Address();
            customer.setAddress(address);
            customer = BeanUtil.getCustomer(customer, orderVo.getCustomerByDeliveryCustomerIdVo());
            customer.setCustomerId(null);
            customer.getAddress().setAddressId(null);

            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByDeliveryCustomerId(customer);
            order = orderDAO.save(order);
            orderVo = BeanUtil.getOrderVo(order);
        } else {
            Customer customer = customerDAO.findById(orderVo.getCustomerByDeliveryCustomerIdVo().getCustomerId());
            Address address = customer.getAddress();
            address = BeanUtil.getAddress(address, orderVo.getCustomerByDeliveryCustomerIdVo().getAddressVo());
            addressDAO.save(address);
            BeanUtil.getCustomer(customer, orderVo.getCustomerByDeliveryCustomerIdVo());
            customer.setAddress(address);
            customer = customerDAO.save(customer);
            CustomerVo customerVo = BeanUtil.getCustomerVo(customer);
            orderVo.setCustomerByDeliveryCustomerIdVo(customerVo);
        }

        return orderVo;
    }

    public  OrderVo updateBillingCustomer(OrderVo orderVo) {

        if(orderVo.getCustomerByCustomerIdVo().getCustomerId()
                ==  orderVo.getCustomerByBillingCustomerIdVo().getCustomerId()) {
            Customer customer = new Customer();
            Address address = new Address();
            customer.setAddress(address);
            BeanUtil.getCustomer(customer, orderVo.getCustomerByBillingCustomerIdVo());
            customer.setCustomerId(null);
            customer.getAddress().setAddressId(null);
            address = addressDAO.save(customer.getAddress());
            customer.setAddress(address);
            customer = customerDAO.save(customer);


            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByBillingCustomerId(customer);
            order = orderDAO.save(order);
            orderVo = BeanUtil.getOrderVo(order);

        } else if (orderVo.getCustomerByBillingCustomerIdVo().getCustomerId() != 0){

            Address address = addressDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getAddressVo().getAddressId());
            BeanUtil.getAddress(address, orderVo.getCustomerByBillingCustomerIdVo().getAddressVo());
            address = addressDAO.save(address);

            Customer customer = customerDAO.findById(orderVo.getCustomerByBillingCustomerIdVo().getCustomerId());
            BeanUtil.getCustomer(customer, orderVo.getCustomerByBillingCustomerIdVo());
            customer.setAddress(address);
            customer = customerDAO.save(customer);
            CustomerVo customerVo = BeanUtil.getCustomerVo(customer);
            orderVo.setCustomerByBillingCustomerIdVo(customerVo);
        } else {
            Customer customer = new Customer();
            Address address = new Address();
            customer.setAddress(address);
            customer = BeanUtil.getCustomer(customer, orderVo.getCustomerByBillingCustomerIdVo());
            //customer.setCustomerId(null);
            //customer.getAddress().setAddressId(null);
            //address = addressDAO.save(customer.getAddress());
            //customer.setAddress(address);
            //customer = customerDAO.save(customer);

            Order order = orderDAO.findById(orderVo.getOrderId());
            order.setCustomerByBillingCustomerId(customer);
            order = orderDAO.save(order);
            orderVo = BeanUtil.getOrderVo(order);

        }
        return orderVo;
    }
}