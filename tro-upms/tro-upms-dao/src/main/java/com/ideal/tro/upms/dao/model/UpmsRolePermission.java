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
@Table(name = "upms_role_permission")
public class UpmsRolePermission implements Serializable {
    /**
     * 编号
     *
     * @mbg.generated
     */
    @Id
    private Integer rolePermissionId;

    /**
     * 角色编号
     *
     * @mbg.generated
     */
    private Integer roleId;

    /**
     * 权限编号
     *
     * @mbg.generated
     */
    private Integer permissionId;

    private static final long serialVersionUID = 1L;


}