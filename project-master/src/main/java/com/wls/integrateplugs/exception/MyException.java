package com.wls.integrateplugs.exception;

import com.wls.integrateplugs.mvc.enums.RespEnum;

/**
 * Created by wls on 2017/8/7.
 */
public class MyException extends RuntimeException {
    private Integer code;

    public MyException() {
    }

    public MyException(RespEnum respEnum) {
        super(respEnum.getMsg());
        this.code = respEnum.getCode();
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }
}
