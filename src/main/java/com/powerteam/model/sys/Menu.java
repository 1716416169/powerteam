package com.powerteam.model.sys;

import lombok.Data;

@Data
public class Menu {

    private Integer menuId;

    private Integer pid;

    private String menuName;

    private String menuCode;

    private String menuLink;

    private String menuIcon;

    private Integer menuIndex;
}
