package com.dempe.zhizus.admin;

import com.dempe.zhizus.dao.GoodsDao;
import com.dempe.zhizus.dao.GoodsDetailDao;
import com.dempe.zhizus.model.Goods;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/23
 * Time: 下午9:49
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/admin/goods")
public class GoodsController {

    @Resource
    private GoodsDao goodsDao;

    @Resource
    private GoodsDetailDao goodsDetailDao;

    public String list(int pageIndex, int pageSize) {
        return "";

    }

    @RequestMapping("/detail")
    public String detail(@RequestParam String gid, Model model) {
        model.addAttribute("goods", goodsDao.findOne("_id", new ObjectId(gid)));
        model.addAttribute("goodsDetailList", goodsDetailDao.findByGid(gid));
        return "/admin/goods_detail";
    }

    @RequestMapping("/addPage")
    public String addPage() {
        return "admin/add_goods";
    }

    @RequestMapping("/add")
    public String add(@RequestParam String name, @RequestParam String pid, @RequestParam String cid, @RequestParam
    float price0, @RequestParam double price, @RequestParam double price3, @RequestParam String desc) {
        Goods goods = new Goods();
        goods.setName(name);
        goods.setPid(pid);
        goods.setCid(cid);
        goods.setPrice(price);
        goods.setPrice0(price0);
        goods.setPrice3(price3);
        goods.setDesc(desc);
        String gid = goodsDao.save(goods).getId().toString();
        return "redirect:/admin/goods/detail?gid=" + gid;
    }

    public String delete(String id) {
        goodsDao.deleteById(id);
        return "index";
    }

    public String update(Goods goods) {
        return "";
    }
}
