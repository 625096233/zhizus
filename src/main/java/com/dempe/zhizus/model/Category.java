package com.dempe.zhizus.model;

import org.mongodb.morphia.annotations.Id;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/23
 * Time: 下午9:32
 * To change this template use File | Settings | File Templates.
 */
public class Category {

    @Id
    private String cid;

    private String name;

    private String desc;

    /**
     * 父节点 第一级别类pid＝0
     */
    private String pid;

    private Date updateTime;

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }


    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }
}
