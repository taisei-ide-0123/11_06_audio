<?php
session_start();
include("functions.php");
check_session_id();

// ユーザ名取得
$user_id = $_SESSION['id'];

// DB接続
$pdo = connect_to_db();

// データ取得SQL作成
$sql = "SELECT * FROM voiceRecorder_table";
// SQL準備&実行
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

// データ登録処理後
if ($status == false) {
  // SQL実行に失敗した場合はここでエラーを出力し，以降の処理を中止する
  $error = $stmt->errorInfo();
  echo json_encode(["error_msg" => "{$error[2]}"]);
  exit();
} else {
  // 正常にSQLが実行された場合は入力ページファイルに移動し，入力ページの処理を実行する
  // fetchAll()関数でSQLで取得したレコードを配列で取得できる
  $result = $stmt->fetchAll(PDO::FETCH_ASSOC);  // データの出力用変数（初期値は空文字）を設定
  $output = "";
  // <tr><td>deadline</td><td>todo</td><tr>の形になるようにforeachで順番に$outputへデータを追加
  // `.=`は後ろに文字列を追加する，の意味
  foreach ($result as $record) {
    $output .= "<li class='post'>";
    $output .= "<h1>{$record["title"]}</h1>";
    $output .= "<audio controls id='sound' preload='auto'>";
    $output .= "<source src='{$record["voice"]}' type='audio/wav'>";
    $output .= "</audio>";
    $output .= "<a class='fas fa-trash-alt' href='delete.php?id={$record["id"]}' style='text-decoration: none; padding-top: 13px;'></a>";
    $output .= "</li>";
  }
  // $valueの参照を解除する．解除しないと，再度foreachした場合に最初からループしない
  // 今回は以降foreachしないので影響なし
  unset($value);
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>VoiceRecorder</title>
  <link rel="stylesheet" href="css/read.css">
  <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
</head>

<body>
  <header>
    <div class="header-title">
      <p>Audio</p>
    </div>
  </header>
  <div class="container">
    <a class="far fa-edit fa-2x" href="input.php" style="color: #1da0f2; text-decoration: none; padding: 0 10%;"></a>
    <a class="fas fa-microphone-alt" href="recording.html" style="color: #1da0f2; text-decoration: none; padding: 0 10%; font-size: 40px;"></a>
    <a class="fas fa-door-open fa-2x" href="logout.php" style="color: #1da0f2; text-decoration: none; padding: 0 10%;"></a>
  </div>
  <ul>
    <?= $output ?>
  </ul>
</body>

</html>