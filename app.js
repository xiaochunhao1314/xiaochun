// 引入express模块
const express=require('express');
// 引入body-parser中间件模块
const bodyParser=require('body-parser');
// 引入用户路由器
const proRouter=require('./routers/pro.js');
// 创建web服务器
let app=express();
// 监听端口8080
app.listen(8080);

// 使用静态中间件
app.use(express.static('pro'));
// 使用body-parser中间件
app.use(bodyParser.urlencoded({
    extended:false
}));
// 挂载user路由器
app.use('/user',proRouter);
