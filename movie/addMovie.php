<?php
    include('includes/dbc.php');

    $sql = 'SELECT * FROM movies WHERE category = "action" ORDER BY name';
    $result = mysqli_query($conn, $sql);
    $akcioFilomek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sql = 'SELECT * FROM movies WHERE category = "adventure" ORDER BY name';
    $result = mysqli_query($conn, $sql);
    $kalandFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sql = 'SELECT * FROM movies WHERE category = "horror" ORDER BY name';
    $result = mysqli_query($conn, $sql);
    $horrorFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sql = 'SELECT * FROM movies WHERE category = "animated" ORDER BY name';
    $result = mysqli_query($conn, $sql);
    $animacioFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $sql = 'SELECT * FROM movies WHERE category = "drama" ORDER BY name';
    $result = mysqli_query($conn, $sql);
    $dramaFilmek = mysqli_fetch_all($result, MYSQLI_ASSOC);



    // mysqli_free_result($result);
    //
    // mysqli_close($conn);

    session_start();

    if(isset($_GET['movieId'])) {
      $sql = "DELETE FROM movies WHERE movieid=$_GET[movieId]";
      mysqli_query($conn, $sql);
      echo '<meta http-equiv="refresh" content="0; URL=addMovie.php" />';
    }

    if(isset($_POST['name'])) {
      $sql = "INSERT INTO movies (`name`, `description`, `img`, `category`) VALUES ('$_POST[name]', '$_POST[description]', '$_POST[img]', '$_POST[category]')";
      mysqli_query($conn, $sql);
      echo '<meta http-equiv="refresh" content="0; URL=addMovie.php" />';
    }
?>

<!doctype html>
<html lang="en" class="h-100">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Jekyll v4.1.1">
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
          <input class="form-control mr-sm-2" type="text" placeholder="Movie, series..." aria-label="Search">
          <button class="btn btn-light my-2 my-sm-0" type="submit">Search</button>
        </form> -->

        <?php
        include 'logout.php';
        ?>
      </div>
    </nav>
  </section>


      <div class="main-container margin-top">
          <div class="title-addmovie">
            <h1 class="h3 mb-3 font-weight-bold">Add a movie to the database</h1>
          </div>
          <form class="form-addmovie" method='POST' action='addMovie.php'>
            <input type='text' class="form-control" id='name' placeholder='Title' required name='name'/>
            <input type='text' class="form-control" id='description' placeholder='Description' maxlength="800" required name='description'/>
            <input type='url' class="form-control" id='img' placeholder='Poster URL' required name='img'/>
            <select class="form-control" id='category' required name='category'>
            <option value="action">Action</option>
            <option value="adventure">Adventure</option>
            <option value="drama">Drama</option>
            <option value="horror">Horror</option>
            <option value="animated">Animated</option>
            </select>
            <button class="add-movie btn btn-lg btn-dark btn-block ml-auto mr-auto" type="submit" name="submit">Add Movie</button>
          </form>
          <div class="table-responsive">
              <table class="admin-table table table-bordered table-hover ordertable">
                  <thead>
                      <tr>
                          <th>Title</th>
                          <th class="txt-center">Category</th>
                          <th class="txt-center">Delete</th>
                      </tr>
                  </thead>
                  <tbody>
                    <?php foreach($akcioFilomek as $akcio){ ?>
                        <tr>
                         <td> <?php echo $akcio['name'] ?> </td>
                         <td class="txt-center"> <?php echo $akcio['category'] ?> </td>
                         <td class="txt-center"> <?php echo "<button class='delete-movie btn btn-dark my-2 my-sm-0' type='submit'><a  href='?movieId=$akcio[movieid]'><i class='trashcan fas fa-trash-alt'></i></a></button>"?> </td>
                        </tr>

                    <?php } ?>

                    <?php foreach($kalandFilmek as $kaland){ ?>
                        <tr>
                         <td> <?php echo $kaland['name'] ?> </td>
                         <td class="txt-center"> <?php echo $kaland['category'] ?> </td>
                         <td class="txt-center"> <?php echo "<button class='delete-movie btn btn-dark my-2 my-sm-0' type='submit'><a  href='?movieId=$kaland[movieid]'><i class='trashcan fas fa-trash-alt'></i></a></button>"?> </td>
                        </tr>

                    <?php } ?>

                    <?php foreach($horrorFilmek as $horror){ ?>
                        <tr>
                         <td> <?php echo $horror['name'] ?> </td>
                         <td class="txt-center"> <?php echo $horror['category'] ?> </td>
                         <td class="txt-center"> <?php echo "<button class='delete-movie btn btn-dark my-2 my-sm-0' type='submit'><a  href='?movieId=$horror[movieid]'><i class='trashcan fas fa-trash-alt'></i></a></button>"?> </td>
                        </tr>

                    <?php } ?>

                    <?php foreach($animacioFilmek as $animacio){ ?>
                        <tr>
                         <td> <?php echo $animacio['name'] ?> </td>
                         <td class="txt-center"> <?php echo $animacio['category'] ?> </td>
                         <td class="txt-center"> <?php echo "<button class='delete-movie btn btn-dark my-2 my-sm-0' type='submit'><a  href='?movieId=$animacio[movieid]'><i class='trashcan fas fa-trash-alt'></i></a></button>"?> </td>
                        </tr>

                    <?php } ?>

                    <?php foreach($dramaFilmek as $drama){ ?>
                        <tr>
                         <td> <?php echo $drama['name'] ?> </td>
                         <td class="txt-center"> <?php echo $drama['category'] ?> </td>
                         <td class="txt-center"> <?php echo "<button class='delete-movie btn btn-dark my-2 my-sm-0' type='submit'><a  href='?movieId=$drama[movieid]'><i class='trashcan fas fa-trash-alt'></i></a></button>"?> </td>
                        </tr>

                    <?php } ?>
                  </tbody>
              </table>
          </div>


      </div>

</body>

</html>
