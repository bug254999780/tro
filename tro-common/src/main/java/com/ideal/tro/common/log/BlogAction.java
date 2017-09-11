package com.ideal.tro.common.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *BlogAction.
 *date 2017/4/18 13:17
 *@author xqm
 *
 */
public class BlogAction {
    /**
     * 自定义FLUME_LOGGER 级别 用于flume日志采集.
     */
    public static final Logger FLUME_LOGGER = LoggerFactory.getLogger("flume_logger");
    /**
     * 自定义FILE_LOGGER 级别 正常日志写入文件.
     */
    public static final Logger FILE_LOGGER = LoggerFactory.getLogger("file_logger");

    /**
     * 自定义console_output_logger 级别 指定控制台输出内容.
     */
    public static final Logger CONSOLE_OUTPUT_LOGGER = LoggerFactory.getLogger("console_output_logger");

    /**
     * 公共日志输出类.
     *
     * @param clazz
     * @return
     */
    public static Logger getLogger(Class<?> clazz) {
        Logger logger = LoggerFactory.getLogger(clazz);
        return logger;
    }
}
