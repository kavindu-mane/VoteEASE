<!DOCTYPE html>
//<?php
//// Establish a connection to the MySQL server
//$conn = new mysqli('localhost', 'root', '', 'expensemanager');
//// Check the connection
//if ($conn->connect_error) {die("Connection failed: " . $conn->connect_error);}
//?>
<html>
    <head>
        <meta charset="UTF-8">
        
        <!--add Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        
        <!--add js (https://getbootstrap.com/docs/4.4/getting-started/introduction/)--> 
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        
        
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css" rel="stylesheet"/>

        <!-- MDB -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"></script>
        
        <!--add external files-->
        <link rel="Stylesheet" href="css/navbar.css">
        
        <script src="navbar.js"></script>
        
        
        
        
        <!--css part-->
        <style>
            body{
                overflow-y: visible;
                overflow-x: hidden;
            }
            #frame { 
                width: 100%;
                height: 100%;
            }
            .navbar-toggler-icon{
                color: #000;
        </style>
        
        <title>Expence Manager</title>
        
    </head>
    
    
    <body>
       
    <!-- Sidebar -->
        <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
          <div class="position-sticky">
            <div class="list-group list-group-flush mx-3 mt-4">
                
                <!--Tabs New Arrangment Start-->
                <!--Dashboard-->
                <a class="list-group-item list-group-item-action active sidebarnew1" id="list-dashBoard-list" data-bs-toggle="list" href="#list-dashBoard" role="tab" aria-controls="list-dashBoard" aria-selected="false" tabindex="-1"><i class="fas fa-gauge-high fa-fw me-3"></i><span>Dashboard</span></a>
                <!--Proposals-->
                <a class="list-group-item list-group-item-action sidebarnew1" id="list-proposal-list" data-bs-toggle="list" href="#list-proposal" role="tab" aria-controls="list-proposal" aria-selected="false"><i class="fas fa-file-alt fa-fw me-3"></i><span>Proposals</span></a>
                 <!--Employees-->
                <a class="list-group-item list-group-item-action sidebarnew1" id="list-employee-list" data-bs-toggle="list" href="#list-employee" role="tab" aria-controls="list-employee" aria-selected="false"><i class="fas fa-users fa-fw me-3"></i><span>Employees</span></a>
                <!--Reports-->
                <a class="list-group-item list-group-item-action sidebarnew1" id="list-reports-list" data-bs-toggle="list" href="#list-reports" role="tab" aria-controls="list-reports" aria-selected="false"><i class="fas fa-chart-line fa-fw me-3"></i><span>Reports</span></a>
                <!--Communicate-->
                <a class="list-group-item list-group-item-action sidebarnew1" id="list-communication-list" data-bs-toggle="list" href="#list-communication" role="tab" aria-controls="list-communication" aria-selected="false"><i class="fas fa-headset fa-fw me-3"></i><span>Communication</span></a>
                <!--Tabs New Arrangment End-->                
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
                <p> logo</p>
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
                    //<?php
//                    $sql = "SELECT * FROM temp WHERE id='3'";
//                    $result = $conn->query($sql);
//                    if ($result->num_rows > 0) {
//                        while ($row = $result->fetch_assoc()) {
//                            $username = $row["Name"];
//                            echo $username;
//                        }
//                    }
//                    $conn->close();
//                    ?>&nbsp;</li>
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
          <!-- Container wrapper -->
        </nav>
    
    <!--Main layout-->
<main style="margin-top: 90px;">
    <div id="content">
 
        <!--Manu bar items-->
        <div class="tab-content" id="nav-tabContent"> 
        <!--new menu item start-->
        <div class="tab-pane fade" id="list-dashBoard" role="tabpanel" aria-labelledby="list-dashBoard-list" style="height:100vh;"><iframe id="frame" src="dashBoardContent.php"></iframe></div>
        <div class="tab-pane fade" id="list-proposal" role="tabpanel" aria-labelledby="list-proposal-list" style="height:100vh;"><iframe id="frame" src="proposalsContents.php"></iframe></div>
        <div class="tab-pane fade" id="list-employee" role="tabpanel" aria-labelledby="list-employee-list" style="height:100vh;"><iframe id="frame" src="proposalsContents.php"></iframe></div>
        <div class="tab-pane fade" id="list-reports" role="tabpanel" aria-labelledby="list-reports-list" style="height:100vh;"><iframe id="frame" src="dashBoardContent.php"></iframe></div>
        <div class="tab-pane fade" id="list-communication" role="tabpanel" aria-labelledby="list-communication-list" style="height:100vh;"><iframe id="frame" src="proposalsContents.php"></iframe></div>
        <!--new menu item end-->           
        </div>
    </div>
</main>
<!--Main layout-->
    
    </body>
</html>