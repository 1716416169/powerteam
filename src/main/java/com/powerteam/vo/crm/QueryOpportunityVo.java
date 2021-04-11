package com.powerteam.vo.crm;


import com.powerteam.vo.QueryPageVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;
import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class QueryOpportunityVo extends QueryPageVo {

    private String word;

    /**
     * 阶段列表
     */
    List<Byte> phaseList;

    /**
     * 干系人列表
     */
    List<Integer> userIdList;

    /**
     * 查询业务机会创建的开始日期
     */
    private Date startCreateDate;

    /**
     * 查询业务机会创建的结束日期
     */
    private Date endCreateDate;

    /**
     * 查询到期日期比该日期早的业务机会
     */
    private Date endDate;
}
