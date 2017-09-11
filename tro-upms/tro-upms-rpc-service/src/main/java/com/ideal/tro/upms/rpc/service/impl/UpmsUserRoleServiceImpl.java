package com.ideal.tro.upms.rpc.service.impl;

import com.ideal.tro.upms.dao.mapper.UpmsUserRoleMapper;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.model.UpmsUserRole;
import com.ideal.tro.upms.rpc.api.UpmsUserRoleService;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * UpmsUserRoleService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsUserRoleServiceImpl extends BaseServiceImpl<UpmsUserRole, UpmsUserRoleMapper> implements UpmsUserRoleService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserRoleServiceImpl.class);

    @Autowired
    UpmsUserRoleMapper upmsUserRoleMapper;

    @Override
    public int role(String[] roleIds, int id) {
        int result = 0;
        // 删除旧记录
      /*  UpmsUserRoleExample upmsUserRoleExample = new UpmsUserRoleExample();
        upmsUserRoleExample.createCriteria()
                .andUserIdEqualTo(id);*/
        UpmsUserRole tUpmsUserRole = new UpmsUserRole();
        tUpmsUserRole.setUserId(id);
        upmsUserRoleMapper.delete(tUpmsUserRole);
        // 增加新记录
        if (null != roleIds) {
            for (String roleId : roleIds) {
                if (StringUtils.isBlank(roleId)) {
                    continue;
                }
                UpmsUserRole upmsUserRole = new UpmsUserRole();
                upmsUserRole.setUserId(id);
                upmsUserRole.setRoleId(NumberUtils.toInt(roleId));
                result = upmsUserRoleMapper.insertSelective(upmsUserRole);
            }
        }
        return result;
    }

    public List<UpmsUserRole> select(UpmsUserRole upmsUserRole) {
        return upmsUserRoleMapper.select(upmsUserRole);
    }


}