package com.dempe.zhizus.dao;

import com.dempe.zhizus.model.User;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/1
 * Time: 上午10:22
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class UserDao extends BasicDAO<User, Serializable> {

    @Autowired
    protected UserDao(Datastore dataStore) {
        super(dataStore);
        ensureIndexes();// 自动创建索引
    }
}
