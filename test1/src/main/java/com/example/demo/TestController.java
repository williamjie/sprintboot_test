package com.example.demo;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by zj on 2018/3/30.
 */
//@ResponseBody
@Controller
public class TestController {
    @RequestMapping(value="/testhello",method= RequestMethod.GET)
    public String sayHello(){
        return "hello test Controller";
    }
}