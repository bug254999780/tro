package com.ideal.tro.upms.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.upms.dao.model.UpmsLog;
import com.ideal.tro.upms.rpc.api.UpmsLogService;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.upms.dao.mapper.UpmsLogMapper;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * UpmsLogService实现
 * Created by shuzheng on 2017/3/20.
 */
@Service
@Transactional
public class UpmsLogServiceImpl extends BaseServiceImpl<UpmsLog, UpmsLogMapper> implements UpmsLogService {

    private static Logger _log = LoggerFactory.getLogger(UpmsLogServiceImpl.class);

    @Autowired
    UpmsLogMapper upmsLogMapper;


    @Override
    public List<UpmsLog> selectByExampleForOffsetPage(UpmsLog upmsLog, Integer offset, Integer limit) {
        Example example = new Example(UpmsLog.class);
        Example.Criteria criteria = example.createCriteria();
        String description = upmsLog.getDescription();
        if (StringUtils.isNotBlank(description)) {
            criteria.andLike("description","%"+description+"%");
        }
        PageHelper.startPage(offset, limit);
        return upmsLogMapper.selectByExample(example);
    }

    @Override
    public int selectCount (UpmsLog upmsLog){
        Example example = new Example(UpmsLog.class);
        Example.Criteria criteria = example.createCriteria();
        String description = upmsLog.getDescription();
        if (StringUtils.isNotBlank(description)) {
            criteria.andLike("description","%"+description+"%");
        }
        return upmsLogMapper.selectCountByExample(example);
    }


}