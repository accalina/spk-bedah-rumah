<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
          <i class="fas fa-home"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Admin</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">

       <!-- Heading -->
       <div class="sidebar-heading">
        Administrator
      </div>

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="<?= base_url('index.php/server/dashboard'); ?>">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        User
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUser" aria-expanded="true" aria-controls="collapseUser">
        <i class="fas fa-folder-open"></i>
          <span>Input Data</span>
        </a>
        <div id="collapseUser" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Pilihan Input Data :</h6>
            <a class="collapse-item" href="<?= base_url('index.php/server/formUser'); ?>">Form</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Role
      </div>

      <?php if($this->session->role_id >= 2): ?>
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRT" aria-expanded="true" aria-controls="collapseRT">
          <i class="fas fa-fw fa-table"></i>
          <span>RT</span>
        </a>
        <div id="collapseRT" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Pilihan Input RT :</h6>
              <a class="collapse-item" href="<?= base_url('index.php/server/formRT'); ?>">Form</a>
              <a class="collapse-item" href="<?= base_url('index.php/server/tabel_RT'); ?>">Tabel Data</a>
          </div>
        </div>
      </li>
      <?php endif ?>

      <?php if($this->session->role_id >= 3): ?>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('index.php/server/kelurahan'); ?>">
          <i class="fas fa-fw fa-table"></i>
          <span>Kelurahan</span></a>
      </li>
      <?php endif ?>

      <?php if($this->session->role_id >= 4): ?>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('index.php/server/kecamatan'); ?>">
          <i class="fas fa-fw fa-table"></i>
          <span>Kecamatan</span></a>
      </li>
      <?php endif ?>

      <?php if($this->session->role_id >= 5): ?>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('index.php/server/kota'); ?>">
          <i class="fas fa-fw fa-table"></i>
          <span>Kota</span></a>
      </li>
      <?php endif ?>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <!-- <div class="sidebar-heading">
      </div> -->

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>