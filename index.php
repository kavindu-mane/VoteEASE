<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        
        <!--add external files-->
        <link rel="Stylesheet" href="css/navbar.css">
        <script src="navbar.js"></script>
        
        
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
        
        
        <!--js part-->
        
        
        <!--css part-->
        <style>
            #frame { 
                width: 100%;
                height: 100%;
            }
            .navbar-toggler-icon{
                color: #000;
            }
        </style>
        
        <title>Expence Manager</title>
        
    </head>
    
    
    <body>
       
    <!-- Sidebar -->
        <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
          <div class="position-sticky">
            <div class="list-group list-group-flush mx-3 mt-4">
              <a class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list" id="list-proposals-list" href="#list-proposals" role="tab" aria-controls="list-proposals" aria-selected="true" ><i class="fas fa-tachometer-alt fa-fw me-3"></i><span>Main dashboard</span></a>
              <a class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list" id="list-dashBoard-list" href="#list-dashBoard" role="tab" aria-controls="list-dashBoard" aria-selected="false" tabindex="-1"><i class="fas fa-chart-area fa-fw me-3"></i><span>Webiste traffic</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-lock fa-fw me-3"></i><span>Password</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-chart-line fa-fw me-3"></i><span>Analytics</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-chart-pie fa-fw me-3"></i><span>SEO</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-chart-bar fa-fw me-3"></i><span>Orders</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-globe fa-fw me-3"></i><span>International</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-building fa-fw me-3"></i><span>Partners</span></a>
              <a href="b.html" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-calendar fa-fw me-3"></i><span>Calendar</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-users fa-fw me-3"></i><span>Users</span></a>
              <a href="#" class="list-group-item list-group-item-action py-2 ripple" data-bs-toggle="list"><i class="fas fa-money-bill fa-fw me-3"></i><span>Sales</span></a>
              
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
                <li style="padding-top: 13px">Name &nbsp;</li>
                <li class="nav-item dropdown" aria-labelledby="navbarDropdownMenuLink">
                    <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="true">
                      <img src="a.jpg" class="rounded-circle" height="40" alt="ProPic" loading="lazy" />
                    </a>
                    <ul  class="dropdown-menu dropdown-menu-end">
                        <li><a class="dropdown-item" href="#"><i class="far fa-user"></i><span>&nbsp;&nbsp;&nbsp;My profile</span></a></li>
                      <li><a class="dropdown-item" href="#">Settings</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#"><i class="fas fa-right-from-bracket"></i><span>&nbsp;&nbsp;&nbsp;Logout</span></a></li>
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
            
            <!--item 1-->
            <div class="tab-pane fade" id="list-dashBoard" role="tabpanel" aria-labelledby="list-dashBoard-list" style="height: 1;">
                <iframe id="frame" src="b.php" height=* width=*></iframe>
            </div>
            
            <!--item 2-->
            <div class="tab-pane fade" id="list-proposals" role="tabpanel" aria-labelledby="list-proposals-list" style="height:1 ;">
                <iframe id="frame" src="ss.php" frameborder="0"></iframe>
                
            </div>
            
            
            <div class="tab-pane fade" id="list-users" role="tabpanel" aria-labelledby="list-users-list" style="height:1 ;">
                                <iframe src="b.php" ></iframe>
            </div>
            <div class="tab-pane fade" id="list-reports" role="tabpanel" aria-labelledby="list-reports-list" style="height:1 ;">reports</div>
            <div class="tab-pane fade" id="list-task" role="tabpanel" aria-labelledby="list-task-list" style="height:1 ;">task</div>
            <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list" style="height:1 ;">profile</div>
        </div>
    </div>
</main>
<!--Main layout-->
    
    </body>
</html>
