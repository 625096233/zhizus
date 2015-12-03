package web.com.dempe.zhizus.web.controller;

import com.alibaba.fastjson.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/2/15
 * Time: 10:22
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/focus")
public class FocusController {

    @Resource
    private FocusDao focusDao;

    @RequestMapping("/list")
    @ResponseBody
    public String list() {
        return JSONArray.toJSONString(focusDao.find().asList());
    }

}
