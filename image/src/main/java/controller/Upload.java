package controller;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by Administrator on 2017/7/27.
 */
@Controller
public class Upload {

    @RequestMapping(value = "go")
    public String go(){

        return "upload";
    }

    @ResponseBody
    @RequestMapping("test")
    public String test(@RequestParam("test") String test){
        System.out.println("abx");
        return test;
    }

    @RequestMapping("/dituUrl")
    @ResponseBody
    public String dituUrl(@RequestParam("file1") CommonsMultipartFile file1,
                          HttpServletRequest request) throws IOException {
        System.out.println("dituUrl");
        BufferedImage img = ImageIO.read(file1.getInputStream());
        String fileName = "" + System.currentTimeMillis();
        String url = "172.203.148.47/styles/others/assets/img/"+fileName;
        OutputStream outImg = new FileOutputStream(url);
        JPEGImageEncoder enc = JPEGCodec.createJPEGEncoder(outImg);
        enc.encode(img);

        outImg.close();
        file1.getInputStream().close();
        return url;
    }


    @RequestMapping(value = "success")
    public String success(@RequestParam("file1") CommonsMultipartFile file1,
        @RequestParam("file2") CommonsMultipartFile file2,
                          @RequestParam("dataX") String dataX,
                          @RequestParam("dataY") String dataY,
                          @RequestParam("dataWidth") String dataWidth,
                          @RequestParam("dataHeight") String dataHeight){
        System.out.println("wo shi hout tai");
        InputStream inputStream1;
        InputStream inputStream2;
        System.out.println(file1.getOriginalFilename());
        try {
            //底图的流
            inputStream1= file1.getInputStream();
            //二维码的流
            inputStream2 = file2.getInputStream();

            BufferedImage img1 = ImageIO.read(inputStream1);
            BufferedImage img2 = ImageIO.read(inputStream2);
            Graphics g = img1.getGraphics();
            System.out.println("x:"+dataX +",y:"+dataY+"width:"+dataWidth+"height:"+dataHeight);
            g.drawImage(img2,Integer.parseInt(dataX),
                    Integer.parseInt(dataY),Integer.parseInt(dataWidth),
                    Integer.parseInt(dataHeight),null);

            OutputStream outImage = new FileOutputStream("E:\\22.jpg");
            JPEGImageEncoder enc = JPEGCodec.createJPEGEncoder(outImage);
            enc.encode(img1);

            inputStream1.close();
            inputStream2.close();
            outImage.close();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {

        }

        return "success";
    }
}
