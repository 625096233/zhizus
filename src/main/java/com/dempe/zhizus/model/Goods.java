package com.dempe.zhizus.model;

import org.mongodb.morphia.annotations.Id;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2014/12/31
 * Time: 14:36
 * To change this template use File | Settings | File Templates.
 */
public class Goods {
    @Id
    private String id;

    private String name;
    //一级类别
    private String pid;
    //二级类别
    private String cid;
    // 原价
    private double price0;
    // 批发价
    private double price3;
    // 零售价
    private double price;

    private String desc;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public double getPrice0() {
        return price0;
    }

    public void setPrice0(double price0) {
        this.price0 = price0;
    }

    public double getPrice3() {
        return price3;
    }

    public void setPrice3(double price3) {
        this.price3 = price3;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
