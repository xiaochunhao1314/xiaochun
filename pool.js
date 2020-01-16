const mysql=require('mysql');
let pool=mysql.createPool({
    host:'127.0.0.1',
    post:'3306',
    user:'root',
    password:'',
    database:'dg',
    connectionLimit:15
});
//导出连接池对象
module.exports=pool;