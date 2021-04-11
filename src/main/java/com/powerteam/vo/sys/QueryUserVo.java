package com.powerteam.vo.sys;

import com.powerteam.vo.QueryPageVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = true)
public class QueryUserVo extends QueryPageVo {

    private String word;
    private Byte status;
    private Date startDate;
    private Date endDate;
}
