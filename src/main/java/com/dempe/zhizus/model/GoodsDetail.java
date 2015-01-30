package com.dempe.zhizus.model;

import org.mongodb.morphia.annotations.Id;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/30
 * Time: 下午10:02
 * To change this template use File | Settings | File Templates.
 */
public class GoodsDetail {

    @Id
    private String id;

    private String gid;

    private String color;

    private String size;

    private String imgUrl;

    private Integer storeNum;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGid() {
        return gid;
    }

    public void setGid(String gid) {
        this.gid = gid;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Integer getStoreNum() {
        return storeNum;
    }

    public void setStoreNum(Integer storeNum) {
        this.storeNum = storeNum;
    }
}
