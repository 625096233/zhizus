package com.dempe.zhizus.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/26
 * Time: 下午9:24
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/admin/focus")
public class FocusController {

    @RequestMapping("/add")
    public String add(@RequestParam String name,@RequestParam String desc){
        return "/admin/focus";
    }

}
