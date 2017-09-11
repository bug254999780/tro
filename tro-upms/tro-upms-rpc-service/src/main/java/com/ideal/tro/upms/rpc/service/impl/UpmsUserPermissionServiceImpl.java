package com.ideal.tro.upms.rpc.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ideal.tro.upms.rpc.api.UpmsUserPermissionService;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.mapper.UpmsUserPermissionMapper;
import com.ideal.tro.upms.dao.model.UpmsUserPermission;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * UpmsUserPermissionService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsUserPermissionServiceImpl extends BaseServiceImpl<UpmsUserPermission, UpmsUserPermissionMapper> implements UpmsUserPermissionService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserPermissionServiceImpl.class);

    @Autowired
    UpmsUserPermissionMapper upmsUserPermissionMapper;

    @Override
    public int permission(JSONArray datas, int id) {
        for (int i = 0; i < datas.size(); i++) {
            JSONObject json = datas.getJSONObject(i);
            if (json.getBoolean("checked")) {
                // 新增权限
                UpmsUserPermission upmsUserPermission = new UpmsUserPermission();
                upmsUserPermission.setUserId(id);
                upmsUserPermission.setPermissionId(json.getIntValue("id"));
                upmsUserPermission.setType(json.getByte("type"));
                upmsUserPermissionMapper.insertSelective(upmsUserPermission);
            } else {
                // 删除权限
              /*  UpmsUserPermissionExample upmsUserPermissionExample = new UpmsUserPermissionExample();
                upmsUserPermissionExample.createCriteria()
                        .andPermissionIdEqualTo(json.getIntValue("id"))
                        .andTypeEqualTo(json.getByte("type"));*/
                UpmsUserPermission tUpmsUserPermission = new UpmsUserPermission();
                tUpmsUserPermission.setPermissionId(json.getIntValue("id"));
                tUpmsUserPermission.setType(json.getByte("type"));
                upmsUserPermissionMapper.delete(tUpmsUserPermission);
            }
        }
        return datas.size();
    }




}