<?php
    /* Bağlantı bilgilerinin alınması*/
    require_once("baglanti.php");
    
    /* Veritabanı sorgulama */
    $guncellenecek = mysqli_real_escape_string($baglanti, $_GET["yykn"]);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM yayinevi WHERE yykn = $guncellenecek");
    $satir = mysqli_fetch_assoc($sorgu)
?>
<!DOCTYPE html>
<html lang="tr"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>Yayınevi Güncelle</title>

    <!-- Bootstrap core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="https://getbootstrap.com/docs/4.4/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="./katalog_files/navbar-top.css" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-4">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.php" style="color:yellow;position:relative; left:200px">Ana Sayfa </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="kitap.php" style="color:yellow;position:relative; left:275px">Kitap İşlemleri</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="yazar.php" style="color:yellow;position:relative; left:350px">Yazar İşlemleri</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="yayinevi.php" style="color:yellow;position:relative; left:400px">Yayınevi İşlemleri</a>
      </li>
    </ul>
    <form class="form-inline mt-2 mt-md-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Ara" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Arama</button>
    </form>
  </div>
</nav>

<main role="main" class="container">
<!-- KODLAR -->
<h1>Yayınevi Güncelle</h1>
    <br>
<form action="yayinevi_guncellendi.php" method="post">
    Yayınevi Adı: <input type="text" name="yya" style="position:relative;left:30px" value="<?php echo $satir["yya"] ;?>"><br><br>
    Yayınevi URL: <input type="text" name="yyu" style="position:relative;left:25px" value="<?php echo $satir["yyu"] ;?>"><br><br>
    Yayınevi E-posta: <textarea name="yye" rows="2" cols="50"><?php echo $satir["yye"]?></textarea><br><br>
    <input type="hidden" value="<?php echo $satir["yykn"] ;?>" name="yykn">
    <input type="submit" value="Yayınevi Güncelle" style="text-align:center;background-color:#212121; color: white">
</form>
<!-- KODLAR -->   
</main>
<script src="jquery-3.4.1.slim.min.js"></script>
      <script src="bootstrap.bundle.min.js"></script>

</body></html>