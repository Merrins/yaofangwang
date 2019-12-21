<?php
// 链接
$db = mysqli_connect("127.0.0.1","root","","yf");

// 加载数据
$jsonData =file_get_contents("goodsLists.json");
$data = json_decode($jsonData,true);
// print_r($data);

// 遍历插入
for($i=0;$i<count($data);$i++){
    $id = $i + 1;
    $name = $data[$i]["name"];
    $src = $data[$i]["src"];
    $price = $data[$i]["price"];
    $specification = $data[$i]["specification"];
    $dosageForm = $data[$i]["dosageForm"];
    $approvalNumbers = $data[$i]["approvalNumbers"];
    $shops = $data[$i]["shops"];
    $manufacturers = $data[$i]["manufacturers"];
    $sql ="INSERT INTO `yf`.`goods` (`goods_id`, `name`, `price`, `src`, `specification`, `dosageForm`, `approvalNumbers`, `shops`, `manufacturers`) 
            VALUES ($id , '$name',$price, '$src', '$specification', '$dosageForm', '$approvalNumbers', '$shops', '$manufacturers');";
    mysqli_query($db, $sql);
}

?>