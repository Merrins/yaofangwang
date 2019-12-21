<?php
    // echo "ok";
    // 链接数据库
    $db = mysqli_connect("127.0.0.1", "root", "", "yf");
    // 查询数据
    $sql = "SELECT * FROM  goodslists ";
    // 执行
    $result = mysqli_query($db,$sql);
    # 获取行数
    $total = mysqli_num_rows($result);
    $count = ceil($total  / 40);
    $data  = array("count"=>$count);
    // 收集数据
    // $data = mysqli_fetch_all($result,MYSQLI_ASSOC);
    // 输出数据
    echo json_encode($data,true)
?>