package com.dempe.zhizus.utils;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/30
 * Time: 下午12:32
 * To change this template use File | Settings | File Templates.
 */
public class FileUtils {



    public static void saveUploadFile(String fileName,String filePath, MultipartFile filedata) {


        /* 构建文件目录 */
        File fileDir = new File(filePath);
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }

        try {
            FileOutputStream out = new FileOutputStream(filePath + File.separator+ fileName);
            out.write(filedata.getBytes());
            out.flush();
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
