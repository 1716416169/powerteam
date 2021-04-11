package com.powerteam.model.crm;

import lombok.Data;

@Data
public class ShareGroup {

    private Integer shareGroupId;
    private Byte resourceType;
    private Integer resourceId;
    private Integer userId;

}
