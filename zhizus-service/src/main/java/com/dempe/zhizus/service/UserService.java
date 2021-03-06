package com.dempe.zhizus.service;


import com.dempe.zhizus.common.model.User;
import com.dempe.zhizus.dao.UserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/1
 * Time: 上午10:32
 * To change this template use File | Settings | File Templates.
 */
@Service
public class UserService {

    @Resource
    private UserDao userDao;

    public User login(String username, String password) {
        return userDao.findOne(userDao.createQuery().field("name").equal(username).field("password").equal(password));
    }

    public User register(String nickname, String email, String password) {
        User user = new User();
        user.setNickname(nickname);
        user.setEmail(email);
        user.setPassword(password);
        userDao.save(user);
        return user;

    }

}
