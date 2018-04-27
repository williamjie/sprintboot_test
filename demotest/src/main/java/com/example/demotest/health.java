package com.example.demotest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.stereotype.Component;
import org.springframework.boot.actuate.health.Health;
import org.springframework.http.HttpStatus;
/**
 * Created by zj on 2018/4/27.
 */
/*
@Component
public class health implements HealthIndicator{
    protected static Logger logger=LoggerFactory.getLogger(health.class);

    @Override
    public Health health() {
        return Health.up().withDetail("hello", "world").build();
    }

}

*/

//@Component
public class health implements HealthIndicator {

    @Override
    public Health health() {
        int errorCode = check();
        if (errorCode != 0) {
            return Health.down()
                    .withDetail("status", errorCode)
                    .withDetail("message", "服务故障")
                    .build();
        }
        return Health.up().build();
    }

    private int check(){
        // 对监控对象的检测操作
        return HttpStatus.NOT_FOUND.value();
    }
}