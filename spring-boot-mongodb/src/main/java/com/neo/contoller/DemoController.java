package com.neo.contoller;

/**
 * Created by zj on 2018/5/24.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.neo.dao.impl.UserDaoImpl;
import com.neo.entity.UserEntity;
import com.neo.dao.UserDao;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
public class DemoController {
    @Autowired
    private UserDaoImpl redisService ;

    @Autowired
    private UserDao userDao;


    @GetMapping("/GetMongoUserName/{id}/{name}/{pwd}")
    public String getUser(@PathVariable("id") Long id,@PathVariable("name") String name,@PathVariable("pwd") String pwd ) {
        UserEntity user = new UserEntity();
        //Long xx = Long.parseLong();
        user.setId(id);
        user.setUserName(name);
        user.setPassWord(pwd);
        userDao.saveUser(user);
        return "hello world";
        //return service.getUser(id);
    }
    /*
    @RequestMapping(value = "/test",method = RequestMethod.POST)
    public void demoTest(){

        System.out.print("demoTest------------");
        UserEntity user= userDao.findUserByUserName("小明");
        //redisService.saveUser("1","value22222");
    }
    */

}