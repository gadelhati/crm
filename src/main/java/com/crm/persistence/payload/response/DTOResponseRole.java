package com.crm.persistence.payload.response;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.UUID;

@Getter @AllArgsConstructor
public class DTOResponseRole {

    private UUID id;
    private String name;
}