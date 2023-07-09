<div class="container">
    <!-- Portfolio Section Heading -->
    <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Ambil Antrian</h2>
    <!-- Icon Divider -->
    <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
            <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
    </div>

    <!-- Portfolio Grid Items -->
    <div class="row">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-md-12" style="margin-top: 20px">
                    <!-- <h1 align="center">Login </h1> -->
                    <form action="<?php echo base_url('Index/saveAntrian') ?>" method="post">                    
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <h6><label>Tanggal Periksa</label></h6>
                            </div>
                            <div class="col-md-5">
                                <input type="text" class="form-control" id="tanggal" name="tanggal" value="<?php echo date('d-m-Y') ?>" readonly>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <h6><label>Pilih Poli</label></h6>
                            </div>
                            <div class="col-md-5">
                                <select name="id_poli" id="id_poli" class="form-control" onchange="getJadwalDokter()">
                                    <option value=""> Pilih Poli </option>
                                    <?php foreach ($getPoli as $row) {
                                        ?>
                                        <option value="<?php echo $row->id_poli; ?>"> <?php echo $row->kode_poli; ?> </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <h6><label>Dokter Poli</label></h6>
                            </div>
                            <div class="col-md-5">
                                <select name="dokter" id="dokter" class="form-control">
                                    <option value="tutup">Dokter Poli</option>
                                </select>
                            </div>
                        </div> 
                        <div class="row mb-3">
                            <div class="col-md-2">
                                <h6><label>Jadwal Dokter</label></h6>
                            </div>
                            <div class="col-md-5">
                                <h6 id="jadwal-dokter">00.00</h6>
                            </div>
                        </div>  
                        <div class="row mb-3">
                            <div class="col-md-2">                                
                            </div>
                            <div class="col-md-5">
                            <?php echo validation_errors(); ?>
                            </div>
                        </div>                       
                        <div class="row text-right">
                            <div class="col-md-7">
                                <input type="submit" name="simpan" id="simpan" value="Ambil Antrian" class="btn btn-primary">
                            </div>
                        </div>
                    </form>
                    <div class="row text-justify">
                        <h6>Keterangan :</h6>
                        <ol>
                            <li>Poli Umum (PLUM)</li>
                            <li>Poli Gigi (PLGG) </li>
                            <li>Poli Imunisasi (PLIM)</li>
                            <li>Poli Tuberculosis (PLTB)</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>