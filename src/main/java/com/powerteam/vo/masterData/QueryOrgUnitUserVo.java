package com.powerteam.vo.masterData;

import com.powerteam.vo.QueryPageVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class QueryOrgUnitUserVo extends QueryPageVo {

    private String word;
    private Integer orgUnitId;

}
