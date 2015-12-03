package web.com.dempe.zhizus.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/1
 * Time: 上午12:14
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "front/index";
    }
}
