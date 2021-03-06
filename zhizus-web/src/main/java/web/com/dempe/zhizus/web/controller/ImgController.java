package web.com.dempe.zhizus.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: Dempe
 * Date: 2015/1/23
 * Time: 16:02
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class ImgController {


    @RequestMapping("fileupload")
    public String index() {
        return "admin/fileupload_demo";
    }

    /**
     * @描述 文件上传演示操作
     * @时间 2013-7-26 下午5:17:42
     */
    @ResponseBody
    @RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
    public String doFileUpload(@RequestParam MultipartFile file)
            throws IllegalStateException, IOException {

        System.out.println("fileName:" + file.getName());
        if (!file.isEmpty()) {
            String path = "imgs";
            //ProjectUtil.getMavenWebProjectPath() + "runtime";

            File myFile = new File(path);
            if (!myFile.exists()) {
                myFile.mkdirs();

            }
            file.transferTo(myFile);
        } else {
            return "fail";
        }
        return "success";
    }
}
