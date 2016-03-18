package com.tamaar.controller;

/**
 * Created by deokishore on 01/02/2016.
 */

import com.tamaar.service.CheckoutService;
import com.tamaar.service.CustomerService;
import com.tamaar.service.OrderService;
import com.tamaar.shoppingcart.ShoppingCart;
import com.tamaar.shoppingcart.parser.OrderVo;
import com.tamaar.vo.CustomerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginManagementController {

    @Autowired
    CustomerService customerService;

    @Autowired
    private CheckoutService checkoutService;

    @Autowired
    OrderService orderService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
        UserDetails userDetails =  getPrincipal();
        model.addAttribute("user", userDetails.getUsername());
        return "admin";
    }

    @RequestMapping(value = "/db", method = RequestMethod.GET)
    public String dbaPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "dba";
    }

    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model, HttpSession session) {
        UserDetails userDetails =  getPrincipal();
        if(userDetails == null){
            model.addAttribute("user", "anonymousUser");
            return "redirect:/login?invalid";
        } else {
            ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
            shoppingCart.getLoginResponse().setStatus("OK");
            model.addAttribute("user", userDetails.getUsername());
            return "redirect:admin";
        }
    }

    @RequestMapping(value = "/authen", method = RequestMethod.GET)
    public String authen(ModelMap model, HttpSession session) {
        UserDetails userDetails =  getPrincipal();
        if(userDetails.getUsername().equals("anonymousUser")){
            model.addAttribute("user", getPrincipal());
            return "redirect:/login?invalid";
        } else {

            String role = ((User) userDetails).getAuthorities().toArray()[0].toString();
            ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
            shoppingCart.getLoginResponse().setStatus("OK");
            model.addAttribute("user", userDetails.getUsername());

            CustomerVo customerVo = customerService.isValidUser(userDetails.getUsername());
            customerVo.setRole(role);
            shoppingCart.getOrderVo().setCustomerByCustomerIdVo(customerVo);

            // get Existing billing and delivery address:
            List<OrderVo> orderList = orderService.findByCustomerId(customerVo);
            OrderVo orderVo = orderList.get(0);
            shoppingCart.getOrderVo().setCustomerByBillingCustomerIdVo(orderVo.getCustomerByBillingCustomerIdVo());
            shoppingCart.getOrderVo().setCustomerByDeliveryCustomerIdVo(orderVo.getCustomerByDeliveryCustomerIdVo());

            if(shoppingCart.getLineItems().size() > 0) {
                OrderVo orderVoNew = checkoutService.saveNewOrder(shoppingCart);
                shoppingCart.setOrderVo(orderVoNew);
            }
            session.setAttribute("shoppingCart", shoppingCart);

            if(role.equals("ROLE_ADMIN")){
                return "redirect:/admin";
            } else {
                return "redirect:/billingDeliveryInfo";
            }
        }
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }

    private UserDetails getPrincipal(){
        UserDetails userDetails = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userDetails = ((UserDetails)principal);
        }

        return userDetails;
    }

}