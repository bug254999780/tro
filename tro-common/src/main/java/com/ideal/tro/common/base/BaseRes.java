package com.ideal.tro.common.base;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.UUID;

/**
 * .
 * date 2017/6/1 9:44.
 *
 * @author xqm
 *         tro-master
 *         com.ideal.tro.dubbo.base
 */
@Getter
@Setter
@ToString
public class BaseRes implements Serializable {


    public BaseRes() {
    }

    public BaseRes(String providerName) {
        this.providerName = providerName;
    }

    private String providerName;



    /**
     * 反码状态
     */
    private Integer code = 200;

    /**
     * 描述信息
     */
    private String message = "Success";

    /**
     * 请求时间
     */

    private Long requestDate;

    /**
     * 响应时间
     */

    private Long responseDate;

    /**
     * token
     */
    private UUID token = UUID.randomUUID();

    private Integer dataSzie;


    private boolean GZIP = false;



    private String usedTime;

    public String getUsedTime() {
        return usedTime;
    }

    public void calculationUsedTime() {
        this.usedTime = (responseDate - requestDate) / 1000 + "s";;
    }
}
