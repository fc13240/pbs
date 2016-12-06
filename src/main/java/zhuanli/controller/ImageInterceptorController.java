package zhuanli.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import zhuanli.controller.util.Settings;
import zhuanli.util.WebUtils;

@Controller 
public class ImageInterceptorController {
private static final Logger LOGGER = Logger.getLogger(ImageInterceptorController.class);  
    
    @RequestMapping(path="/patentImage/{patentId}/{fileName}.{suffix}.html")  
    public void patentImgIntercept(HttpServletRequest request, HttpServletResponse response,   
            @PathVariable String patentId,   
            @PathVariable String suffix,  
            @PathVariable String fileName) {  
          
        InputStream is = null;  
        OutputStream os = null;  
        try {  
            File file = new File(Settings.PATENT_IMAGE_PATH + patentId  + "/" + fileName + "." + suffix);  
            
            WebUtils.writeStreamToResponse(response, new FileInputStream(file));
        } catch (Exception e) {  
            LOGGER.error("读取文件失败", e);  
        } finally {  
            if (is != null) {  
                try {  
                    is.close();  
                } catch (IOException e) {  
                    LOGGER.error("读取文件失败", e);  
                }  
                  
                if (os != null) {  
                    try {  
                        os.close();  
                    } catch (IOException e) {  
                        LOGGER.error("读取文件失败", e);  
                    }  
                }  
            }  
        }  
          
    }
    
    @RequestMapping(path="/showImg/{fileType}/{fileName}.{suffix}.html")  
    public void brandImgIntercept(HttpServletRequest request, HttpServletResponse response,   
            @PathVariable String fileType,   
            @PathVariable String suffix,  
            @PathVariable String fileName) {  
          
        InputStream is = null;  
        OutputStream os = null;  
        try {  
            File file = new File(Settings.BRAND_IMAGE_PATH + fileType  + "/" + fileName + "." + suffix);  
            
            WebUtils.writeStreamToResponse(response, new FileInputStream(file));
        } catch (Exception e) {  
            LOGGER.error("读取文件失败", e);  
        } finally {  
            if (is != null) {  
                try {  
                    is.close();  
                } catch (IOException e) {  
                    LOGGER.error("读取文件失败", e);  
                }  
                  
                if (os != null) {  
                    try {  
                        os.close();  
                    } catch (IOException e) {  
                        LOGGER.error("读取文件失败", e);  
                    }  
                }  
            }  
        }  
          
    } 
}
