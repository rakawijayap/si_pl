<div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:void(0)"><div class="photo">
                    <img src="assets/img/pml.png" alt="Profile Photo">
                  </div>  PENENTUAN LAHAN KRITIS</a>
          </div>
          
          <div class="collapse navbar-collapse" id="navigation"><button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
            <ul class="navbar-nav ml-auto">
             
              
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                    <img src="assets/img/anime3.png" alt="Profile Photo">
                  </div>
                  <b class="caret d-none d-lg-block d-xl-block"></b>
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a> <?php   
   foreach ($list_profile as $rows) {
?>
                <ul class="dropdown-menu dropdown-navbar">
                  
                    <h4 style="color: black; margin-left: 10%"><?php echo $rows['sebagai'];?></h4>
                 
                  <li class="nav-link">
                    <a href="#" data-toggle="modal" data-target="#edit" class="nav-item dropdown-item">Ganti Password</a>
                  </li>
                  <li class="dropdown-divider"></li>
                  <li class="nav-link">
                    <a href="<?php echo base_url('login/logout'); ?>" style="color: red" class="nav-item dropdown-item">Log out</a>
                  </li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>
     
<div id="edit" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Ganti Password</h4>
      </div>
      <div class="modal-body">
        <form action="User/ganti_pass" method="post">
        <table class="table borderless">
         
              <input style="color: black" type="hidden" name="username" class="form-control input-sm" value="<?php echo $rows['username']; ?>" >
            
          <tr>
            <th width="30%">Password Lama</th>
            <td width="3%">:</td>
            <td>
              <input style="color: black" type="Password" name="pl" class="form-control input-sm" value="" required="">
            </td>
          </tr>
          <tr>
            <th width="30%">Password Baru</th>
            <td width="3%">:</td>
            <td>
              <input style="color: black" type="Password" name="pb" class="form-control input-sm" value="" required="">
            </td>
          </tr>
          <tr>
            <th width="30%">Konfirmasi Password Baru</th>
            <td width="3%">:</td>
            <td>
              <input style="color: black" type="Password" name="kpb" class="form-control input-sm" value="" required="">
            </td>
          </tr>
          
          
      </table>
      </div>
      <div class="modal-footer">
       
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> 
        <button type="submit" name="submit" class="btn btn-success" style="margin-left: 20px;">Submit</button>
      </div>
      </form>
    </div>

  </div>
</div><?php } ?>