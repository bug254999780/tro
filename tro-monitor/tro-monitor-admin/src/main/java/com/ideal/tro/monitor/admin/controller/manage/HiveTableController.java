package com.ideal.tro.monitor.admin.controller.manage;

import com.baidu.unbiz.fluentvalidator.ComplexResult;
import com.baidu.unbiz.fluentvalidator.FluentValidator;
import com.baidu.unbiz.fluentvalidator.ResultCollectors;
import com.ideal.tro.common.base.BaseController;
import com.ideal.tro.common.validator.LengthValidator;
import com.ideal.tro.monitor.dao.model.hive.HiveTable;
import com.ideal.tro.monitor.rpc.api.HiveTableService;
import com.ideal.tro.upms.common.constant.UpmsResult;
import com.ideal.tro.upms.common.constant.UpmsResultConstant;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 文章控制器
 * Created by shuzheng on 2016/11/14.
 */
@Controller
@Api(value = "Hive表管理", description = "Hive表管理")
@RequestMapping("/manage/hive")
public class HiveTableController extends BaseController {

	private static Logger _log = LoggerFactory.getLogger(HiveTableController.class);
	
	@Autowired
	private HiveTableService hiveTableService;



	@ApiOperation(value = "Hive表首页")
	@RequiresPermissions("monitor:hive:read")
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "/manage/hive/index";
	}

	@ApiOperation(value = "Hive表列表")
	@RequiresPermissions("monitor:hive:read")
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public Object list(
			@RequestParam(required = false, defaultValue = "0", value = "offset") int offset,
			@RequestParam(required = false, defaultValue = "10", value = "limit") int limit,
			@RequestParam(required = false, value = "sort") String sort,
			@RequestParam(required = false, value = "order") String order) {

		List<HiveTable> rows = hiveTableService.selectByExampleForOffsetPage(new HiveTable(), offset, limit);
		int total = hiveTableService.selectCount(new HiveTable());
		Map<String, Object> result = new HashMap<>();
		result.put("rows", rows);
		result.put("total", total);
		return result;
	}

	@ApiOperation(value = "新增表")
	@RequiresPermissions("monitor:hive:create")
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create() {
		return "/manage/hive/create";
	}

	@ApiOperation(value = "新增表")
	@RequiresPermissions("monitor:hive:create")
	@ResponseBody
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public Object create(HiveTable hiveTable) {
		ComplexResult result = FluentValidator.checkAll()
				.on(hiveTable.getTableName(), new LengthValidator(1, 20, "名称"))
				.doValidate()
				.result(ResultCollectors.toComplex());
		if (!result.isSuccess()) {
			return new UpmsResult(UpmsResultConstant.INVALID_LENGTH, result.getErrors());
		}
		long time = System.currentTimeMillis();
		//hiveTable.setCtime(time);
		int count = hiveTableService.save(hiveTable);
		return new UpmsResult(UpmsResultConstant.SUCCESS, count);
	}

	@ApiOperation(value = "删除表")
	@RequiresPermissions("monitor:hive:delete")
	@RequestMapping(value = "/delete/{ids}", method = RequestMethod.GET)
	@ResponseBody
	public Object delete(@PathVariable("ids") String ids) {
		int count = hiveTableService.updateIds(ids);
		return new UpmsResult(UpmsResultConstant.SUCCESS, count);
	}

	@ApiOperation(value = "修改表")
	@RequiresPermissions("monitor:hive:update")
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") int id, ModelMap modelMap) {
		HiveTable hiveTable = hiveTableService.selectByPrimaryKey(id);
		modelMap.put("organization", hiveTable);
		return "/manage/hive/update";
	}

	@ApiOperation(value = "修改表")
	@RequiresPermissions("monitor:hive:update")
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	@ResponseBody
	public Object update(@PathVariable("id") int id, HiveTable hiveTable) {
		ComplexResult result = FluentValidator.checkAll()
				.on(hiveTable.getTableName(), new LengthValidator(1, 20, "名称"))
				.doValidate()
				.result(ResultCollectors.toComplex());
		if (!result.isSuccess()) {
			return new UpmsResult(UpmsResultConstant.INVALID_LENGTH, result.getErrors());
		}
		hiveTable.setId(id);
		int count = hiveTableService.update(hiveTable);
		return new UpmsResult(UpmsResultConstant.SUCCESS, count);
	}


}