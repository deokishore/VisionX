package com.tamaar.controller;

/**
 * Created by deokishore on 01/02/2016.
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tamaar.shoppingcart.ShoppingCart;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginManagementController {


//    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
//    public String homePage(ModelMap model) {
//        model.addAttribute("greeting", "Hi, Welcome to mysite");
//        return "welcome";
//    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "admin";
    }

    @RequestMapping(value = "/db", method = RequestMethod.GET)
    public String dbaPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "dba";
    }

    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model, HttpSession session) {
        String user = getPrincipal();
        if(user.equals("anonymousUser")){
            model.addAttribute("user", getPrincipal());
            return "redirect:/login?invalid";
        } else {
            ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
            shoppingCart.getLoginResponse().setStatus("OK");
            model.addAttribute("user", getPrincipal());
            return "redirect:admin";
        }
    }

    @RequestMapping(value = "/authen", method = RequestMethod.GET)
    public String authen(ModelMap model, HttpSession session) {
        String user = getPrincipal();
        if(user.equals("anonymousUser")){
            model.addAttribute("user", getPrincipal());
            return "redirect:/login?invalid";
        } else {
            ShoppingCart shoppingCart = (ShoppingCart) session.getAttribute("shoppingCart");
            shoppingCart.getLoginResponse().setStatus("OK");
            model.addAttribute("user", getPrincipal());
            return "redirect:/admin";
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

    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

}