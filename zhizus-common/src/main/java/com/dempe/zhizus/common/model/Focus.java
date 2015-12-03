package com.dempe.zhizus.common.model;

import org.mongodb.morphia.annotations.Id;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/26
 * Time: 下午9:15
 * To change this template use File | Settings | File Templates.
 */
public class Focus {

    @Id
    private String id;

    private String imgUrl;

    private String name;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
