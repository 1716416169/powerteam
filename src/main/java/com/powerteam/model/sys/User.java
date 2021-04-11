package com.powerteam.model.sys;

import lombok.Data;
import org.springframework.util.StringUtils;

import java.util.Date;

@Data
public class User {

    private Integer userId;

    private String userName;

    private String password;

    private String avatar;

    private String userCode;

    private String realName;

    private Boolean gender;

    private Byte status;

    private Date createAt;

    public String getAvatar() {
        if (StringUtils.isEmpty(avatar)) {
            avatar = "img/avatar/avatar1.png";
        }
        return avatar;
    }
}
