package com.powerteam.vo.sys;

import com.powerteam.model.sys.User;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class UpdatePasswordVo extends User {
    private String rawPassword;
}
