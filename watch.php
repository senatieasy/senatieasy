<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Senati Easy | Evaluación final del curso - EV1</title>
  <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="../assets/vendors/jvectormap/jquery-jvectormap.css">
  <link rel="stylesheet" href="../assets/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="../assets/vendors/owl-carousel-2/owl.carousel.min.css">
  <link rel="stylesheet" href="../assets/vendors/owl-carousel-2/owl.theme.default.min.css">
  <link rel="stylesheet" href="../assets/css/style.css">
  <link rel="shortcut icon" href="../assets/images/favicon.png" />
  <review value="<?php echo $_GET['review']?>"></review>
</head>

<body>
  <div class="container-scroller">
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <div class="main-panel pt-0">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body py-0 px-0 px-sm-3">
                  <div class="row align-items-center">
                    <div class="col-4 col-sm-3 col-xl-2">
                      <img src="../assets/images/avatar.jpg" width="75px"
                        style="border-radius: 50%; margin-top: 10px; margin-bottom: 10px;"
                        class="gradient-corona-img img-fluid" alt="">
                    </div>
                    <div class="col-5 col-sm-7 col-xl-8 p-0">
                      <h3 class="mb-1 mb-sm-0">Senati Easy</h3>
                      <p class="mb-0 font-weight-normal d-none d-sm-block">Make it Easy! Todo lo que necesitas de Senati
                        y Cisco</p>
                    </div>
                    <div class="col-3 col-sm-2 col-xl-2 pl-0 text-center">
                      <span>
                        <a href="http://senatieasy.epizy.com/access/" target="_blank"
                          class="btn btn-outline-light btn-rounded get-started-btn">Iniciar sesión</a>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 id="review-name" class="card-title mb-1">Desconocido</h4>
                  <p class="text-muted">
                    <span id="review-date">Publicado hace 0 segundos</span>
                    <span id="review-views">[0 visitas]</span>
                  </p>
                  <hr class="border-bottom">
                  <div class="flex-grow mb-2">
                    <h6 class="preview-subject">Carrera:</h6>
                    <p id="career" class="text-muted mb-0">Desconocido</p>
                  </div>
                  <div class="flex-grow mb-2">
                    <h6 class="preview-subject">Semestre:</h6>
                    <p id="semester" class="text-muted mb-0">Desconocido</p>
                  </div>
                  <div class="flex-grow mb-2">
                    <h6 class="preview-subject">Curso:</h6>
                    <p id="course" class="text-muted mb-0">Desconocido</p>
                  </div>
                  <hr class="border-bottom">
                  <div class="flex-grow mb-2">
                    <h6 class="preview-subject">Interacción:</h6>
                    <div class="flex-grow mt-2">
                      <button type="button" class="btn btn-sm btn-outline-success btn-icon-text mb-1">
                        <i class="mdi mdi-heart btn-icon-prepend"></i>
                        Me sirvió
                      </button>
                      <button type="button" class="btn btn-sm btn-outline-danger btn-icon-text mb-1">
                        <i class="mdi mdi-heart-broken btn-icon-prepend"></i>
                        No me sirvió
                      </button>
                      <button type="button" class="btn btn-sm btn-outline-primary btn-icon-text mb-1">
                        <i class="mdi mdi-link btn-icon-prepend"></i>
                        Copiar enlace
                      </button>
                      <button type="button" class="btn btn-sm btn-outline-info btn-icon-text mb-1">
                        <i class="mdi mdi-currency-usd btn-icon-prepend"></i>
                        Dar un café
                      </button>
                    </div>
                  </div>
                  <hr class="border-bottom">
                  <div class="bg-gray-dark d-md-block py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                    <div class="text-md-center text-xl-left">
                      <h6 class="mb-2">Calificación</h6>
                      <p id="punctuation-likes" class="text-muted">0/0 (0 calificaciones)</p>
                      <div class="progress progress-md portfolio-progress">
                        <div id="punctuation-likes-percent" class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="25"
                          aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                  <div class="bg-gray-dark d-md-block py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                    <div class="text-md-center text-xl-left">
                      <h6 class="mb-2">Compartidos</h6>
                      <p id="punctuation-shares" class="text-muted">0/0 (0 visitas)</p>
                      <div class="progress progress-md portfolio-progress">
                        <div id="punctuation-shares-percent" class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="25"
                          aria-valuemin="0" aria-valuemax="100"></div>
                      </div>
                    </div>
                  </div>
                  <div class="bg-gray-dark d-md-block py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                    <h6 class="mb-3">Comentarios</h6>
                    <div class="add-items d-flex">
                      <input type="text" class="form-control todo-list-input" placeholder="Agregue un comentario...">
                      <button class="add btn btn-primary todo-list-add-btn p-2">
                        <i class="mdi mdi-send"></i>
                      </button>
                    </div>
                    <div class="preview-list border-top" style="overflow-y: auto; max-height: 360px;">
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="../assets/images/faces/face6.jpg" alt="image" class="rounded-circle">
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject">Leonard</h6>
                              <p class="text-muted text-small">5 minutes ago</p>
                            </div>
                            <p class="text-muted">Well, it seems to be working now.</p>
                          </div>
                        </div>
                      </div>
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="../assets/images/faces/face8.jpg" alt="image" class="rounded-circle">
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject">Luella Mills</h6>
                              <p class="text-muted text-small">10 Minutes Ago</p>
                            </div>
                            <p class="text-muted">Well, it seems to be working now.</p>
                          </div>
                        </div>
                      </div>
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="../assets/images/faces/face9.jpg" alt="image" class="rounded-circle">
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject">Ethel Kelly</h6>
                              <p class="text-muted text-small">2 Hours Ago</p>
                            </div>
                            <p class="text-muted">Please review the tickets</p>
                          </div>
                        </div>
                      </div>
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="../assets/images/faces/face11.jpg" alt="image" class="rounded-circle">
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject">Herman May</h6>
                              <p class="text-muted text-small">4 Hours Ago</p>
                            </div>
                            <p class="text-muted">Thanks a lot. It was easy to fix it .</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-8 grid-margin stretch-card">
              <div class="card">
                <div class="card-header border-bottom">
                  <h4 class="card-title mt-3">Buscar pregunta</h4>
                  <textarea class="form-control mb-2" id="question-search" rows="3"
                    placeholder="Ingrese su pregunta o un pedazo de esta..."></textarea>
                </div>
                <div class="card-body">
                  <div class="d-flex flex-row justify-content-between mb-1">
                    <h4 class="card-title">Preguntas</h4>
                    <p id="question-total" class="text-muted">0 resultados</p>
                  </div>

                  <div class="row">
                    <div class="col-12">
                      <div id="questions" class="preview-list">
                        <div class="dot-opacity-loader">
                          <span></span>
                          <span></span>
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row mb-0">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body py-0 px-0 px-sm-3">
                  <div class="align-items-center">
                    <div class="text-center template-demo">
                      <button href="#" class="btn btn-social-icon btn-outline-facebook">
                        <i class="mdi mdi-facebook"></i>
                      </button>
                      <button href="#" class="btn btn-social-icon btn-outline-youtube">
                        <i class="mdi mdi-youtube"></i>
                      </button>
                      <button href="#" class="btn btn-social-icon btn-outline-twitter">
                        <i class="mdi mdi-twitter"></i>
                      </button>
                      <button href="#" class="btn btn-social-icon btn-outline-dribbble">
                        <i class="mdi mdi-dribbble"></i>
                      </button>
                      <button href="#" class="btn btn-social-icon btn-outline-linkedin">
                        <i class="mdi mdi-linkedin"></i>
                      </button>
                      <button href="#" class="btn btn-social-icon btn-outline-google">
                        <i class="mdi mdi-google-plus"></i>
                      </button>
                    </div>
                    <div class="mt-3 text-center">
                      <p>© Copyright | Todos los derechos reservados</p>
                      <p class="text-muted">Diseño: Senati Easy</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="../assets/vendors/chart.js/Chart.min.js"></script>
  <script src="../assets/vendors/progressbar.js/progressbar.min.js"></script>
  <script src="../assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
  <script src="../assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <script src="../assets/vendors/owl-carousel-2/owl.carousel.min.js"></script>
  <script src="../assets/js/off-canvas.js"></script>
  <script src="../assets/js/hoverable-collapse.js"></script>
  <script src="../assets/js/misc.js"></script>
  <script src="../assets/js/settings.js"></script>
  <script src="../assets/js/todolist.js"></script>
  <script src="../assets/js/dashboard.js"></script>
  <script src="../moment.js"></script>
  <script src="../gcompare.js"></script>
  <script src="../main.js"></script>
</body>

</html>