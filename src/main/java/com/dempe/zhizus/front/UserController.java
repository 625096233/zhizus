package com.dempe.zhizus.front;

import com.dempe.zhizus.model.User;
import com.dempe.zhizus.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

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

    @Resource
    private UserService userService;


    @RequestMapping("/loginPage")
    private String loginPage() {
        return "front/login";
    }

    @RequestMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password) {

        System.out.println("email:" + email + "  password:" + password);
        return "front/index";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerPage(@RequestParam String nickname, @RequestParam String email, @RequestParam String password,
                               @RequestParam String confirmPassword, Model model) {
        if (StringUtils.equals(password, confirmPassword)) {

            User user = userService.register(nickname, email, password);
            System.out.println("user:" + user);
            model.addAttribute("user", user);

        }
        return "forward:/zhizus/index";
    }

    @RequestMapping("/registerPage")
    public String register() {

        return "front/register";
    }

    public String bindingPhone() {
        return null;
    }

    public String updatePassword() {
        return null;
    }


}
