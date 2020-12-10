<?php
    session_start();
 ?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Log In</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- Font Awesome -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>


    <!-- Bootstrap scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/login.css">





  </head>

  <body class="text-center">
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

        <section class="form-signup">
          <h1 class="h3 mb-3 font-weight-bold">Sign Up</h1>
          <form action="includes/signup.inc.php" method="post">
            <input class="form-control" type="text" name="name" placeholder="Full name">
            <input class="form-control" type="email" name="email" placeholder="Email">
            <input class="form-control" type="text" name="uid" placeholder="Username">
            <input class="form-control" type="password" name="pwd" placeholder="Password">
            <input class="form-control" type="password" name="pwdrepeat" placeholder="Repeat password"> <br>
            <button class="btn btn-lg btn-dark btn-block" type="submit" name="submit">Sign Up</button>
          </form>

          <?php
            if(isset($_GET["error"])) {
              if($_GET["error"] == "emptyinput") {
                echo "<p class='errorMessage'> Fill in all fields! </p>";
              } else if($_GET["error"] == "invaliduid") {
                echo "<p class='errorMessage'> Choose a proper username! </p>";
              } else if($_GET["error"] == "invalidemail") {
                echo "<p class='errorMessage'> Choose a proper email! </p>";
              } else if($_GET["error"] == "passwordsdontmatch") {
                echo "<p class='errorMessage'> Passwords don't match! </p>";
              } else if($_GET["error"] == "stmtfailed") {
                echo "<p class='errorMessage'> Something went wrong, try again! </p>";
              } else if($_GET["error"] == "usernametaken") {
                echo "<p class='errorMessage'> Username already taken! </p>";
              } else if($_GET["error"] == "none") {
                echo "<p class='errorMessage'> You have successfully signed up! </p>";
              }
            }
          ?>

        </section>




          </div>
        </div>
    </div>
  </div>


</body>
</html>
