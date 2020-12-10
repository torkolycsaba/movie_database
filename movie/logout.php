<?php
  if(isset($_SESSION["useruid"])) {
    if($_SESSION["useruid"] === "admin") {
      echo "<button class='add-movie-btn btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='addMovie.php'>Movies</a></button>";
    }
    echo "<button class='log-out-btn btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='includes/logout.inc.php'>Log Out</a></button>";
  } else {
    echo "<button class='sign-up-btn btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='signup.php'>Sign Up</a></button>";
    echo "<button class='log-in-btn btn btn-dark my-2 my-sm-0' type='text'><a class='login-btn' href='login.php'>Log In</a></button>";
  }
?>
