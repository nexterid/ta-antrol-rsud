 <!-- Modal -->
 <div class="modal fade bd-example-modal-lg" id="modal-riwayat" tabindex="-1" role="dialog" aria-labelledby="registrasiModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modal-riwayat-label">Riwayat Kunjungan</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div>
            <table class="table">
                <input type="hidden" id="user-id" value="<?php echo $this->session->userdata('id_pasien')?>">
                <tr>
                    <td>No Registrasi</td>
                    <td>Tanggal Kunjungan</td>
                    <td>Poli</td>
                    <td>Dokter</td>
                    <td>Jam Praktek</td>
                </tr>
                <tbody id="tampil-riwayat">

                </tbody>
            </table>
        </div>

      </div>
    </div>
  </div>