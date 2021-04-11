package com.powerteam.vo.crm;

import com.powerteam.vo.QueryPageVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class QueryActivityVo extends QueryPageVo {

    private Byte resourceType;
    private Integer resourceId;
    private List<Byte> activityType;

    private Date workDay;
    private List<Integer> createBy;
}
