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
import org.springframework.web.bind.annotation.RequestParam;

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
        System.out.print("GetMongoUserName------------id:"+id+" name:"+name+" pwd:"+pwd);

        user.setId(id);
        user.setUserName(name);
        user.setPassWord(pwd);
        userDao.saveUser(user);
        return user.toString();
        //return "hello world";
        //return service.getUser(id);
    } //http://localhost:9090/GetMongoUserName/123/名字/密码

    @RequestMapping(value="/hello",method= RequestMethod.GET)
    public String sayHello(@RequestParam("id") Long id,@RequestParam("name") String name,@RequestParam("pwd") String pwd){
        //return "id:"+id;
        System.out.print("hello------------id:"+id+" name:"+name+" pwd:"+pwd);

        UserEntity user = new UserEntity();
        user.setId(id);
        user.setUserName(name);
        user.setPassWord(pwd);
        userDao.saveUser(user);
        return user.toString();
    } //localhost:9090/hello?id=1000

    /*
    @RequestMapping(value = "/test",method = RequestMethod.POST)
    public void demoTest(){

        System.out.print("demoTest------------");
        UserEntity user= userDao.findUserByUserName("小明");
        //redisService.saveUser("1","value22222");
    }
    */

}