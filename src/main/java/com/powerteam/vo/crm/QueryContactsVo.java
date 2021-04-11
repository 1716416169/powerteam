package com.powerteam.vo.crm;

import com.powerteam.vo.QueryPageVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

@Data
@EqualsAndHashCode(callSuper = true)
public class QueryContactsVo extends QueryPageVo {

    private String word;
    private Integer customerId;
    private List<Integer> excludeContactsId;

}
