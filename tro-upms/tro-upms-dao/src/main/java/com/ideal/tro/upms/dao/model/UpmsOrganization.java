package com.ideal.tro.upms.dao.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
@Getter
@Setter
@ToString
@Entity
@Table(name = "upms_organization")
public class UpmsOrganization implements Serializable {
    /**
     * 编号
     *
     * @mbg.generated
     */
    @Id
    private Integer organizationId;

    /**
     * 所属上级
     *
     * @mbg.generated
     */
    private Integer pid;

    /**
     * 组织名称
     *
     * @mbg.generated
     */
    private String name;

    /**
     * 组织描述
     *
     * @mbg.generated
     */
    private String description;

    /**
     * 创建时间
     *
     * @mbg.generated
     */
    private Long ctime;


    /**
     * 状态(-1:黑名单,1:正常)
     *
     * @mbg.generated
     */
    private Byte status;

    private static final long serialVersionUID = 1L;


}