package com.powerteam.vo;

import lombok.*;

@Data
@EqualsAndHashCode(callSuper = true)
public class ResultData<T> extends Result {
    private T data;
}
