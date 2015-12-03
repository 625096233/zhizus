package com.dempe.zhizus.common.utils;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: zhengdaxia
 * Date: 15/1/30
 * Time: 下午12:32
 * To change this template use File | Settings | File Templates.
 */
public class FileUtils {


    public static void saveUploadFile(String fileName, String filePath, MultipartFile filedata) throws IOException {
        /* 构建文件目录 */
        File fileDir = new File(filePath);
        if (!fileDir.exists()) {
            fileDir.mkdirs();
        }
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(filePath + File.separator + fileName);
            out.write(filedata.getBytes());

        } finally {
            out.flush();
            out.close();
        }

    }
}
