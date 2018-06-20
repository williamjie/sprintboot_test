package com.example.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PathVariable;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import com.example.dao.Dao;
import com.example.dao.Person;
import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
public class DemoController {
    @Autowired
    Dao dao;
    
    //private static final Logger logger = LogManager.getLogger(DemoController.class);
    
    @RequestMapping(value="/get",method= RequestMethod.GET)
    public Person getP(String name){
        Person person = dao.findByName(name).get(0);
        return person;
    }


    @PostMapping("/setname")
    public String setname(@RequestBody Person json_data){
        log.debug("name:",json_data.getName());
        log.debug("addr:",json_data.getAddress());
        log.debug("id:",json_data.getId());

        Person person = new Person();
        person.setName(json_data.getName());
        person.setAddress(json_data.getAddress());
        dao.save(person);//实现数据更新
        return "insert into mysql success";
    }

    @RestController
    public class HelloController {
        @RequestMapping(value="/HelloController",method= RequestMethod.GET)
        //required=false 表示url中可以不穿入id参数，此时就使用默认参数
        public String sayHello(@RequestParam(value="id",required = false,defaultValue = "1") Integer id){
            return "id:"+id;
        }
    }

    @RequestMapping(value = "/viewDetail")
    @ResponseBody
    public String addQuestion(@RequestBody Map<String,Object> params){
        //String loanOrderNbr = params.get("loanOrderNbr").toString();
        return "ok";
    }

    @RequestMapping(value="/hello",method= RequestMethod.GET)
    public String index(){
        return "Hello Spring Boot";
    }


    /**
     * index home
     *
     * @return
     */
    @RequestMapping(value = "/home")
    public String home() {
        return "index home";
    }

    /**
     * 得到1个参数
     *
     * @param name
     *            用户名
     * @return 返回结果
     */
    @GetMapping(value = "/{name}")
    public String index(@PathVariable String name) {
        return "oh you are " + name + "<br> nice to meet you";// \n不起作用了,那就直接用html中的标签吧
    }

    /**
     * 简单post请求
     *
     * @param name
     * @param pwd
     * @return
     */

    @RequestMapping(value = "/testpost", method = RequestMethod.POST)
    public String testpost() {
        return "ok";
    }

    /**
     * 同时得到两个参数
     *
     * @param name
     *            用户名
     * @param pwd
     *            密码
     * @return 返回结果
     */
    /*
    @GetMapping(value = "/login/{name}&{pwd}")
    public String login(@PathVariable String name, @PathVariable String pwd) {
        if (name.equals("admin") && pwd.equals("admin")) {
            return "hello welcome admin";
        } else {
            return "oh sorry user name or password is wrong";
        }
    }
    */
    /**
     * 通过get请求去登陆
     *
     * @param name
     * @param pwd
     * @return
     */
    /*
    @RequestMapping(value = "/loginbyget", method = RequestMethod.GET)
    public String loginByGet(@RequestParam(value = "name", required = true) String name,
                             @RequestParam(value = "pwd", required = true) String pwd) {
        return "ok";
    }
    */

    /**
     * 通过post请求去登陆
     *
     * @param name
     * @param pwd
     * @return
     */
    /*
    @RequestMapping(value = "/loginbypost", method = RequestMethod.POST)
    public String loginByPost(@RequestParam(value = "name", required = true) String name,
                              @RequestParam(value = "pwd", required = true) String pwd) {
        return "loginByPost ok";
    }

    */
    /**
     * 参数为一个bean对象.spring会自动为我们关联映射
     * @param loginBean
     * @return
     */
    /*
    @RequestMapping(value = "/loginbypost1", method = { RequestMethod.POST, RequestMethod.GET })
    public String loginByPost1(RequestLoginBean loginBean) {
        if (null != loginBean) {
            //return login4Return(loginBean.getName(), loginBean.getPwd());
            return "ok";
        } else {
            return "error";
        }
    }
    */
    /**
     * 请求内容是一个json串,spring会自动把他和我们的参数bean对应起来,不过要加@RequestBody注解
     *
     * @param name
     * @param pwd
     * @return
     */

    /*
    @RequestMapping(value = "/loginbypost2", method = { RequestMethod.POST, RequestMethod.GET })
    public String loginByPost2(@RequestBody RequestLoginBean loginBean) {
        if (null != loginBean) {
            //return login4Return(loginBean.getName(), loginBean.getPwd());
            return "ok";
        } else {
            return "error";
        }
    }

    */


    /**
     * 对登录做出响应处理的方法
     *
     * @param name
     *            用户名
     * @param pwd
     *            密码
     * @return 返回处理结果
     */

    /*
    private String login4Return(String name, String pwd) {

        String result;
        BaseResponse response = new BaseResponse();
        if (name.equals("admin") && pwd.equals("admin")) {
            result = "hello welcome admin";
            response.setState(true);
        } else {
            result = "oh sorry user name or password is wrong";
            response.setState(false);
        }
        System.out.println("收到请求,请求结果:" + result);
        return new Gson().toJson(response);

        return " login4Return ok ";
    }
    */

}
