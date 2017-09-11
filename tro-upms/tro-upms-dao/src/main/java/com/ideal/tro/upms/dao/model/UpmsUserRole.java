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
@Table(name = "upms_user_role")
public class UpmsUserRole implements Serializable {
    /**
     * 编号
     *
     * @mbg.generated
     */


    @Id
    private Integer userRoleId;

    /**
     * 用户编号
     *
     * @mbg.generated
     */
    private Integer userId;

    /**
     * 角色编号
     *
     * @mbg.generated
     */
    private Integer roleId;

    private static final long serialVersionUID = 1L;


}