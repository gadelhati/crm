package com.crm.exception.annotation;

import com.crm.exception.validator.ValidatorHasMore;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = { ValidatorHasMore.class })
@Documented
public @interface HasMore {

    String message() default "{has.more}";
    Class<?>[] groups() default { };
    Class<? extends Payload>[] payload() default { };
}