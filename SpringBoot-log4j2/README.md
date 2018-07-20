# Spring Boot系列之Log4j2的配置使用

后台程序开发及上线时，一般都会用到Log信息打印及Log日志记录，开发时通过Log信息打印可以快速的定位问题所在，帮助我们快捷开发。程序上线后如遇到Bug或错误，此时则需要日志记录来查找发现问题所在。

Spring Boot 可以集成很多不同的日志系统，其中最常用的Apache Log4j，而Log4j 2是Log4j的升级版本，Log4j 2相对于Log4j 1.x 有了很多显著的改善。所以这篇博客就直接来说说Spring Boot如何集成并配置使用Log4j2.

## 1. 导入Log4j2的包

如果你使用Gradle，则在`build.gradle`文件中添加以下依赖。示例代码中使用的是Gradle方式。

```gradle
dependencies {
    // log4j2 
    compile "org.apache.logging.log4j:log4j-api:2.8"
    compile "org.apache.logging.log4j:log4j-core:2.8"
    // 用来支持Logger中的Async
    compile 'com.lmax:disruptor:3.3.6'
}
```


如果你使用Maven，则在`pom.xml`文件中添加以下依赖。

```xml
<dependencies>
  <dependency>
    <groupId>org.apache.logging.log4j</groupId>
    <artifactId>log4j-api</artifactId>
    <version>2.8</version>
  </dependency>

  <dependency>
    <groupId>org.apache.logging.log4j</groupId>
    <artifactId>log4j-core</artifactId>
    <version>2.8</version>
  </dependency>

  <dependency>
    <groupId>com.lmax</groupId>
    <artifactId>disruptor</artifactId>
    <version>3.3.6</version>
  </dependency>
</dependencies>
```

## 2. 添加log4j2配置文件

在项目的resources资源文件根目录下创建`log4j2.xml`文件并复制以下代码到文件中。

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!-- Configuration后面的status，这个用于设置log4j2自身内部的信息输出，可以不设置，当设置成trace时，
 你会看到log4j2内部各种详细输出。可以设置成OFF(关闭)或Error(只输出错误信息)
-->
<Configuration status="OFF">
    <!-- 日志文件目录和压缩文件目录配置 -->
    <Properties>
        <Property name="fileName">/home/kylin/log/knight/spring_log</Property>
        <Property name="fileGz">/home/kylin/log/knight/spring_log/7z</Property>
    </Properties>

    <Appenders>
        <!-- 输出控制台日志的配置 -->
        <Console name="console" target="SYSTEM_OUT">
            <!--控制台只输出level及以上级别的信息（onMatch），其他的直接拒绝（onMismatch）-->
            <ThresholdFilter level="info" onMatch="ACCEPT" onMismatch="DENY"/>
            <!-- 输出日志的格式 -->
            <PatternLayout pattern="%d{HH:mm:ss.SSS} [%t] %-5level %logger{36} - %msg%n"/>
        </Console>

        <!-- 打印出所有的信息，每次大小超过size，则这size大小的日志会自动存入按年份-月份建立的文件夹下面并进行压缩，作为存档 -->
        <RollingRandomAccessFile name="infoFile" fileName="${fileName}/web-info.log" immediateFlush="false"
                                 filePattern="${fileGz}/$${date:yyyy-MM}/app-%d{MM-dd-yyyy}-%i.web-info.gz">
            <PatternLayout pattern="%d{yyyy-MM-dd 'at' HH:mm:ss z} [%t] %-5level %logger{36} %L %M - %msg%xEx%n" />
            <Policies>
                <TimeBasedTriggeringPolicy interval="6" modulate="true" />
                <SizeBasedTriggeringPolicy size="50 MB"/>
            </Policies>
            <Filters>
                <!-- 只记录info和warn级别信息 -->
                <ThresholdFilter level="error" onMatch="DENY" onMismatch="NEUTRAL"/>
                <ThresholdFilter level="info" onMatch="ACCEPT" onMismatch="DENY" />
            </Filters>
            <!-- 指定每天的最大压缩包个数，默认7个，超过了会覆盖之前的 -->
            <DefaultRolloverStrategy max="50"/>
        </RollingRandomAccessFile>

        <!-- 存储所有error信息 -->
        <RollingRandomAccessFile name="errorFile" fileName="${fileName}/web-error.log" immediateFlush="false"
                                 filePattern="${fileGz}/$${date:yyyy-MM}/app-%d{MM-dd-yyyy}-%i.web-error.gz">
            <PatternLayout pattern="%d{yyyy-MM-dd 'at' HH:mm:ss z} [%t] %-5level %logger{36} %L %M - %msg%xEx%n" />
            <Policies>
                <TimeBasedTriggeringPolicy interval="6" modulate="true" />
                <SizeBasedTriggeringPolicy size="50 MB"/>
            </Policies>
            <Filters>
                <!-- 只记录error级别信息 -->
                <ThresholdFilter level="error" onMatch="ACCEPT" onMismatch="DENY" />
            </Filters>
            <!-- 指定每天的最大压缩包个数，默认7个，超过了会覆盖之前的 -->
            <DefaultRolloverStrategy max="50"/>
        </RollingRandomAccessFile>
    </Appenders>

    <!-- 全局配置，默认所有的Logger都继承此配置 -->
    <Loggers>
        <!-- AsyncRoot - 异步记录日志 - 需要LMAX Disruptor的支持 -->
        <AsyncRoot level="info" additivity="false">
            <AppenderRef ref="console"/>
            <AppenderRef ref="infoFile"/>
            <AppenderRef ref="errorFile"/>
        </AsyncRoot>
    </Loggers>
</Configuration>
```

## 3. 编写Log4j2辅助类

做好以上的配置之后，我们可以编写一个辅助类，让我们更方便的使用Log4j2来记录日志。

在utils包中创建`L.java`类文件。

```java
package com.spring.log4j2.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Logger 日志记录辅助类
 * 
 * Created by Kylin on 2017/5/11.
 */
public class L {

    private static final Logger LOGGER = LogManager.getLogger();

    private L() {
        /* cannot be instantiated */
        throw new UnsupportedOperationException("cannot be instantiated");
    }

    public static Logger getLogger(){
        return LOGGER;
    }

    public static void t(String msg) {
        LOGGER.trace(msg);
    }

    public static void d(String msg) {
        LOGGER.debug(msg);
    }

    public static void i(String msg) {
        LOGGER.info(msg);
    }

    public static void w(String msg) {
        LOGGER.warn(msg);
    }

    public static void e(String msg) {
        LOGGER.error(msg);
    }
}
```

编写完辅助类，使用起来就很简单了，通过下面的代码就可以轻松使用。

```java
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
```

这里的辅助类只是写了一些基本的使用方法，你可以根据你的需求进行定制，增加更多的辅助方法。对于辅助类中没有提供的方法也可以使用`L.getLogger()`方法获取Logger实例来使用。

## 4. 结果验证

日志的Level分级：TRACE < DEBUG < INFO < WARN < ERROR < FATAL。

因为我的log4j2中的level设置的是`INFO`级别。所以打印信息中只能看到 `INFO` 、`WARN` 、 `ERROR` 三种级别(FATAL级别的信息没有打印，否则也可以看到)。

打印信息如下图所示：

![Log Info](https://ooo.0o0.ooo/2017/05/11/59141c76b8b07.png)

同时在电脑系统中生成了Log文件，如下图所示：

![log file](https://ooo.0o0.ooo/2017/05/11/59141ce1be407.png)

观察路径可以发现，这个路径正是在`Log4j2.xml`中设置的路径：

```xml
    <!-- 日志文件目录和压缩文件目录配置 -->
    <Properties>
        <Property name="fileName">/home/kylin/log/knight/spring_log</Property>
        <Property name="fileGz">/home/kylin/log/knight/spring_log/7z</Property>
    </Properties>
```

## 5. 更多

Log4j2的Github地址：[https://github.com/apache/logging-log4j2](https://github.com/apache/logging-log4j2)

本教程的示例代码地址：[https://github.com/dkylin/SpringBoot-Sample/tree/master/SpringBoot-log4j2](https://github.com/dkylin/SpringBoot-Sample/tree/master/SpringBoot-log4j2)

