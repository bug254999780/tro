package com.ideal.tro.upms.rpc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 服务启动类
 * Created by ZhangShuzheng on 2017/2/3.
 */
public class UpmsRpcServiceApplication {

	private static Logger _log = LoggerFactory.getLogger(UpmsRpcServiceApplication.class);

	public static void main(String[] args) {
		_log.info(">>>>> tro-upms-rpc-service 正在启动 <<<<<");
		new ClassPathXmlApplicationContext("classpath:META-INF/spring/*.xml");
		_log.info(">>>>> tro-upms-rpc-service 启动完成 <<<<<");
	}

}
