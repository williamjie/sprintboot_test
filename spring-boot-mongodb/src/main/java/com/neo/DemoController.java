package com.neo;

/**
 * Created by zj on 2018/5/24.
 */
import com.neo.dao.UserDao;
import com.neo.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

@RestController
public class DemoController {
    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/test",method = RequestMethod.POST)
    @ResponseBody
    public UserEntity demoTest(HttpServletRequest request){
        //redisService.set("1","value22222");
        //rsp.addHeader("Access-Control-Allow-Origin", "*");
        //rsp.setHeader("Content-Type", "application/json;charset=UTF-8");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Long Id = 1l;
        try {
            Id = Long.valueOf(request.getParameter("Id"));
        } catch(Exception e){
            System.out.println("------------string to long err e:"+e);
        }
        System.out.println("username is:"+username);
        System.out.println("password is:"+password);

        System.out.println("请求发起时间" + new Date());
        UserEntity user=new UserEntity();
        user.setId(Id);
        user.setUserName(username);
        user.setPassWord(password);
        userDao.saveUser(user);
        UserEntity userFind= userDao.findUserByUserName("小明");
        System.out.println("-----user is "+userFind);
        //return "hello world"+username+" "+password;
        return user;
    }

}