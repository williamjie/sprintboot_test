# 项目声明
该项目所用到的 **API** 均来自卖座电影 ，只是为了得到数据进行项目练习，并没有进入到真实订单页面，完全出于学习用途，并无恶意，望卖座官方海涵。
###### 本项目的目的是为帮助第一次使用react开发，不知如何下手的童鞋所打造，如果感觉有帮助，请右上角start一下。不足指出有很多，欢迎Issues指出！
>
>
# 仓库地址
> [Newnessday](https://github.com/Newnessday/Newnessday.github.io/tree/master/docs/react-maizuo)
>
>
>
# 技术栈
> 直接请求卖座网，会出现跨域问题，所以中间加了一层server端，通过本地代理转发到server，然后才去请求真实的卖座api
>
> ps：另一种办法是通过chrome的Allow-control-Allow-origin插件来解决跨域
> 前端
>> react、react-redux、react-router-dom（4.xx）
>
>
> 服务端
>> koa2、koa2-router、pm2
>
>
# 运行方式
## 本地起server
> 1. 在 **src** 同级目录执行npm install
> 2. 进入 **server** 目录执行npm install
> 3. 全局安装pm2，执行npm install pm2 -g
> 4. 以上安装完之后，返回到 **src** 同级目录，执行npm start，会自动打开你的默认浏览器，并显示项目首页
>
## 设置chrome的Allow-control-Allow-origin
> 直接把所有请求的地址，全部改成卖座的接口就可以，请自行尝试
>
>
# 页面展示
> ps：部分UI细节未做处理，目前最深只做到选座页面。
>
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/1.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/2.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/3.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/4.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/5.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/6.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/7.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/8.jpg)
> ![image](https://github.com/Newnessday/Newnessday.github.io/blob/master/docs/react-maizuo/demoImg/9.jpg)
