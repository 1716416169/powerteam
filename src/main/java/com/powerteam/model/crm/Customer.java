package com.powerteam.model.crm;

import com.powerteam.model.masterData.District;
import lombok.Data;

import java.util.Date;

@Data
public class Customer {

    private Integer customerId;
    private String customerName;
    private Byte industryId;
    private Byte categoryId;
    private String website;
    private String tel;
    private Byte star;
    private String address;
    private Integer provinceId;
    private Integer cityId;
    private Integer sourceId;
    private Float lng;
    private Float lat;
    private Boolean potential;
    private Date createDate;
    private Integer createBy;
    private Integer owner;

    private Industry industry;
    private CustomerCategory customerCategory;
    private Source source;

    private District province;
    private District city;
}
