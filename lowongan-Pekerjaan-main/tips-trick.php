<?php
	require "php/connection.php";
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>OJV - Online Job Vacancies</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/index.css" rel="stylesheet" />
        <!--     Fonts and icons     -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:300,400,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href="font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    </head>

    <body>
        <nav class="navbar navbar-default navbar-transparent navbar-fixed-top" color-on-scroll="200">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.php" class="navbar-brand" style="color: #FFFFFF;">
                    <div class="logo"><img src="img/ojvv.png" width="80px" alt=""></div> 
                    </a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right navbar-uppercase">
                        <li>
                        <a href="tips-trick.php" style="color: #FFFFFF; background-color: #03befc; border-radius: 10px;">
                                Tips dan Trik
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" id="dLabel" data-target="#" href="#" data-toggle="dropdown" role="button" aria-haspopup="true"
                                aria-expanded="false" style="color: #FFFFFF; background-color: #00B16A; border-radius: 10px;">
                                Calon Pendaftar
                            </a>
                            <ul class="dropdown-menu dropdown-info" aria-labelledby="dLabel">
                                <li>
                                    <a href="calonpekerja/login.php">Sign In</a>
                                </li>
                                <li>
                                    <a href="calonpekerja/signup.php">Sign Up</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </nav>
        <div class="section section-header">
            <div class="parallax filter filter-color-black">
                <div class="image" style="background-image: url('img/1.jpg')">
                </div>
                <div class="container">
                    <div class="content">
                        <h3 class="tips">Tips Memilih LPK Yang Terpercaya</h3>
                        <p class="trik">Mempunyai Ijin Resmi Untuk Beroperasi, tujuan dengan adanya surat ijin resmi ini adalah untuk membuktikan bahwa LPK tersebut memiliki surat yang valid dan resmi. Selain itu untuk membuktikan bahwa LPK tersebut layak untuk beroperasi sesuai syarat dan ketentuan, nama pemiliknya jelas, alamat serta domisili juga jelas sehingga kegiatannya akan terorganisasi dan terpercaya.</p>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </body>

    </html>