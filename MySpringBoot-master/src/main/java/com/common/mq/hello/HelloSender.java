package com.common.mq.hello;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * Created by zhuzhengping on 2017/2/26.
 * 发送者
 * 依靠hello字段将消息平均分发给消费者
 */
@Component
public class HelloSender {

    @Autowired
    private AmqpTemplate rabbitTemplate;

    public void send(){
        String context = "hello" + new Date();
        System.out.println("sender:" + context);
        this.rabbitTemplate.convertAndSend("hello",context);
    }

    public void send(int i) {
        String context = "hello,ZZP" + i;
        System.out.println("sender:" + context);
        this.rabbitTemplate.convertAndSend("hello",context);
    }


}
