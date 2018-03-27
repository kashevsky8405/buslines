package com.kashevsky.buslines.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.apache.commons.validator.routines.EmailValidator;

import com.kashevsky.buslines.model.User;
import com.kashevsky.buslines.service.UserService;

@Component
public class UserValidator implements Validator {
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;
       
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        if (user.getUsername().length() < 6 || user.getUsername().length() > 32) {
            errors.rejectValue("username", "Size.userForm.username");
        }
        if (userService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }
        if(!user.getUsername().matches("^[A-Za-z0-9_]+$")) {
        	errors.rejectValue("username", "NameAlpb09_.useForm.cardNumber");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getPasswordConfirm().equals(user.getPassword())) {
            errors.rejectValue("passwordConfirm", "Diff.userForm.passwordConfirm");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty");
        if(!EmailValidator.getInstance().isValid(user.getEmail())) {
        	errors.rejectValue("email", "NoValid.useForm.email");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty");
        if(user.getName().length() == 0 || user.getName().length() > 30) {
        	errors.rejectValue("name", "Name.useForm.cardNumber");
        }
        if(!user.getName().matches("^[A-Za-z]+$")) {
        	errors.rejectValue("name", "NameAlpb.useForm.cardNumber");
        }
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "surename", "NotEmpty");
        if(user.getSurename().length() == 0 || user.getSurename().length() > 30) {
        	errors.rejectValue("surename", "Name.useForm.cardNumber");
        }
        
        if(!user.getSurename().matches("^[A-Za-z]+$")) {
        	errors.rejectValue("surename", "NameAlpb.useForm.cardNumber");
        }
        
    }
}
