
      
      <!-- End Navbar -->
      <div class="content">
        
        
        <div class="row">
          
          <div class="col-12">
            <div class="card ">
              <div class="card-header">
                <h2 class="card-title"> Kelerengan</h2>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                      
                      <td>Tpv</td>
                      <td>weight</td>
                      <td></td>
                      </tr>
                    </thead>
                  <tbody>
                     
                  <tr>
                     <?php 
                 
                  foreach ($list_nor as $row ) {
                  ?>
                    <td><?php echo $row['k']; ?></td>
                 
                    <td></td>
                    
                     
                  </tr><?php }?>
                                  </tbody>
                  </table>
                      <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                      
                      <td>Tpv</td>
                      <td>weight</td>
                      <td></td>
                      </tr>
                    </thead>
                  <tbody>
                     
                  <tr>
                     <?php 
                 
                  foreach ($list_nor as $row ) {
                  ?>
                    <td><?php echo $row['k']; ?></td>
                 
                    <td></td><?php }?>
                    
                     
                  </tr>
                                  </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      