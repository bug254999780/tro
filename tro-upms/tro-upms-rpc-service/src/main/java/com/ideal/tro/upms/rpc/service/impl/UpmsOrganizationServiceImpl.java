package com.ideal.tro.upms.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.upms.dao.mapper.UpmsOrganizationMapper;
import com.ideal.tro.upms.dao.model.UpmsOrganization;
import com.ideal.tro.common.annotation.BaseService;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.rpc.api.UpmsOrganizationService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * UpmsOrganizationService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
@BaseService
public class UpmsOrganizationServiceImpl extends BaseServiceImpl<UpmsOrganization, UpmsOrganizationMapper> implements UpmsOrganizationService {

    private static Logger _log = LoggerFactory.getLogger(UpmsOrganizationServiceImpl.class);

    @Autowired
    UpmsOrganizationMapper upmsOrganizationMapper;

    @Override
    public List<UpmsOrganization> selectByExampleForOffsetPage(UpmsOrganization t, Integer offset, Integer limit) {
        Example example = new Example(UpmsOrganization.class);
        Example.Criteria criteria = example.createCriteria();
        String name = t.getName();
        if (StringUtils.isNotBlank(name)) {
            criteria.andLike("name","%"+name+"%");
        }
        criteria.andEqualTo("status",1);
        PageHelper.startPage(offset, limit);
        return upmsOrganizationMapper.selectByExample(example);
    }

    @Override
    public int selectCount (UpmsOrganization t){
        Example example = new Example(UpmsOrganization.class);
        Example.Criteria criteria = example.createCriteria();
        String name = t.getName();
        if (StringUtils.isNotBlank(name)) {
            criteria.andLike("name","%"+t.getName()+"%");
        }
        criteria.andEqualTo("status",1);
        return upmsOrganizationMapper.selectCountByExample(example);
    }

    @Override
    public int save(UpmsOrganization upmsOrganization) {
        //upmsOrganization.setStatus((byte)1);
        return upmsOrganizationMapper.insertSelective(upmsOrganization);
    }

    @Override
    public int saveList(List<UpmsOrganization> list) {
        return upmsOrganizationMapper.insertList(list);
    }

    @Override
    public int update(UpmsOrganization upmsOrganization) {
        return upmsOrganizationMapper.updateByPrimaryKeySelective(upmsOrganization);
    }

    @Override
    public int updateIds(String ids) {
        String[] split = ids.split("-");
        _log.info("ids is {}",ids);
        try {
            for(String id:split){
                UpmsOrganization upmsOrganization =new UpmsOrganization();
                upmsOrganization.setStatus((byte)-1);
                upmsOrganization.setOrganizationId(Integer.valueOf(id));
                upmsOrganizationMapper.updateByPrimaryKeySelective(upmsOrganization);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
        return 1;
    }


    @Override
    public UpmsOrganization selectByPrimaryKey(Integer id) {
        return upmsOrganizationMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<UpmsOrganization> selectAll() {
        return upmsOrganizationMapper.selectAll();
    }

}