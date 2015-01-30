package com.dempe.zhizus.admin;

import com.dempe.zhizus.Constants;
import com.dempe.zhizus.dao.FocusDao;
import com.dempe.zhizus.utils.FileUtils;
import com.dempe.zhizus.utils.MD5;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/26
 * Time: 下午9:24
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/admin/focus")
public class FocusController {

    private final static String FOCUS_IMG_DIR = "focus";

    @Resource
    private FocusDao focusDao;

    @RequestMapping("/list")
    public String list(Model model){
        model.addAttribute("focus", focusDao.find());
        return "admin/focus";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public String add(@RequestParam String name,@RequestParam MultipartFile file) throws IOException {
        if(StringUtils.isEmpty(name)){

        }

        if(file!=null &&!file.isEmpty()){

            File myFile = new File(Constants.IMG_DIR);
            if (!myFile.exists()) {
                myFile.mkdirs();

            }
            String type = file.getContentType().toString();
            System.out.println("====>"+type);

            String fileName = file.getOriginalFilename();
            // 获取图片的扩展名
            String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
            // 新的图片文件名 = 获取时间戳+"."图片扩展名
            String newFileName = String.valueOf(System.currentTimeMillis())
                    + "." + extensionName;
            String imgName = MD5.hash(file.getBytes())+"."+extensionName;
            FileUtils.saveUploadFile(imgName,Constants.IMG_DIR+FOCUS_IMG_DIR+File.separator,file);

            focusDao.add(name,FOCUS_IMG_DIR+File.separator+imgName);

        }
        return "/admin/focus";
    }


}
