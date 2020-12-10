<?php
    include('includes/dbc.php');

    $sql = 'SELECT * FROM movies WHERE category = "horror" ORDER BY name';
    $result = mysqli_query($conn, $sql);
    $horrorFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    // mysqli_free_result($result);
    //
    // mysqli_close($conn);

    session_start();

?>


<!doctype html>
<html lang="en" class="h-100">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">

  <title>Filmadatbázis</title>



  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- Font Awesome -->
  <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>


  <!-- Bootstrap scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">

</head>


<body>
  <section class="nav-section">

    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top">
      <a class="navbar-brand" href="index.php"> <img src="img/icon.png" alt=""> </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
        </ul>

        <!-- <form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Film, sorozat..." aria-label="Search">
          <button class="btn btn-light my-2 my-sm-0" type="submit">Search</button>
        </form> -->

        <?php
        include 'logout.php';
        ?>

      </div>
    </nav>

  </section>


  <div class="main-container">

    <div class="content">
      <h4 class="all-movies-title">Horror movies</h4>

      	<div class="container">
      		<div class="row">

      			<?php foreach($horrorFilmek as $horror){ ?>

      				<div class="col-lg-3 poster-container">
                <a href='movie.php?id= <?php echo $horror['movieid'] ?>'>
      							<img class="card-img-category" src="<?php echo ($horror['img']); ?>" alt="">
                </a>
      				</div>

      			<?php } ?>

      		</div>
      <?php
            if(isset($_SESSION["useruid"])) {
              if($_SESSION["useruid"] == "admin")
              echo "<button class='add-movie-btn btn btn-dark my-2 my-sm-0' type='submit'><a class='add-movie-link' href='addMovie.php'>Add movie</a></button>";
            }
          ?>

      	</div>

    </div>


  </div>
</body>
    <?php
    include_once 'footer.php';
     ?>

</html>
