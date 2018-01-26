# html/css 操作教程


# 参考书籍：
## Head First Html 与 CSS 第2版

---
第一部分：基础篇

1、新建一个专案

```rails new htmlcss```

2、新建一个 welcome 的 controller

```rails g controller welcome index```

3、修改config/rontes.rb

```将get welcome / index 修改为 root ：welcome#index```

4、让专案跑起来

```rails s```

5、可以看到在http://localhost:3000/页面出现

Welcome#index
Find me in app/views/welcome/index.html.erb

6、开始学习修改 welcome 的静态界面

(1)删除 welcome 的代码

<del>Welcome#index
Find me in app/views/welcome/index.html.erb
<del>

(2)添加下面的代码的内容

```<html>
   <head>
      <title>我是肖威</title>
  </head>
  <body>
      <h1>才华横溢科技（北京）有限责任公司</h1>
      <img src="https://ws2.sinaimg.cn/large/006tNc79ly1fnts6bdguhj311x0pa7a6.jpg" alt="">
      <p>我们在构建一所<em>在线职业技能大学</em></p>
      <h2>如果你想要加入我们</h2>
      <p>可以直接联系我</p>
      <h3>联系方式</h3>
      <p>494410617@qq.com</p>
   </body>
 <html>
 ```

 7、修改app/views/layouts/application.html.erb里面的标题；
  ```
  <title>Htmlcss</title>
  改变为
  <title>才华横溢</title>
   ```
   page的首页可以变为从Htmlcss变为才华横溢


8、添加style标签,修改图片大小

<img src="app/assets/images/he-zi.png">

```
<html>
   <head>
      <title>我是肖威</title>
      <style type="text/css">
         body{
           background-color: #d2b48c;（添加土黄色背景）
           margin-left: 20%;（设置左右外边距占页面20%）
           margin-right: 20%;
           border: 2px dotted black;（定义页面主题周围的边框是虚线，颜色是黑色）
           padding: 10px 10px 10px 10px;（在页面主题周围创建一些内边距）
           font-family: sans-serif;（定义文本使用字体）
         }
      </style>
  </head>
  <body>
      <h1>才华横溢科技（北京）有限责任公司</h1>
      <img src="https://ws2.sinaimg.cn/large/006tNc79ly1fnts6bdguhj311x0pa7a6.jpg" "width=300px; height=300px" alt="">
      <p>我们在构建一所<em>在线职业技能大学</em></p>
      <h2>如果你想要加入我们</h2>
      <p>可以直接联系我</p>
      <h3>联系方式</h3>
      <p>494410617@qq.com</p>
   </body>
 <html>

 ```

9、增加一个超链接

 ```
 <html>
    <head>
       <title>我是肖威</title>
       <style type="text/css">
          body{
            background-color: #d2b48c;
            margin-left: 20%;
            margin-right: 20%;
            border: 2px dotted black;
            padding: 10px 10px 10px 10px;
            font-family: sans-serif;
          }
       </style>
   </head>
   <body>
       <h1>才华横溢科技（北京）有限责任公司</h1>
       <img src="https://ws2.sinaimg.cn/large/006tNc79ly1fnts6bdguhj311x0pa7a6.jpg" "width=300px; height=300px" alt="">
       <p>我们在构建一所<em>在线职业技能大学</em></p>
       <h2>如果你想要加入我们</h2>
       <p>可以直接联系我</p>
       <h3>联系方式</h3>
       <p>494410617@qq.com</p>
       <h3>官方网址</h3>
       <a href="http://www.caihuahengyi.cn">www.caihuahengyi.cn</a>
    </body>
  <html>

  ```

10、呈现效果
  <img src="app/assets/images/xiao-guo-1.png">

11、定义不同的标签
```<html>
   <head>
      <title>我是肖威</title>
      <style type="text/css">
      body{
        background-color: #d2b48c;
        margin-left: 20%;
        margin-right: 20%;
        border: 2px dotted black;
        padding: 10px 10px 10px 10px;
        font-family: sans-serif;
      }


      h1,h2{
        font-family: sans-serif;
        color: gray;
      }

      h1{
        border-bottom: 1px solid black;
      }

      p{
        color: maroon;
      }

      p.green{
        color: green
      }


      </style>
  </head>

<body>
      <h1>才华横溢科技（北京）有限责任公司</h1>
      <img src="https://ws2.sinaimg.cn/large/006tNc79ly1fnts6bdguhj311x0pa7a6.jpg" "width=300px; height=300px" alt="">
      <p>我们在构建一所<em>在线职业技能大学</em></p>
      <h2>如果你想要加入我们</h2>
      <p>可以直接联系我</p>
      <h3>联系方式</h3>
      <p class='green'>494410617@qq.com</p>
      <h3>官方网址</h3>
      <a href="http://www.caihuahengyi.cn">www.caihuahengyi.cn</a>
</body>
 <html>
```
 11、呈现效果
   <img src="app/assets/images/xiao-guo-2.png">


第二部分：网页静态页面制作

一、修改代码：

```
清空 welcome 的全部的数据
使用下面的代码数据完成替换
```

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>

       <style type="text/css">
       body{
         background-color: #b5a789;
         margin:0px;
       }
       #herder{
         background-color: #675c47;
         margin:10px;
         height:140px;
         text-align: center;
       }

       #main{
         display: table-cell;
         background: #675c46;
         padding: 15px;
         font-size: 105%;
         margin: 0px 330px 10px 10px;
         width: 420px;
         float: left;

       }

       #sidebar{
         display: table-cell;
         background: #675c43;
         font-size: 105%;
         padding: 15px;
         margin: 0px 10px 10px 10px;
         /*position: absolute;*/
        /* top:150px;*/
         /* right:0px;*/
         /* width:280px;*/

       }

       #footer{
         background-color: #675c47;
         color: #efe5d0;
         text-align: center;
         padding: 15px;
         margin: 10px;
         font-size:90%;
         clear: left;
       }

       h1{
          font-size:120%;
          color: #954b4b;
       }

       #slogan{
         color: #954b4b;

       }

       #tableContainer{
       display: table;
       }

       #tableRow{
       display: table-row;
       }
       </style>

   </head>

      <body>
        <div id="herder">
        <h1>欢迎来到才华横溢的在线职业技能大学</h1>
        <p>这里，将帮助你获取成功</p>
        <a href="http：www.caihuahengyi.cn">www.caihuahengyi.cn</a>
        </div>


<div id="tableContainer">
  <div id="tableRow">
        <div id="main">
        <h1>立即学习</h1>
        <img src="https://ws2.sinaimg.cn/large/006tNc79ly1fnts6bdguhj311x0pa7a6.jpg" "width=150px; height=150px" alt="">
        <p>加快速度</p>
        </div>

        <div id="sidebar">
           <p class=green>
          <br>

          <a href="http:www.caihuahengyi.cn">www.caihuahengyi.cn</a>
          <br>
          <span class=slogan>
           更高<br>
           更快<br>
           更强<br>
          </span>
           </p>
        </div>

      </div>
</div>


        <div id="footer">

          &copy; 2018;caihuahengyi
          <br>
          帮助普通人获得成功的一所在线职业技能大学

        </div>
  </body>
</html>

```

二、呈现效果
  <img src="app/assets/images/xiao-guo-3.png">
