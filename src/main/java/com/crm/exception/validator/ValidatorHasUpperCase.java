package com.crm.exception.validator;

import com.crm.exception.annotation.HasUpperCase;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidatorHasUpperCase implements ConstraintValidator<HasUpperCase, String> {

    @Override
    public void initialize(HasUpperCase constraintAnnotation) {
    }
    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (Validator.hasUpperCase(value)) {
            return true;
        } else {
            return false;
        }
    }
}