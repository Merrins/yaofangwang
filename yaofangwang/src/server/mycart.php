<?php
    $type = $_REQUEST["type"];
    // $type = "add";
    $db = mysqli_connect("127.0.0.1", "root", "", "yf");
    # 多表查询 f
    // $sql = "SELECT carts.*,goodslists.name,goodslists.src,goodslists.dosageForm,goodslists.price FROM carts , goodslists WHERE carts.good_id = goodslists.id";
    // $result = mysqli_query($db,$sql);
    // $data = mysqli_fetch_all($result,MYSQLI_ASSOC);
    // print_r( json_encode($data) );
    // print_r($result) ;
    // 单个增一 || 按数量增

// 添 取 删
if($type == "add")
{
  $good_id = $_REQUEST["good_id"];
  //   $good_id = 8;
  /* 检查之前是否存在对应的数据，如果存在那么就修改num值，如果不存在那么就插入数据 */
  $sql = "SELECT * FROM carts WHERE good_id = $good_id"  ;
  $result = mysqli_query($db,$sql);

  if(mysqli_num_rows($result) == 0)
  {
    /* 往数据库表中新增一条数据 */
    $sql = "INSERT INTO `carts` (`cart_id`, `good_id`, `num`) VALUES (NULL,$good_id, 1)";
  }else{
    /* 有该商品就 ，更新数据 */
    $sql = "UPDATE `carts` SET `num`= `num`+ 1 WHERE `good_id`=$good_id";
  }
  $res = mysqli_query($db,$sql);
  echo json_encode(array("status"=>"success"));
}elseif($type == "get")
{
    $sql = "SELECT carts.*,goodslists.name,goodslists.src,goodslists.specification,goodslists.manufacturers,goodslists.price FROM carts , goodslists WHERE carts.good_id = goodslists.id";
    $data = mysqli_fetch_all(mysqli_query($db, $sql), MYSQLI_ASSOC);
    echo json_encode($data) ;
}elseif($type == "del"){
    $good_id = $_REQUEST["good_id"];
    $delSql = "DELETE FROM `carts` WHERE good_id = $good_id";
    mysqli_query($db, $delSql);
    echo json_encode(array("status" => "success"), true);
}
?>