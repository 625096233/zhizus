package com.dempe.zhizus.admin;

import com.alibaba.fastjson.JSONObject;
import com.dempe.zhizus.Constants;
import com.dempe.zhizus.dao.CategoryDao;
import com.dempe.zhizus.model.Category;
import com.dempe.zhizus.utils.JSONResult;
import org.apache.commons.lang.StringUtils;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/25
 * Time: 下午12:30
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/admin/category")
public class CategoryController {

    @Resource
    private CategoryDao categoryDao;

    @RequestMapping(value = "/list")
    public String list(@RequestParam(required = false,defaultValue = Constants.DEFAULT_PID) String pid, Model model){
        model.addAttribute("categorys",categoryDao.findByPid(pid));
        return "admin/index";
    }



    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public String add(@RequestParam String name, @RequestParam String desc,@RequestParam(required = false,defaultValue = Constants.DEFAULT_PID) String pid){
        if(categoryDao.getCategoryByName(name)!=null){
            return JSONResult.getResult().putErrorStatus(400).toJSONString();
        }
        categoryDao.add(name,desc,pid);
        return JSONResult.getResult().toJSONString();
    }

    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(@RequestParam String cid){
        if(StringUtils.isEmpty(cid)){
            return JSONResult.getResult().putErrorStatus(400).toJSONString();
        }
       categoryDao.deleteById(new ObjectId(cid));
        return JSONResult.getResult().toJSONString();
    }

    @RequestMapping(value = "/getCategoryByCid",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String getCategoryByCid(@RequestParam String cid){
        if(StringUtils.isEmpty(cid)){
            return JSONResult.getResult().putErrorStatus(400).toJSONString();
        }
        Category category = categoryDao.findOne("cid", new ObjectId(cid));
        return JSONResult.getResult().putResult(category).toJSONString();
    }







}
