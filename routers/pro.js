const express=require('express');
// 引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
let router=express.Router();
//添加路由

//查询所有用户------测试用的
router.get("/userlist",function(req,res){
	pool.query('select * from dg_user',function(err,result){
		if(err) throw err;
		res.send(result);
	});
});

//获取蛋糕数据--------首页蛋糕
router.get("/dg",function(req,res){
	pool.query('select * from dg_laptop where isIndex=?',[1],function(err,result){
		if(err) throw err;
		res.send(result);
	});
});

//获取最新活动蛋糕
router.get("/nactive",function(req,res){
	pool.query('select * from dg_nactive',function(err,result){
		if(err) throw err;
		res.send(result);
	});
});

//获取蛋糕材料列表数据
router.get("/natvral",function(req,res){
	pool.query('select * from dg_natvral',function(err,result){
		if(err) throw err;
		res.send(result);
	});
});
//获取首页轮播图数据
router.get("/carousel",function(req,res){
	pool.query('select * from dg_index_carousel',function(err,result){
		if(err) throw err;
		res.send(result);
	});
});
//获取商品详情页轮播图数据
router.get("/product/:title",function(req,res){
	var obj=req.params;
	console.log(obj.title);
	pool.query('select * from dg_laptop_details where title=?',[obj.title],function(err,result){
		if(err) throw err;
		console.log(result);
		res.send(result);
	});
});


//根据手机号查询用户
router.get("/checkuname/:phone",function(req,res){
	var obj=req.params;
	console.log(obj.phone);
	pool.query('select * from dg_user where phone=?',[obj.phone],function(err,result){
		if(err) throw err;
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//注册用户
router.post("/reguser",function(req,res){
	var obj=req.body;
	console.log(obj);
	pool.query('insert into dg_user set ?',[obj],function(err,result){
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send("0");
		}
	}); 
});
//用户登录
router.get("/login/:phone&:upwd",function(req,res){
	var obj=req.params;
	pool.query('select * from dg_user where phone=? and upwd=?',[obj.phone,obj.upwd],function(err,result){
		if(result.length>0){
			res.send("1");
		}else{
			res.send("0");
		}
	});
});

//导出路由器对象
module.exports=router;