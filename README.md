# html/css 操作教程

1、新建一个专案
>rails new htmlcss

2、新建一个 welcome 的 controller
>rails g controller welcome index

3、修改config/rontes.rb
>将get welcome / index 修改为 root ：welcome#index

4、让专案跑起来
>rails s

5、可以看到在http://localhost:3000/页面出现
>Welcome#index
Find me in app/views/welcome/index.html.erb

6、开始学习修改 welcome 的静态界面

1、删除 welcome 的代码

<del>Welcome#index
Find me in app/views/welcome/index.html.erb
<del>

2、添加下面的代码的内容

<html>
   <head>
      <title>我是肖威</title>
  </head>
  <body>
      <h1>才华横溢科技（北京）有限责任公司</h1>
      <img src="https://ws2.sinaimg.cn/large/006tNc79ly1fnts6bdguhj311x0pa7a6.jpg" alt="">
      <p>我们在构建一所在线职业技能大学</p>
      <h2>如果你想要加入我们</h2>
      <p>可以直接联系我</p>
      <h3>联系方式</h3>
      <p>494410617@qq.com</p>
   </body>
 <html>
