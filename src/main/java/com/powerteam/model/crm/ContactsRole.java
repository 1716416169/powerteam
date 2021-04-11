package com.powerteam.model.crm;

import lombok.Data;

@Data
public class ContactsRole {

    private Integer opportunityId;
    private Integer contactsId;
    private Byte role;

    private Contacts contacts;
}
