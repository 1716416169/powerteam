package com.powerteam.model.crm;

import com.powerteam.model.sys.User;
import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Opportunity {

    private Integer opportunityId;
    private String name;
    private Integer customerId;
    private Double amount;
    private Date endDate;
    private Float possibility;
    private Boolean budgetConfirmed;
    private Boolean roiConfirmed;
    private Byte phase;
    private Boolean win;
    private Byte lossReason;
    private String description;
    private Date closeDate;
    private Date createDate;
    private Integer createBy;
    private Integer owner;

    private Customer customer;
    private User createUser;
    private User ownerUser;

    private List<ContactsRole> contactsRoleList;
}
