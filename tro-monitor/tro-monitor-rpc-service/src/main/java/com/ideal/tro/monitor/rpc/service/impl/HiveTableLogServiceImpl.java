package com.ideal.tro.monitor.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.common.annotation.BaseService;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.monitor.common.util.HiveJdbcClient;
import com.ideal.tro.monitor.dao.mapper.HiveTableLogMapper;
import com.ideal.tro.monitor.dao.model.hive.HiveTable;
import com.ideal.tro.monitor.dao.model.hive.HiveTableLog;
import com.ideal.tro.monitor.rpc.api.HiveTableLogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.sql.SQLException;
import java.util.List;

/**
 * HiveTableLogService实现
 * Created by xqm on 2017/9/14.
 */
@Service
@Transactional
@BaseService
public class HiveTableLogServiceImpl extends BaseServiceImpl<HiveTableLog, HiveTableLogMapper> implements HiveTableLogService {
    private static Logger _log = LoggerFactory.getLogger(HiveTableLogServiceImpl.class);

    @Autowired
    HiveTableLogMapper hiveTableLogMapper;

    @Override
    public List<HiveTableLog> selectByExampleForOffsetPage(HiveTableLog hiveTable, Integer offset, Integer limit) {
        Example example = new Example(HiveTableLog.class);
        Example.Criteria criteria = example.createCriteria();

        PageHelper.startPage(offset, limit);
        return hiveTableLogMapper.selectByExample(example);
    }

    @Override
    public int selectCount(HiveTableLog hiveTableLog) {
        Example example = new Example(HiveTable.class);
      /*   Example.Criteria criteria = example.createCriteria();
        String description = hiveTable.getDescription();
        if (StringUtils.isNotBlank(description)) {
            criteria.andLike("description","%"+description+"%");
        }*/
        return hiveTableLogMapper.selectCountByExample(example);
    }
    @Override
    public int selectCountFromHive(String tableName, String yyyyMMdd) {
        int count = 0;
        try {
            count = HiveJdbcClient.getInstance().selectCount(tableName, yyyyMMdd);
        } catch (ClassNotFoundException e) {
            return -1;
        } catch (SQLException e) {
            return -1;
        }
        return count;
    }
    @Override
    public int save(HiveTableLog hiveTableLog){
        return  hiveTableLogMapper.insertSelective(hiveTableLog);
    }
}