package com.powerteam.vo.sys;

import com.powerteam.vo.QueryPageVo;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class QueryRoleUserVo extends QueryPageVo {

    private String word;
    private Integer roleId;

}
