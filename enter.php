<!--SANITIZES THE CODE AND entries users put in-->

<?php include 'database.php'; ?>
<!--first off this connects with our database (right above)-->

<?php

//my PREPARED STATEMENTs.

if (isset($_POST['book']) && isset($_POST['author'])) {

//sanitizes (cleans) user's entries going to database
    $book = sanitizeMySQL($conn, $_POST['book']);
    $author = sanitizeMySQL($conn, $_POST['author']);
    $setting = sanitizeMySQL($conn, $_POST['setting']);
    $tvfilm = sanitizeMySQL($conn, $_POST['tvfilm']);
    $filmsetting = sanitizeMySQL($conn, $_POST['filmsetting']);

//more prepared STATEMENTs
//this sql query writes the user's entry into my database on server
  $query = "INSERT INTO bookstwo (book, author, setting, tvfilm, filmsetting)
  VALUES (?, ?, ?, ?, ?)";

//we binding the sanitized new variables to query above

  if ( $stmt = mysqli_prepare($conn, $query) ) {
        mysqli_stmt_bind_param($stmt, 'sssss',
        $book,
        $author,
        $setting,
        $tvfilm,
        $filmsetting,
        );

  mysqli_stmt_execute($stmt);
  mysqli_stmt_close($stmt);
  mysqli_close($conn);
} //end of that if statement (THIS WAS MISSING ALONG THAT'S WHY I WAS STRUGGLING)
  } else {
    echo "Failed to enter!";
  } // end of isset if-statement

  function sanitizeMySQL($conn, $var) {
      $var = strip_tags($var);
      $var = mysqli_real_escape_string($conn, $var);
      return $var;
  }
 ?>
