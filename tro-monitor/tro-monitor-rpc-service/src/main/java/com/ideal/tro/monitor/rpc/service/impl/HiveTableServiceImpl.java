package com.ideal.tro.monitor.rpc.service.impl;

import com.github.pagehelper.PageHelper;
import com.ideal.tro.common.base.BaseServiceImpl;
import com.ideal.tro.monitor.dao.mapper.HiveTableMapper;
import com.ideal.tro.monitor.dao.model.hive.HiveTable;
import com.ideal.tro.monitor.rpc.api.HiveTableService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * HiveTableService实现
 * Created by shuzheng on 2017/8/31.
 */
@Service
@Transactional
public class HiveTableServiceImpl extends BaseServiceImpl<HiveTable, HiveTableMapper> implements HiveTableService {

    private static Logger _log = LoggerFactory.getLogger(HiveTableServiceImpl.class);

    @Autowired
    HiveTableMapper hiveTableMapper;

    @Override
    public List<HiveTable> selectByExampleForOffsetPage(HiveTable hiveTable, Integer offset, Integer limit) {
        Example example = new Example(HiveTable.class);
        Example.Criteria criteria = example.createCriteria();

        PageHelper.startPage(offset, limit);
        return hiveTableMapper.selectByExample(example);
    }

    @Override
    public int selectCount(HiveTable hiveTable) {
        Example example = new Example(HiveTable.class);
      /*   Example.Criteria criteria = example.createCriteria();
        String description = hiveTable.getDescription();
        if (StringUtils.isNotBlank(description)) {
            criteria.andLike("description","%"+description+"%");
        }*/
        return hiveTableMapper.selectCountByExample(example);
    }

    @Override
    public int save(HiveTable hiveTable) {
        //upmsOrganization.setStatus((byte)1);
        return hiveTableMapper.insertSelective(hiveTable);
    }

    @Override
    public int saveList(List<HiveTable> list) {
        return hiveTableMapper.insertList(list);
    }

    @Override
    public int update(HiveTable hiveTable) {
        return hiveTableMapper.updateByPrimaryKeySelective(hiveTable);
    }

    @Override
    public int updateIds(String ids) {
        String[] split = ids.split("-");
        _log.info("ids is {}", ids);
        try {
            for (String id : split) {
                HiveTable hiveTable = new HiveTable();
                hiveTable.setState("0");
                hiveTable.setId(Integer.valueOf(id));
                hiveTableMapper.updateByPrimaryKeySelective(hiveTable);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
        return 1;
    }


    @Override
    public HiveTable selectByPrimaryKey(Integer id) {
        return hiveTableMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<HiveTable> selectAll() {
        return hiveTableMapper.selectAll();
    }

    @Override
    public List<HiveTable> select(HiveTable hiveTable) {
        Example example = new Example(HiveTable.class);
        Example.Criteria criteria = example.createCriteria();
        String state = hiveTable.getState();
        if (StringUtils.isNotBlank(state)) {
            criteria.andEqualTo("state", state);
        }
        return hiveTableMapper.selectByExample(example);
    }


}