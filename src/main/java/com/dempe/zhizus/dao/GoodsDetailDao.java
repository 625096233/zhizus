package com.dempe.zhizus.dao;

import com.dempe.zhizus.model.GoodsDetail;
import org.mongodb.morphia.Datastore;
import org.mongodb.morphia.dao.BasicDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/2/1
 * Time: 下午4:26
 * To change this template use File | Settings | File Templates.
 */
@Repository
public class GoodsDetailDao extends BasicDAO<GoodsDetail, Serializable> {

    @Autowired
    protected GoodsDetailDao(Datastore dataStore) {
        super(dataStore);
        ensureIndexes();// 自动创建索引
    }

    public List<GoodsDetail> findByGid(String gid) {
        return find(createQuery().field("gid").equal(gid)).asList();
    }

    public void add(String gid, String color, String size, String imgUrl, int storeNum) {
        GoodsDetail goodsDetail = new GoodsDetail();
        goodsDetail.setGid(gid);
        goodsDetail.setSize(size);
        goodsDetail.setColor(color);
        goodsDetail.setImgUrl(imgUrl);
        goodsDetail.setStoreNum(storeNum);
        save(goodsDetail);
    }
}