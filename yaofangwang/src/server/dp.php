<?php
    # 根据 url 的name 查询数据库
    $name = $_REQUEST["name"];
    $db = mysqli_connect("127.0.0.1","root","","yf");
    $sql = "SELECT * FROM goodslists WHERE name='$name'";
    $result = mysqli_query($db,$sql);
    $data = mysqli_fetch_all($result,MYSQLI_ASSOC);
    $data = json_encode($data,true);
    echo $data;
?>