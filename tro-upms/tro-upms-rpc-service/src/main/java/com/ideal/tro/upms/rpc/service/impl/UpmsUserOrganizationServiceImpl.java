package com.ideal.tro.upms.rpc.service.impl;

import com.ideal.tro.upms.dao.model.UpmsUserOrganization;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.mapper.UpmsUserOrganizationMapper;
import com.ideal.tro.upms.rpc.api.UpmsUserOrganizationService;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.NumberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * UpmsUserOrganizationService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsUserOrganizationServiceImpl extends BaseServiceImpl<UpmsUserOrganization, UpmsUserOrganizationMapper> implements UpmsUserOrganizationService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserOrganizationServiceImpl.class);

    @Autowired
    UpmsUserOrganizationMapper upmsUserOrganizationMapper;

    @Override
    public int organization(String[] organizationIds, int id) {
        int result = 0;
        // 删除旧记录
       /* UpmsUserOrganizationExample upmsUserOrganizationExample = new UpmsUserOrganizationExample();
        upmsUserOrganizationExample.createCriteria()
                .andUserIdEqualTo(id);*/

        UpmsUserOrganization tUpmsUserOrganization = new UpmsUserOrganization();
        tUpmsUserOrganization.setUserId(id);
        upmsUserOrganizationMapper.delete(tUpmsUserOrganization);
        // 增加新记录
        if (null != organizationIds) {
            for (String organizationId : organizationIds) {
                if (StringUtils.isBlank(organizationId)) {
                    continue;
                }
                UpmsUserOrganization upmsUserOrganization = new UpmsUserOrganization();
                upmsUserOrganization.setUserId(id);
                upmsUserOrganization.setOrganizationId(NumberUtils.toInt(organizationId));
                result = upmsUserOrganizationMapper.insertSelective(upmsUserOrganization);
            }
        }
        return result;
    }

    public List<UpmsUserOrganization> select(UpmsUserOrganization upmsUserOrganization) {
        return upmsUserOrganizationMapper.select(upmsUserOrganization);
    }

}