http://127.0.0.1:8081/getStudent

fastjson  返回json
{"sId":5,"sName":"何丽","gender":"女"}

http://127.0.0.1:8081/hello

一个项目中可以有多个controller

--------------------------------------------------------------
@RestController和@RequestMapping注解在spring boot中最基本的应用，
@RestController渲染的类将调用的结果直接返回给调用者
@RequestMapping主要作用是告诉spring，所有与路径相关的都被映射到home方法中，
可以作用于类处或方法处，主要是做了地址映射。
--------------------------------------------------------------
出现这种情况的原因在于：没有使用模版。即@Controller 用来响应页面，@Controller必须配合模版来使用。
spring-boot 支持多种模版引擎包括：
1，FreeMarker
2，Groovy
3，Thymeleaf （Spring 官网使用这个）
4，Velocity
--------------------------------------------------------------

Spring boot 同步处理 以及异步处理消息













