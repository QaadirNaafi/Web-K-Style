<!-- footer -->
  <div class="container-fluid" id="footer">
    <div class="row">
      <div class="col-xs-3 text-white">
        <img src="asset/img/logofix.png">
        <br><br><p style="padding-left: 1.3vw;margin-top: 8px; font-family: abhayalibre-regular; font-size: 17px">
        SAFANAFA K-STYLE adalah online shop yang menawaran berbagai macam produk korea asli dan juga menyediakan barang dari berbagai umur.</p>
       
      </div>
      
      <div class="col-xs-3 col-xs-offset-1 text-white">
        <h3 style="font-family:abhayalibre-bold">Hubungi Kami</h3>
        <hr>
        <a href="https://www.facebook.com/safanafa.kstyle" target="_blank"><img style="width: 40px; height: 40px; margin-right: 1vw;" src="asset/img/facebook.png"></a>
        <a href="https://www.instagram.com/safanafakstyle/" target="_blank"><img style="width: 40px; height: 40px; margin-right: 1vw;" src="asset/img/instagram.png"></a>
        <a href="https://twitter.com/safanafakstyle" target="_blank"><img style="width: 42px; height: 42px; margin-right: 1vw;" src="asset/img/twitter.png"></a>
        <a href="https://shopee.co.id/safanafabatik" target="_blank"><img style="width: 42px; height: 42px; margin-right: 1vw;" src="asset/img/shopee.png"></a>
        
        <h5 style="margin-top: 7vh; font-family: abhayalibre-regular; font-size: 15px">Kantor Pusat :</h5>
        
        <!-- Elemen yang akan menjadi kontainer peta -->
        <div id="map" style="width:20vw;height:30vh;background:yellow; border-radius:5px"></div>
        
        < <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

        <script type="text/javascript">
//              menentukan koordinat titik tengah peta
              var myLatlng = new google.maps.LatLng(-7.0523154,110.4332693);
//              pengaturan zoom dan titik tengah peta
              var myOptions = {
                  zoom: 13,
                  center: myLatlng
              };
//              menampilkan output pada element
              var map = new google.maps.Map(document.getElementById("map"), myOptions);
//              menambahkan marker
              var marker = new google.maps.Marker({
                   position: myLatlng,
                   map: map,
                   title:"Monas"
              });
        </script>
        
        <!-- <div id="map" style="width:20vw;height:30vh;background:yellow; border-radius:5px"></div> -->
        <!-- <script> -->
          <!-- function myMap() { -->
            <!-- var mapOptions = { -->
                <!-- center: new google.maps.LatLng(-7.276476, 112.795118), -->
                <!-- zoom: 16, -->
                <!-- mapTypeId: google.maps.MapTypeId.HYBRID -->
            <!-- } -->
            <!-- var map = new google.maps.Map(document.getElementById("map"), mapOptions); -->
          <!-- } -->
        <!-- </script> -->
        <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfbNrFraqA4e6NB-zwCqbzpwDrGIwbbEg&callback=myMap"></script> -->
      
      </div>
      
      <div class="col-xs-3 col-xs-offset-1 text-white">
      <h3 style="font-family:abhayalibre-bold">Komentar </h3>
      <hr>
      <br>
        <form action="./proses/komentar.php" method="post" role="form">
          <div class="form-group">
            <label for="nama">Nama : </label>
            <input type="text" class="form-control" name="nama" placeholder="Nama">
          </div>
          <div class="form-group">
            <label for="email">Email : </label>
            <input type="text" class="form-control" name="email" placeholder="Email">
          </div>
          <div class="form-group">
            <label for="pesan">Pesan : </label>
            <textarea class="form-control" name="pesan" placeholder="Masukkan pesan "></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Kirim</button>
        </form>
      </div>

    </div>
    <div class="row" id="cpy">
      <div class="col-xs-12">
        <p style="color : white; text-align: center;">@Semarang 2019 by Safanafa K-STYLE</p>
      </div>
    </div>
  </div>
<!-- end of footer -->