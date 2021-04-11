package com.powerteam.model.crm;

import com.powerteam.model.sys.User;
import lombok.Data;

import java.util.Date;

@Data
public class Activity {

    private Integer activityId;
    private Byte resourceType;
    private Integer resourceId;
    private Byte activityType;
    private String content;
    private Date createDate;
    private Integer createBy;

    private User createByUser;
    private Customer customer;
    private Opportunity opportunity;
}
