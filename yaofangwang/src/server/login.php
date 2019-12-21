<?php
$username = $_REQUEST["username"];
$password = $_REQUEST["password"];

// $username = "button1";
// $password = "123456789";
$db = mysqli_connect("127.0.0.1","root","","yf");
$sql = "SELECT * FROM account WHERE name='$username'";
$result = mysqli_query($db,$sql);
// $data = mysqli_fetch_all($result,MYSQLI_ASSOC);

$obj = array("status"=>"", "data"=>array("msg"=>""));

if(mysqli_num_rows($result) == 0){
    $obj["status"] = "error";
   $obj["data"]["msg"] = "该账户未注册";
}else{
    // $obj["status"] = "success";
    // $obj["data"]["msg"] = "账户存在";
    $sql2 = "SELECT * FROM account WHERE name='$username'";
    $result = mysqli_query($db,$sql2);
    $res = mysqli_fetch_all($result, MYSQLI_ASSOC);
    # 取出密码
    $pwd = $res[0]["password"];
    if($password!=$pwd){
        $obj["status"] = "error";
        $obj["data"]["msg"] = "登录失败，密码不正确";
    }else{
        $userId = $res[0]["id"];
        $obj["status"] = "success";
        $obj["data"]["msg"] = "恭喜你，登录成功";
        $obj["data"]["userId"] = $userId;
        $obj["data"]["password"] = $password;
        $obj["data"]["username"] = $username;
    }
    // print_r($res[0]["password"]);
} 
echo json_encode($obj,true);
