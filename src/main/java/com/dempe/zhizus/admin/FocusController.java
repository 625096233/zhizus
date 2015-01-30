package com.dempe.zhizus.admin;

import com.dempe.zhizus.Constants;
import com.dempe.zhizus.dao.FocusDao;
import com.dempe.zhizus.utils.FileUtils;
import com.dempe.zhizus.utils.JSONResult;
import com.dempe.zhizus.utils.MD5;
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
    public String list(Model model) {
        model.addAttribute("focusList", focusDao.find().asList());
        return "admin/focus";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@RequestParam(required = false, defaultValue = "focusPhoto") String name, @RequestParam MultipartFile photo) throws IOException {
        if (photo != null && !photo.isEmpty()) {
            String id = MD5.hash(photo.getBytes());
            if (focusDao.findById(id) == null) {
                String fileName = photo.getOriginalFilename();
                String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
                String imgName = id + "." + extensionName;
                FileUtils.saveUploadFile(imgName, Constants.IMG_DIR + FOCUS_IMG_DIR + File.separator, photo);
                focusDao.add(id, name, FOCUS_IMG_DIR + File.separator + imgName);
            }
        }
        return "redirect:/admin/focus/list";
    }

    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(@RequestParam String id) {
        focusDao.deleteById(id);
        return JSONResult.getResult().toJSONString();
    }


}
