<?PHP
$type = $_REQUEST["type"];
$db = mysqli_connect("127.0.0.1", "root", "", "yf");
$start = ($_REQUEST["page"] - 1) * 10;
if($type == "default")
{
  $sql = "SELECT * FROM  goodslists LIMIT $start ,40";
}elseif($type == "price"){
    $sql = "SELECT * FROM  goodslists ORDER BY  goodslists.price  DESC LIMIT $start ,40";
}
// elseif($type == "op"){
//     $sql = "SELECT * FROM goods ORDER BY goods.shops  DESC LIMIT $start ,40";
// }
$result = mysqli_query($db,$sql);

$data = mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($data,true);
?>