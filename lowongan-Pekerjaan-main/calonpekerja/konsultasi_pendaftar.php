<?php
	require "../php/connection.php";
    session_start();
    if(!isset($_SESSION['login_role'])){
            echo "<script language=javascript>document.location.href='login.php'</script>";
    }

    if(isset($_SESSION['login_role'])){
        if($_SESSION['login_role'] != 'Calon Pekerja')
            echo "<script language=javascript>document.location.href='login.php'</script>";
    }
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>OJV - Calon Pendaftar</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <link href="../css/bootstrap.min.css" rel="stylesheet" />
        <link href="../css/index.css" rel="stylesheet" />
        <!--     Fonts and icons     -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href="../font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
        <style>
        .navbar-default .navbar-nav > li > a:not(.btn) {
            opacity: 1;
            color: #FFFFFF;
            margin-top: 18px;
        }
        .navbar-default .navbar-nav > li > a:not(.btn):hover {
            opacity: 1;
            color: #59ABE3;
        }
        </style>
    </head>

    <body>
        <nav class="navbar navbar-default navbar-transparent navbar-fixed-top" color-on-scroll="200">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                        aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="dashboard.php" class="navbar-brand" style="color: #FFFFFF;">
                        OJV
                    </a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left" style="margin-left: 56px;">
                        <li>
                            <a href="dashboard.php">
                                Dashboard
                            </a>
                        </li>
                        <li>
                            <a href="lamaran.php">
                                Lamaran
                            </a>
                        </li>
                        <li>
                            <a href="lowongan_cari.php">Cari LPK</a>
                        </li>
                        <li>
                            <a href="konsultasi.php">Konsultasi</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="profil_edit.php">
                                Hallo, <?php echo $_SESSION['calon_pekerja_nama_lengkap'];?>
                            </a>
                        </li>
                        <li>
                            <a href="../php/logout.php" style="background-color: #D24D57; border-radius: 10px;">
                                Logout
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </nav>
        <div class="section section-header">
            <div class="parallax filter filter-color-black">
                <div class="image" style="background-image: url('../img/1.jpg')">
                </div>
                <div class="container">
                    <div class="content">
                        <form method="GET" action="dashboard.php">
                            <div class="title-area">
                                <h2>BINGUNG PILIH LPK ? <br>Yuk Konsultasi</h2><br/>
                                <a href="https://wa.me/6283122328278" target=_blank><img src="../img/whatsapp.png" alt="" width="80px"></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="../js/jquery.min.js" type="text/javascript"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    </body>

    </html>