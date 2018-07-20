package com.spring.log4j2.controller;

import com.spring.log4j2.utils.L;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Web资源控制器
 *
 * Created by Kylin on 2017/5/11.
 */
@Controller
public class WebController {

    @RequestMapping("/")
    public String index(){
        String msg = "Spring Boot系列之Log4j2的配置及使用";
        L.t(msg);
        L.d(msg);
        L.i(msg);
        L.w(msg);
        L.e(msg);
        return "index";
    }
}
