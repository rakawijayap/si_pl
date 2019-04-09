 <table class="table tablesorter " id="">
                    <thead class=" text-primary">
                      <tr>
                      <td>Kriteria</td>
                      <td>Kelerengan</td>
                      <td>Penggunaan Lahan</td>
                      <td>Rawan Longsor</td>
                      <td>Curah Hujan</td>
                      <td>Cadangan Air Tanah</td>
                      <td>Jenis Tanah</td>
                      

                      </tr>
                    </thead>
                  <tbody>
                      <?php 
                  foreach ($list_tpv as $row) {
                  ?>
                  <tr>
                    <td width="25%"><?php echo $row['nama']; ?></td>
                    <td><?php echo round($row['k'], 4); ?></td>
                    <td><?php echo round($row['pl'], 4); ?></td>
                    <td><?php echo round($row['rbl'], 4); ?></td>
                    <td><?php echo round($row['ch'],4); ?></td>
                    <td><?php echo round($row['cat'],4); ?></td>
                    <td><?php echo round($row['jt'],4); ?></td>
                   
                    <?php } ?>
                  </tr>
                </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
