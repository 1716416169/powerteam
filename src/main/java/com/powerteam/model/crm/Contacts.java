package com.powerteam.model.crm;

import com.powerteam.model.sys.User;
import lombok.Data;

import java.util.Date;

@Data
public class Contacts {

    private Integer contactsId;
    private Integer customerId;
    private String name;
    private String title;
    private String dept;
    private String phone;
    private Boolean sex;
    private String email;
    private String tel;
    private String fax;
    private String qq;
    private String wx;
    private Date createDate;
    private Integer createBy;

    private User createByUser;
    private Customer customer;
}
