
      
      <!-- End Navbar -->
      <div class="content" style="margin-top: 7%">
        
        
        <div class="row">
          
          <div class="col-5">
            <div class="card ">
              <div class="card-header">
                <h2 class="card-title"> Hasil Peringkat</h2>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                      <td>Nama</td>
                      <td>Nilai</td>
                      <td>Peringkat</td>
                      </tr>
                    </thead>
                  <tbody>
                      <?php 
                  $no=1; 
                  foreach ($list_kec as $row) {
                  ?>
                  <tr>
                    <td><?php echo $row['nama']; ?></td>
                    <td><?php echo round($row['hasil'],4); ?></td>
                    <td><?php echo $no ?></td>
                    <?php $no++; } ?>
                  </tr>
                </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          <div class="col-7">
            <div class="card card-plain">
              <div class="card-header">
                <h3>Peta Kab. Pemalang</h3>
              </div>
              <div class="card-body">
                <div id="map" class="map"><iframe width="100%" height="290" frameborder="0" src="https://rakawijayap.carto.com/builder/ac02d0e7-8b96-44ac-9835-4e354a977bb1/embed" allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe></div>
              </div>
            </div>
          </div>
        </div>
      </div>
     