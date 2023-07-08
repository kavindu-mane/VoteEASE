<section style="background-color: #eee; padding-top: 50px">    
  <div class="container py-5">
      
    <!--nav bar-->
    <br>
 
    
    <!--user Information-->
        <div class="row">
            
        <!--propic and name-->
        <div class="col-lg-4">
          <div class="card mb-4">
            <div class="card-body text-center">
              <img src="Images/propic.JPG" alt="avatar" class="rounded-circle img-fluid" style="width: 150px;">
              <h5 class="my-3"><?php echo $name ?></h5>
              <p class="text-muted mb-1"><?php echo $pos ?></p>
              <div class="d-flex justify-content-center mb-2">
                  <button type="button" class="btn btn-primary">Edit Profile</button>
              </div>
            </div>
          </div>
        </div>
                
        
    <div class="col-lg-8">
        
        <!--main information-->
        <div class="card mb-8">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-4"><p class="mb-0">ID</p></div>
              <div class="col-sm-8"><p class="text-muted mb-0"><?php echo $id ?></p></div>
            </div><hr>
            <div class="row">
              <div class="col-sm-4"><p class="mb-0">Full Name</p></div>
              <div class="col-sm-8"><p class="text-muted mb-0"><?php echo $name ?></p></div>
            </div><hr>
            <div class="row">
              <div class="col-sm-4"><p class="mb-0">Possition</p></div>
              <div class="col-sm-8"><p class="text-muted mb-0"><?php echo $pos ?></p></div>
            </div><hr>
            <div class="row">
              <div class="col-sm-4"><p class="mb-0">Email</p></div>
              <div class="col-sm-8"><p class="text-muted mb-0"><?php echo $mail ?></p></div>
            </div><hr>
            <div class="row">
              <div class="col-sm-4"><p class="mb-0">Phone Number(Office)</p></div>
              <div class="col-sm-8"><p class="text-muted mb-0"><?php echo $pno ?></p></div>
            </div><hr>
            <div class="row">
              <div class="col-sm-4"><p class="mb-0">Phone Number(Personal)</p></div>
              <div class="col-sm-8"><p class="text-muted mb-0"><?php echo $pnp ?></p></div>
            </div>
          </div>
        </div>

        
        <div class="row">
          
            
            <!--social media-->
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fas fa-globe fa-lg" text-warning></i><p class="mb-0">https://mdbootstrap.com</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i><p class="mb-0">https://mdbootstrap.com</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i><p class="mb-0">https://mdbootstrap.com</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-linkedin-in fa-lg" style="color: #0072b1;"></i><p class="mb-0">https://mdbootstrap.com</p>
              </li>
              </ul>
            </div>
          </div>
            
            
            <!--description-->
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                </p>
                <hr>
              </div>
            </div>
          </div>
            
            
        </div>
        
        <!--praposals-->
        <br>
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
                <div class="col-sm-4"><p class="mb-0"><b>Proposal Details</b></p></div><hr>
            </div>
            <div class="row">
                <p class="mb-0">Proposal 1</p>
            </div><hr>
            <div class="row">
                <p class="mb-0">Proposal 2</p>
            </div><hr>
            <div class="row">
                <p class="mb-0">Proposal 3</p>
            </div><hr>
            <div class="row">
                <p class="mb-0">Proposal 4</p>
            </div><hr>
            <div class="row">
                <p class="mb-0">Proposal 5</p>
            </div><hr>
            <div class="d-flex justify-content-center mb-2">
                <button type="button" class="btn btn-primary">See all</button>
            </div>
          </div>
        </div>
    </div>   
        
    
  </div>
  </div>
</section>