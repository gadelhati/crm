package com.crm.persistence.payload.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import com.crm.persistence.model.Role;

import java.util.Collection;
import java.util.UUID;

@Getter @AllArgsConstructor
public class DTOResponseUserEntity {

    private UUID id;
    private String username;
    private String email;
    private String password;
    private Boolean active;
    private Collection<Role> role;
}