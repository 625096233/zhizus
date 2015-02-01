package com.dempe.zhizus.admin;

import com.dempe.zhizus.Constants;
import com.dempe.zhizus.dao.GoodsDetailDao;
import com.dempe.zhizus.utils.FileUtils;
import com.dempe.zhizus.utils.MD5;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/2/1
 * Time: 下午5:15
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/admin/goodsDetail")
public class GoodsDetailController {

    private final static String FOCUS_IMG_DIR = "goods";

    @Resource
    private GoodsDetailDao goodsDetailDao;

    @RequestMapping("/add")
    public String add(@RequestParam String gid, @RequestParam String size, @RequestParam String color, @RequestParam
    int storeNum, @RequestParam MultipartFile photo) throws IOException {
        if (photo != null && !photo.isEmpty()) {
            String id = MD5.hash(photo.getBytes());
            String fileName = photo.getOriginalFilename();
            String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
            String imgName = id + "." + extensionName;
            FileUtils.saveUploadFile(imgName, Constants.IMG_DIR + FOCUS_IMG_DIR + File.separator, photo);
            goodsDetailDao.add(gid, color, size, Constants.IMG_HOST + FOCUS_IMG_DIR + File.separator + imgName, storeNum);
        }

        return "redirect:/admin/goods/detail?gid=" + gid;
    }
}
