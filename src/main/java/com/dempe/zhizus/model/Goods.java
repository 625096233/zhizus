package com.dempe.zhizus.model;

import org.mongodb.morphia.annotations.Id;

import java.util.List;

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
    private String cid;

    private List<String> imgUrls;
    private String size;
    private String color;
    private boolean inStore;
    // 原价
    private double oPrice;
    // 现价
    private double pPrice;

    private String desc;


}
