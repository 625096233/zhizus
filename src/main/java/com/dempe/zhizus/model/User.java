package com.dempe.zhizus.model;

import org.mongodb.morphia.annotations.Id;

/**
 * 用户信息表
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2014/12/31
 * Time: 14:33
 * To change this template use File | Settings | File Templates.
 */
public class User {

    @Id
    private String id;
    private String name;
    private String nickName;
    private String phone;
    private String email;
    private String qq;
    private String password;
    private long createAt;
    private int age;
    private String     address;
}
