package com.dempe.zhizus.dao;

import com.dempe.zhizus.model.Focus;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/30
 * Time: 上午11:29
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class FocusDao extends BasicDAO<Focus, Serializable> {

    @Autowired
    protected FocusDao(Datastore dataStore) {
        super(dataStore);
        ensureIndexes();// 自动创建索引
    }

    public void add(String id, String name, String imgID) {
        Focus focus = new Focus();
        focus.setId(id);
        focus.setName(name);
        focus.setImgUrl(imgID);
        save(focus);
    }

    public Focus findById(String id) {
        return findOne("_id", id);
    }
}
