package com.example;

import com.DemoApplication;
import com.common.RedisBaseDao;
import com.compont.User;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;



/**
 * Created by zhuzhengping on 2017/2/19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = DemoApplication.class)
public class RedisTest2 {
    private static Logger logger = LogManager.getLogger(RedisTest2.class);

    @Autowired
    private RedisBaseDao redisBaseDao;

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    @Test
    public void test(){
        try {
        User user = new User("zzp","123","zhu_zhengping@hotmail.com","king","2011");
        this.redisBaseDao.addValue("zzp",user.toString());
        System.out.println(this.redisBaseDao.getValue("zzp"));
        } catch (Exception e) {
            logger.info("---------Exception:",e);
        }

    }
    @Test
    public void test2(){
        try {
            stringRedisTemplate.opsForValue().set("zzp", "111");
            //Assert.assertEquals("111", stringRedisTemplate.opsForValue().get("aaa"));
        } catch(Exception e){
            logger.info("---Exception:",e);
        }
    }

    @Test
    public void testobj() throws InterruptedException {
        User user = new User("zzp","123","zhu_zhengping@hotmail.com","king","2010");
        ValueOperations<String,User> operations = redisTemplate.opsForValue();
        operations.set("com.zzp",user);
        Thread.sleep(1000);
        operations.set("com.zzp.1",user);
        Thread.sleep(1000);
        boolean exist = redisTemplate.hasKey("com.zzp.1");
        if (exist){
            System.out.println("exists is true");
        }else {
            System.out.println("exists is false");
        }
    }
}
