package com.kashevsky.buslines.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kashevsky.buslines.model.User;
import com.kashevsky.buslines.service.SecurityService;
import com.kashevsky.buslines.service.UserService;
import com.kashevsky.buslines.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
        }
        return "login";
    }
    
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        return "index";
    }
    
    @RequestMapping(value = "/price", method = RequestMethod.GET)
    public String price(Model model) {
        return "price";
    }
    
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {
        return "admin";
    }
    
    @RequestMapping(value = "/personal", method = RequestMethod.GET)
    public String personal(Model model) {
 
    	String username = userService.GetPrincipalUser();
 
        User u = userService.findByUsername(username);
    	model.addAttribute("user", u);
        
    	return "personal";
    }
    
    @RequestMapping(value = "/personal", method = RequestMethod.POST)
    public String personal(@ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
    	//userValidator.validate(user, bindingResult);
    	
    	 if (bindingResult.hasErrors()) {
             return "personal";
         }
    	
    	String username = user.getUsername();
    	String name = user.getName();
    	String surename = user.getSurename();
    	String email = user.getEmail();
    	String phoneNumber = user.getPhoneNumber();
    	String cardNumber = user.getCardNumber();
    	
    	
    	String userName = userService.GetPrincipalUser();
 
        user = userService.findByUsername(userName);
    	model.addAttribute("user", user);  
    	
    	userService.update(user, username, name, surename, email, phoneNumber, cardNumber);;
    	
    	/*Go to change3*/
    	
        return "personal";
    }
    
  
}
