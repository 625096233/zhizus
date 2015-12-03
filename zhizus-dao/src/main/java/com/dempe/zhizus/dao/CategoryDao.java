package com.dempe.zhizus.dao;


import com.dempe.zhizus.common.Constants;
import com.dempe.zhizus.common.model.Category;
import org.apache.commons.lang.StringUtils;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/25
 * Time: 下午12:32
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class CategoryDao extends BasicDAO<Category, Serializable> {

    @Autowired
    protected CategoryDao(Datastore dataStore) {
        super(dataStore);
        ensureIndexes();// 自动创建索引
    }

    public void add(String name, String desc) {
        add(name, desc, Constants.DEFAULT_PID);
    }

    public List<Category> findByPid(String pid) {
        return find(createQuery().field("pid").equal(pid)).asList();
    }

    public void add(String name, String desc, String pid) {
        if (StringUtils.isEmpty(pid)) {
            pid = Constants.DEFAULT_PID;
        }
        Category category = new Category();
        category.setName(name);
        category.setDesc(desc);
        category.setPid(pid);
        category.setUpdateTime(new Date());
        save(category);
    }

    public Category getCategoryByName(String name) {
        return findOne("name", name);
    }
}
