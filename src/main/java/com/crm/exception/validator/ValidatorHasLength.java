package com.crm.exception.validator;

import com.crm.exception.annotation.HasLength;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidatorHasLength implements ConstraintValidator<HasLength, String> {

    @Override
    public void initialize(HasLength constraintAnnotation) {
    }
    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        if (Validator.hasLength(8, value)) {
            return true;
        } else {
            return false;
        }
    }
}