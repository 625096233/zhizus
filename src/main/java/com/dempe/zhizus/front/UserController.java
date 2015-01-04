package com.dempe.zhizus.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/1
 * Time: 上午12:06
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/user")
public class UserController {


    @RequestMapping("/loginPage")
    private String loginPage(){
        return  "front/login";
    }

    public String login(){
        return null;
    }
    public String register(){
        return null;
    }
    public String bindingPhone(){
        return null;
    }
    public String updatePassword(){
        return null;
    }

    
}
