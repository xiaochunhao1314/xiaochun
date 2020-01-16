//打印验证码
var strYzm="",cYzm=false;
function yzm(){
    var arr=[0,1,2,3,4,5,6,7,8,9];
    var str=[];
    for(var i=0;i<4;i++){
        var index=Math.floor(Math.random()*arr.length);
        str.push(arr[index]);
    }
    cmsg.innerHTML=str.join(" ");
    strYzm=str.join("");
}
yzm();
//验证码验证
var checkpic=document.getElementById("checkpic");
checkpic.onblur=function(){
    if(checkpic.value==strYzm){
        cYzm=true;
    }else{
        cYzm=false;
    }
}