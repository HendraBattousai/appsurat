<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col-md-12 comp-grid">
                    <h4 >Arsip Surat</h4>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_suratkeluar();  ?>
                    <a class="animated zoomIn record-count card bg-warning text-white"  href="<?php print_link("surat_keluar/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-arrow-circle-right fa-2x"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Surat Keluar</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_suratmasuk();  ?>
                    <a class="animated zoomIn record-count card bg-danger text-white"  href="<?php print_link("surat_masuk/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-arrow-circle-left fa-2x"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Surat Masuk</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
                <div class="col-md-3 col-sm-4 comp-grid">
                    <?php $rec_count = $comp_model->getcount_pengguna();  ?>
                    <a class="animated zoomIn record-count alert alert-primary"  href="<?php print_link("pengguna/") ?>">
                        <div class="row">
                            <div class="col-2">
                                <i class="fa fa-user fa-2x"></i>
                            </div>
                            <div class="col-10">
                                <div class="flex-column justify-content align-center">
                                    <div class="title">Pengguna</div>
                                    <small class=""></small>
                                </div>
                            </div>
                            <h4 class="value"><strong><?php echo $rec_count; ?></strong></h4>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
