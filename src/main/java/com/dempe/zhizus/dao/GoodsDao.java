package com.dempe.zhizus.dao;

import com.dempe.zhizus.model.Goods;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/23
 * Time: 下午9:48
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class GoodsDao extends BasicDAO<Goods, Serializable> {

    @Autowired
    protected GoodsDao(Datastore dataStore) {
        super(dataStore);
        ensureIndexes();// 自动创建索引
    }
}
