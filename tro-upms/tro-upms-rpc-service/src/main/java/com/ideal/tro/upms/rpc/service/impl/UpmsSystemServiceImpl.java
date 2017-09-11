package com.ideal.tro.upms.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.mapper.UpmsSystemMapper;
import com.ideal.tro.upms.dao.model.UpmsSystem;
import com.ideal.tro.upms.rpc.api.UpmsSystemService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;


import java.util.List;

/**
 * UpmsSystemService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsSystemServiceImpl extends BaseServiceImpl<UpmsSystem, UpmsSystemMapper> implements UpmsSystemService {

    private static Logger _log = LoggerFactory.getLogger(UpmsSystemServiceImpl.class);

    @Autowired
    UpmsSystemMapper upmsSystemMapper;

    @Override
    public List<UpmsSystem> selectByExampleForOffsetPage(UpmsSystem t, Integer offset, Integer limit) {
        Example example = new Example(UpmsSystem.class);
        Example.Criteria criteria = example.createCriteria();
        String title = t.getTitle();
        if (StringUtils.isNotBlank(title)) {
            criteria.andLike("title","%"+title+"%");
        }
        PageHelper.startPage(offset, limit);
        return upmsSystemMapper.selectByExample(example);
    }

    @Override
    public int selectCount (UpmsSystem t){
        Example example = new Example(UpmsSystem.class);
        Example.Criteria criteria = example.createCriteria();
        String title = t.getTitle();
        if (StringUtils.isNotBlank(title)) {
            criteria.andLike("title","%"+title+"%");
        }
        return upmsSystemMapper.selectCountByExample(example);
    }
    @Override
    public int save(UpmsSystem upmsSystem) {
        _log.info("upmsSystem insert {}",upmsSystem.toString());
        return upmsSystemMapper.insertSelective(upmsSystem);
}

    @Override
    public int saveList(List<UpmsSystem> list) {
        return upmsSystemMapper.insertList(list);
    }

    @Override
    public int update(UpmsSystem upmsSystem) {
        return upmsSystemMapper.updateByPrimaryKeySelective(upmsSystem);
    }

    @Override
    public int updateIds(String ids) {
        String[] split = ids.split("-");
        _log.info("ids is {}",ids);
        try {
            for(String id:split){
                UpmsSystem upmsSystem =new UpmsSystem();
                upmsSystem.setStatus((byte)-1);
                upmsSystem.setSystemId(Integer.valueOf(id));
                upmsSystemMapper.updateByPrimaryKeySelective(upmsSystem);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
        return 1;
    }


    @Override
    public List<UpmsSystem> selectAll() {
        UpmsSystem upmsSystem =new UpmsSystem();
        upmsSystem.setStatus((byte)1);
        return upmsSystemMapper.select(upmsSystem);
    }

    @Override
    public UpmsSystem selectByPrimaryKey(Integer id) {
        return upmsSystemMapper.selectByPrimaryKey(id);
    }

}