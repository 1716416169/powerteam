package com.powerteam.vo;

import lombok.Data;

@Data
public class QueryPageVo {

    private boolean disablePaging;
    private String order;
    private Integer pageNum;
    private Integer pageSize;

}
