package com.ideal.tro.upms.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.mapper.UpmsUserMapper;
import com.ideal.tro.upms.dao.model.UpmsUser;
import com.ideal.tro.upms.rpc.api.UpmsUserService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * UpmsUserService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsUserServiceImpl extends BaseServiceImpl<UpmsUser, UpmsUserMapper> implements UpmsUserService {

    private static Logger _log = LoggerFactory.getLogger(UpmsUserServiceImpl.class);

    @Autowired
    UpmsUserMapper upmsUserMapper;

    @Override
    public UpmsUser createUser(UpmsUser upmsUser) {
      /*  UpmsUserExample upmsUserExample = new UpmsUserExample();
        upmsUserExample.createCriteria()
                .andUsernameEqualTo(upmsUser.getUsername());*/
        //long count = upmsUserMapper.countByExample(upmsUserExample);
        String username = upmsUser.getUsername();
        UpmsUser t=new UpmsUser();
        if (StringUtils.isNotBlank(username)) {
            t.setUsername(username);
        }else {
            return null;
        }
        long count = upmsUserMapper.selectCount(t);
        if (count > 0) {
            return null;
        }
        upmsUserMapper.insert(upmsUser);
        return upmsUser;
    }

    @Override
    public UpmsUser selectByPrimaryKey(Integer id) {
        return upmsUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<UpmsUser> selectByExampleForOffsetPage(UpmsUser t, Integer offset, Integer limit) {

        Example example = new Example(UpmsUser.class);
        Example.Criteria criteria = example.createCriteria();

        String username = t.getUsername();
        String realname = t.getRealname();

        if (StringUtils.isNotBlank(username)) {
            criteria.andLike("username","%"+username+"%");
        }
        if (StringUtils.isNotBlank(realname)) {
            criteria.andLike("realname","%"+realname+"%");
        }
        PageHelper.startPage(offset, limit);
        return upmsUserMapper.selectByExample(example);

    }

    @Override
    public int selectCount (UpmsUser t){
        Example example = new Example(UpmsUser.class);
        Example.Criteria criteria = example.createCriteria();

        String username = t.getUsername();
        String realname = t.getRealname();

        if (StringUtils.isNotBlank(username)) {
            criteria.andLike("username","%"+username+"%");
        }
        if (StringUtils.isNotBlank(realname)) {
            criteria.andLike("realname","%"+realname+"%");
        }
        return upmsUserMapper.selectCountByExample(example);
    }

    @Override
    public int save(UpmsUser upmsUser) {
        _log.info("UpmsUser insert {}",upmsUser.toString());
        return upmsUserMapper.insertSelective(upmsUser);
    }

    @Override
    public int saveList(List<UpmsUser> list) {
        return upmsUserMapper.insertList(list);
    }

    @Override
    public int update(UpmsUser upmsUser) {
        return upmsUserMapper.updateByPrimaryKeySelective(upmsUser);
    }

    @Override
    public int updateIds(String ids) {
        String[] split = ids.split("-");
        _log.info("ids is {}",ids);
        try {
            for(String id:split){
                UpmsUser upmsUser =new UpmsUser();
                upmsUser.setLocked((byte)1);
                upmsUser.setUserId(Integer.valueOf(id));
                upmsUserMapper.updateByPrimaryKeySelective(upmsUser);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
        return 1;
    }


}