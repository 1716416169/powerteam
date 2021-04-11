package com.powerteam.vo;

import lombok.Data;

@Data
public class Result {

    public Result() {
        this.setSuccess(false);
    }

    public Result(boolean success) {
        this.setSuccess(success);
    }

    private boolean success;

    private String message;

    private String code;
}
