package com.powerteam.model.masterData;

import lombok.Data;

@Data
public class OrgUnit {

    private Integer orgUnitId;
    private String orgUnitName;
    private Integer pid;
    private Integer orgIndex;

}
