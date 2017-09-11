package com.ideal.tro.common.base;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * Created by Administrator on 2017/9/8.
 */
public abstract class BaseServiceImpl<T, Mapper> implements BaseService<T> {
    private static Logger _log = LoggerFactory.getLogger(BaseServiceImpl.class);

    @Override
    public List<T> selectByExampleForOffsetPage(T t, Integer offset, Integer limit) {
        return null;
    }

    @Override
    public List<T> selectAll() {
        _log.error("BaseServiceImpl 该抽象类 返回为 null 如使用抽象类请重新方法 selectAll");
        return null;
    }

    @Override
    public List<T> select(T t) {
        _log.error("BaseServiceImpl 该抽象类 返回为 null 如使用抽象类请重新方法 selectAll");
        return null;
    }

    @Override
    public T selectByPrimaryKey(Integer id) {
        _log.error("BaseServiceImpl 该抽象类 返回为 null 如使用抽象类请重新方法 selectAll");
        return null;
    }

    @Override
    public int selectCount (T t){
        _log.error("BaseServiceImpl 该抽象类 返回为 null 如使用抽象类请重新方法 selectCount");
        return -1;
    }

    @Override
    public int save(T t) {
        _log.error("BaseServiceImpl 该抽象类 返回为 -1 如使用抽象类请重新方法 save");
        return -1;
    }

    @Override
    public int saveList(List<T> list) {
        _log.error("BaseServiceImpl 该抽象类 返回为 -1 如使用抽象类请重新方法 saveList");
        return -1;
    }

    @Override
    public int update(T t) {
        _log.error("BaseServiceImpl 该抽象类 返回为 -1 如使用抽象类请重新方法 update");
        return -1;
    }

    @Override
    public int updateIds(String ids) {
        _log.error("BaseServiceImpl 该抽象类 返回为 -1 如使用抽象类请重新方法 updateIds");
        return -1;

    }

}
