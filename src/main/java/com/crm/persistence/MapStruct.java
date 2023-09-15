package com.crm.persistence;

import com.crm.persistence.model.*;
import com.crm.persistence.payload.request.*;
import com.crm.persistence.payload.response.*;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface MapStruct {

    MapStruct MAPPER = Mappers.getMapper(MapStruct.class);
    DTOResponseRole toDTO(Role role);
    DTOResponseUserEntity toDTO(UserEntity userEntity);

    Role toObject(DTORequestRole dtoRequestRole);
    UserEntity toObject(DTORequestUserEntity dtoRequestUserEntity);
}