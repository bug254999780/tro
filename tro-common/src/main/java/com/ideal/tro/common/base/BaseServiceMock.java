package com.ideal.tro.common.base;

import java.util.List;

/**
 * 降级实现BaseService抽象类
 * Created by ZhangShuzheng on 2017/02/14.
 */
public abstract class BaseServiceMock<T, Mapper> implements BaseService<T> {


    @Override
    public List<T> selectByExampleForOffsetPage(T t, Integer offset, Integer limit) {
        return null;
    }


    @Override
    public List<T> selectAll() {

        return null;
    }

    @Override
    public List<T> select(T t) {

        return null;
    }

    @Override
    public T selectByPrimaryKey(Integer id) {
        return null;
    }

    @Override
    public int selectCount (T t){
        return -1;
    }

    @Override
    public int save(T t) {

        return -1;
    }

    @Override
    public int saveList(List<T> list) {
        return -1;
    }

    @Override
    public int update(T t) {
        return -1;
    }

    @Override
    public int updateIds(String ids) {
        return -1;

    }



}