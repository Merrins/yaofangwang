<?php
    $name = $_REQUEST["name"];
    $pw  = $_REQUEST["password"];
    $phone = $_REQUEST["phone"];

    $db = mysqli_connect("127.0.0.1","root","","yf");
    $sql = "INSERT INTO `yf`.`account` (`id`, `name`, `password`, `phone`, `email`) VALUES (NULL, '$name', '$pw', '$phone', NULL)";
    $result = mysqli_query($db,$sql);
    echo $result;
?>