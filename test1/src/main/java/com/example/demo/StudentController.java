package com.example.demo;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class StudentController {
    @RequestMapping("/getStudent")
    public Student getStudent(){
        Student studnet = new Student();
        studnet.setgender("女");
        studnet.setsName("何丽");
        studnet.setsId(5);
        return studnet;
        //return "Hello world!";
    }
}
