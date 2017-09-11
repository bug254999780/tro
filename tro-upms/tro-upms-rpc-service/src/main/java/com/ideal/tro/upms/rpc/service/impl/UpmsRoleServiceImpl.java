package com.ideal.tro.upms.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.mapper.UpmsRoleMapper;
import com.ideal.tro.upms.dao.model.UpmsRole;
import com.ideal.tro.upms.rpc.api.UpmsRoleService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * UpmsRoleService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsRoleServiceImpl extends BaseServiceImpl<UpmsRole, UpmsRoleMapper> implements UpmsRoleService {

    private static Logger _log = LoggerFactory.getLogger(UpmsRoleServiceImpl.class);

    @Autowired
    UpmsRoleMapper upmsRoleMapper;

    @Override
    public List<UpmsRole> selectByExampleForOffsetPage(UpmsRole t, Integer offset, Integer limit) {

        Example example = new Example(UpmsRole.class);
        Example.Criteria criteria = example.createCriteria();
        String title = t.getTitle();
        if (StringUtils.isNotBlank(title)) {
            criteria.andLike("title", "%" + t.getTitle() + "%");
        }
        PageHelper.startPage(offset, limit);
        return upmsRoleMapper.selectByExample(example);
    }

    @Override
    public int selectCount(UpmsRole t) {
        Example example = new Example(UpmsRole.class);
        Example.Criteria criteria = example.createCriteria();
        String title = t.getTitle();
        if (StringUtils.isNotBlank(title)) {
            criteria.andLike("title", "%" + title + "%");
        }
        return upmsRoleMapper.selectCountByExample(example);
    }

    @Override
    public int save(UpmsRole upmsRole) {
        _log.info("UpmsRole insert {}", upmsRole.toString());
        return upmsRoleMapper.insertSelective(upmsRole);
    }

    @Override
    public int saveList(List<UpmsRole> list) {
        return upmsRoleMapper.insertList(list);
    }

    @Override
    public int update(UpmsRole upmsSystem) {
        return upmsRoleMapper.updateByPrimaryKeySelective(upmsSystem);
    }

    @Override
    public int updateIds(String ids) {
        String[] split = ids.split("-");
        _log.info("ids is {}", ids);
        try {
            for (String id : split) {
                UpmsRole upmsRole = new UpmsRole();
                upmsRole.setStatus((byte) -1);
                upmsRole.setRoleId(Integer.valueOf(id));
                upmsRoleMapper.updateByPrimaryKeySelective(upmsRole);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
        return 1;
    }


    @Override
    public List<UpmsRole> selectAll() {
        UpmsRole upmsSystem = new UpmsRole();
        upmsSystem.setStatus((byte) 1);
        return upmsRoleMapper.select(upmsSystem);
    }

    @Override
    public UpmsRole selectByPrimaryKey(Integer id) {
        return upmsRoleMapper.selectByPrimaryKey(id);
    }
}