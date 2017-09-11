package com.ideal.tro.common.base;

import tk.mybatis.mapper.common.IdsMapper;
import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;


public interface BaseMapper<T> extends Mapper<T>,MySqlMapper<T>,IdsMapper<T> {

}
