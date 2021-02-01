<?php
session_start();
include("functions.php");
check_session_id();
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>音声投稿</title>
  <link rel="stylesheet" href="css/input.css">
  <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
</head>

<body>
  <form action="create_file.php" method="POST" enctype="multipart/form-data">
    <header>
      <div class="header-title">
        <p>Audio</p>
      </div>
      <a class="fas fa-home fa-2x" href="read.php" style="color: #1da0f2; position: fixed; top: 2.3%; left: 90%;"></a>
    </header>
    <div class="post">
      <div>
        <input type="text" name="title" placeholder="title" class="title" class="title">
      </div>
      <div class="file">
        音声ファイルを選択
        <input type="file" name="upfile" accept="audio/*">
      </div>
      <div class="button">
        <button>submit</button>
      </div>
    </div>
  </form>

</body>

</html>