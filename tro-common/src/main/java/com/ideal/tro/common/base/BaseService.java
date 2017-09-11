package com.ideal.tro.common.base;

import java.util.List;

/**
 * Created by Administrator on 2017/9/1.
 */
public  interface BaseService<T> {

    List<T> selectByExampleForOffsetPage(T t, Integer offset, Integer limit);

    List<T> selectAll();

    List<T> select(T t);

    int selectCount(T t);

    T selectByPrimaryKey(Integer id);

    int save(T t);

    int saveList(List<T> list);

    int update(T t);

    int updateIds(String ids);

}
