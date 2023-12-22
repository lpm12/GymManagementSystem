package com.itmk.web.image;

import com.itmk.utils.ResultUtils;
import com.itmk.utils.ResultVo;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.util.UUID;

/**
 * @Author lpm
 *  
 */
@RestController
@RequestMapping("/api/upload")
public class ImageUploadController {
    //获取图片上传的路径
    @Value("${web.uploadpath}")
    private String webUploadpath;

    @RequestMapping("/uploadImage")
    public ResultVo uploadImage(@RequestParam("file") MultipartFile file) {
        //上传成功返回的图片路径
        String Url = null;
        //获取文件名
        String filename = file.getOriginalFilename();
        //获取扩展名 aa.png
        String fileExtenionName = filename.substring(filename.indexOf("."));
        //生成新的文件名称
        String newName = UUID.randomUUID().toString() + fileExtenionName;
        String path = webUploadpath;
        File fileDir = new File(path);
        if (!fileDir.exists()) {
            //设置文件权限
            fileDir.setWritable(true);
            fileDir.mkdirs();
        }
        File targetFile = new File(path, newName);
        try {
            file.transferTo(targetFile);
            Url = "/" + targetFile.getName();
        } catch (Exception e) {
            return null;
        }
        return ResultUtils.success("上传成功", "/images" + Url);
    }
}
