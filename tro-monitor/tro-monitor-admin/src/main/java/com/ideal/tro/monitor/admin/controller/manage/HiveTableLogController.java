package com.ideal.tro.monitor.admin.controller.manage;

import com.ideal.tro.common.base.BaseController;
import com.ideal.tro.monitor.dao.model.hive.HiveTableLog;
import com.ideal.tro.monitor.rpc.api.HiveTableLogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 文章控制器
 * Created by shuzheng on 2016/11/14.
 */
@Controller
@Api(value = "Hive表日志管理", description = "Hive表日志管理")
@RequestMapping("/manage/hive/log")
public class HiveTableLogController extends BaseController {

    private static Logger _log = LoggerFactory.getLogger(HiveTableLogController.class);

    @Autowired
    private HiveTableLogService hiveTableLogService;


    @ApiOperation(value = "Hive表首页")
    @RequiresPermissions("monitor:hivelog:read")
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "/manage/hive/log/index";
    }

    @ApiOperation(value = "Hive表列表")
    @RequiresPermissions("monitor:hivelog:read")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public Object list(
            @RequestParam(required = false, defaultValue = "0", value = "offset") int offset,
            @RequestParam(required = false, defaultValue = "10", value = "limit") int limit,
            @RequestParam(required = false, value = "sort") String sort,
            @RequestParam(required = false, value = "order") String order) {

        List<HiveTableLog> rows = hiveTableLogService.selectByExampleForOffsetPage(new HiveTableLog(), offset, limit);
        int total = hiveTableLogService.selectCount(new HiveTableLog());
        Map<String, Object> result = new HashMap<>();
        result.put("rows", rows);
        result.put("total", total);
        return result;
    }
}