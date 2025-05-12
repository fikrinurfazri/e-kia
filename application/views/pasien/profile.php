 <br><br>
 <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full" data-sidebar-position="fixed" data-header-position="fixed">
     <div class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
         <div class="d-flex align-items-center justify-content-center w-100">
             <div class="col-10">
                 <div class="card-header">
                     <?php if ($this->session->flashdata('error')) : ?>
                         <div class="alert alert-danger">
                             <?php echo $this->session->flashdata('error'); ?>
                         </div>
                     <?php endif; ?>
                     <?php if ($this->session->flashdata('success')) : ?>
                         <div class="alert alert-success">
                             <?php echo $this->session->flashdata('success'); ?>
                         </div>
                     <?php endif ?>
                 </div>
                 <div class="card mb-0">
                     <div class="card-body">
                         <form class="" action="<?= base_url('pasien/update') ?>" method="post">
                             <div class="row">

                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="id_user" class="form-label">Nama</label>
                                         <input type="text" class="form-control" name="nama" id="nama" value="<?= $identitas->nama ?>">
                                         <input type="hidden" class="form-control" name="id_user" id="id_user" value="<?= $identitas->id_user ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="nik" class="form-label">NIK</label>
                                         <input type="text" class="form-control" name="nik" id="nik" value="<?= $identitas->nik ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="goldar" class="form-label">Golongan Darah</label>
                                         <input type="text" class="form-control" name="goldar" id="goldar" value="<?= $identitas->goldar ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="tempat_lahir" class="form-label">Tempat lahir</label>
                                         <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" value="<?= $identitas->tempat_lahir ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="tgl_lahir" class="form-label">Tanggal lahir</label>
                                         <input type="date" class="form-control" name="tanggal_lahir" id="tgl_lahir" value="<?= $identitas->tanggal_lahir ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="pendidikan" class="form-label">Pendidikan</label>
                                         <input type="text" class="form-control" name="pendidikan" id="pendidikan" value="<?= $identitas->pendidikan ?>">
                                     </div>
                                 </div>

                                 <div class="col-12">
                                     <div class="mb-3">
                                         <label for="alamat_rumah" class="form-label">Alamat rumah</label>
                                         <textarea name="alamat_rumah" id="" class="form-control"><?= $identitas->alamat_rumah ?></textarea>
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="telepon" class="form-label">NO Telepon</label>
                                         <input type="text" class="form-control" name="telepon" id="telepon" value="<?= $identitas->telepon ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="suami_keluarga" class="form-label">Suami/keluarga</label>
                                         <input type="text" class="form-control" name="suami_keluarga" id="suami_keluarga" value="<?= $identitas->suami_keluarga ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="pembiayaan" class="form-label">Pembiayaan</label>
                                         <input type="text" class="form-control" name="pembiayaan" id="pembiayaan" value="<?= $identitas->pembiayaan ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="no_jkn" class="form-label">NO JKN</label>
                                         <input type="text" class="form-control" name="no_jkn" id="no_jkn" value="<?= $identitas->no_jkn ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="faskes_tingkat1" class="form-label">Faskes tingkat 1</label>
                                         <input type="text" class="form-control" name="faskes_tingkat1" id="faskes_tingkat1" value="<?= $identitas->faskes_tingkat1 ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="faskes_rujukan" class="form-label">Faskes rujukan</label>
                                         <input type="text" class="form-control" name="faskes_rujukan" id="faskes_rujukan" value="<?= $identitas->faskes_rujukan ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="puskesmas_domisili" class="form-label">Puskesmas domisili</label>
                                         <input type="text" class="form-control" name="puskesmas_domisili" id="puskesmas_domisili" value="<?= $identitas->puskesmas_domisili ?>">
                                     </div>
                                 </div>
                                 <div class="col-4">
                                     <div class="mb-3">
                                         <label for="no_kohor" class="form-label">NO KOHOR</label>
                                         <input type="text" class="form-control" name="no_kohor" id="no_kohor" value="<?= $identitas->no_kohor ?>">
                                     </div>
                                 </div>

                                 <button type="submit" class="btn btn-primary">Update</button>
                             </div>
                         </form>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>