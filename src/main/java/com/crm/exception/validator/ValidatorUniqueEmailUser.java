package com.crm.exception.validator;

import com.crm.exception.annotation.UniqueEmailUser;
import com.crm.persistence.payload.request.DTORequestUserEntity;
import com.crm.service.ServiceUserEntity;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidatorUniqueEmailUser implements ConstraintValidator<UniqueEmailUser, DTORequestUserEntity> {

    @Autowired
    private ServiceUserEntity serviceUser;

    @Override
    public void initialize(UniqueEmailUser constraintAnnotation) {
    }
    @Override
    public boolean isValid(DTORequestUserEntity value, ConstraintValidatorContext context) {
        if (!Validator.isNull(value.getEmail()) && !serviceUser.existsByEmail(value.getEmail()) ||
                !Validator.isNull(value.getEmail()) && !Validator.isNull(value.getId()) && !serviceUser.existsByEmailAndIdNot(value.getEmail(), value.getId()) ) {
            return true;
        } else {
            return false;
        }
    }
}