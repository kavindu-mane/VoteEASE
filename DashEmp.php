<!DOCTYPE html>

<?php
require 'Classes/DbConnector.php';

use Classes\DbConnector;

$dbcon = new Classes\DbConnector();
$conn = $dbcon->getConnection();
//
?>

<html>
    <head>
        <meta charset="UTF-8">
        
        <!--add Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css" rel="stylesheet"/>

        <!--add external files-->
        <link rel="Stylesheet" href="css/navbar.css">

        <!--css part-->
        <style>

            .navbar-toggler-icon{
                color: #000;}

            iframe {
                overflow-y: hidden;
                overflow-x: hidden;

                width: 100%;
                height: 100%;
            }
        </style>
        
        <title>Expence Manager - Employee</title>
    </head>


    <body>

        <!-- Sidebar -->
        <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
            <div class="position-sticky">
                <div class="list-group list-group-flush mx-3 mt-4">
                    <a class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list" href="#proposal"><i class="fas fa-gauge-high fa-fw me-3"></i><span>Dashboard</span></a>
                    <a class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list" href="#team"><i class="fas fa-users fa-fw me-3"></i><span>Our Team</span></a>
                    <a class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list" href="#feed"><i class="fas fa-comment-dots fa-fw me-3"></i><span>Feedback</span></a>
                    </div>
            </div>
        </nav>

        <!-- Sidebar end-->    

        <!-- Navbar -->
        <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
            <!-- Container wrapper -->
            <div class="container-fluid" >

                <!-- Toggle button -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation" >
                    <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
                </button>


                <!-- Logo area -->
                <a class="navbar-brand" class="navbar-nav d-flex justify-content-end align-items-center" href="#">
                    &nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/Logo.png.png" height="40px">
                </a>

                <!-- Right links -->
                <ul  class="navbar-nav ms-auto d-flex flex-row"> 

                    <!-- Notification dropdown -->
                    <li class="nav-item dropdown" style="padding-top: 7px">                    
                        <a class="nav-link dropdown-toggle hidden-arrow" role="button" data-bs-toggle="dropdown" aria-expanded="true">
                            <i class="fas fa-bell"></i><span class="badge rounded-pill badge-notification bg-danger">1</span>
                        </a>
                        <ul  class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                            <li><a class="dropdown-item" href="#">Notification 1</a></li>
                            <li><a class="dropdown-item" href="#">Notification 2</a></li>
                            <li><a class="dropdown-item" href="#">Notification 3</a></li>
                        </ul>
                    </li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;</li>

                    <!--profile-->
                    <li style="padding-top: 13px">
                        Username&nbsp;</li>
                    <li class="nav-item dropdown" aria-labelledby="navbarDropdownMenuLink">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="true">
                            <img src="Images/propic.jpg" class="rounded-circle" height="40" alt="ProPic" loading="lazy" />
                        </a>
                        <!--list-group list-group-flush mx-3 mt-4-->
                        <ul  class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href=profile.php><i class="far fa-user"></i><span>&nbsp;&nbsp;&nbsp;My profile</span></a></li>

                            <!-- Scrollable modal -->
                            <div class="modal-dialog modal-dialog-scrollable" id="teamm">
                            </div>
                            <li><a class="dropdown-item"  data-bs-toggle="list" href="#"><i class="fas fa-circle fa-xs" style="color: #00cd01"></i><span>&nbsp;&nbsp;&nbsp;Post</span></a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item"  data-bs-toggle="list" href="#"><i class="fas fa-right-from-bracket"></i><span>&nbsp;&nbsp;&nbsp;Logout</span></a></li>
                        </ul>
                    </li>
                    <li>&nbsp;</li>            
                </ul>
            </div>
        </nav>

        <!--Main layout-->
        <main style="margin-top: 90px;">
            <div id="content">
                <!-- Tab content container -->
                <div class="tab-content" id="nav-tabContent">
                    <?php
                    $activeTab = "proposal";
                    if (isset($_GET['tab'])) {
                        $activeTab = $_GET['tab'];
                    }
                    ?>
                    
                    <div class="tab-pane fade <?php if ($activeTab === "proposal") echo "show active"; ?>" id="proposal" style="height: 1000px;">
                        <iframe src="proposalsContents.php"></iframe>
                    </div>

                    <div class="tab-pane fade <?php if ($activeTab === "team") echo "show active"; ?>" id="team" style="height: 1000px;">
                        <iframe src="Our_team.php" class="no-scrollbar"></iframe>
                    </div>

                    <div class="tab-pane fade <?php if ($activeTab === "feed") echo "show active"; ?>" id="reports" style="height: 1000px;">
                        <iframe src="feedback.php"></iframe>
                    </div>
                </div>
            </div>


            <!-- JavaScript code to handle navigation -->
            <script>
                const navLinks = document.querySelectorAll('.list-group-item-action');

                navLinks.forEach(link => {
                    link.addEventListener('click', (e) => {
                        e.preventDefault();
                        const tabId = link.getAttribute('href');
                        const activeTab = document.querySelector('.tab-pane.show.active');
                        activeTab.classList.remove('show', 'active');

                        const targetTab = document.querySelector(tabId);
                        targetTab.classList.add('show', 'active');
                    });
                });
            </script>

        </main>
        <!--Main layout-->

        <!-- MDB -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

        <!--add js (https://getbootstrap.com/docs/4.4/getting-started/introduction/)--> 
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


    </body>
</html>
