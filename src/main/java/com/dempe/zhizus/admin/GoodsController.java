package com.dempe.zhizus.admin;

import com.dempe.zhizus.dao.GoodsDao;
import com.dempe.zhizus.model.Goods;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/23
 * Time: 下午9:49
 * To change this template use File | Settings | File Templates.
 */
public class GoodsController {

    @Resource
    private GoodsDao goodsDao;

    public String index(int pageIndex,int pageSize){
        return "";

    }

    public String add(Goods goods){

        return "index";
    }
    public String delete(String id){
        goodsDao.deleteById(id);
        return "index";
    }
    public String update(Goods goods){
        return "";
    }
}
