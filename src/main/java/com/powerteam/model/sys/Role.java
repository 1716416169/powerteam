package com.powerteam.model.sys;

import lombok.Data;

@Data
public class Role {

    private Integer roleId;

    private String roleName;

    private Boolean isSystemRole;
}