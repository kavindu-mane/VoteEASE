<?php

    namespace Classes;

    session_start();

    use PDOException;
    use PDO;

    require 'DbConnector.php';

    use Classes\DbConnector;

    $name = $FeedErr = $Feed = "";
    if ($_SESSION["u_id"]) {

        $con_obj = new DbConnector();
        $con = $con_obj->getConnection();
        $sql = "SELECT Username FROM employee WHERE EmpID = '{$_SESSION['u_id']}' LIMIT 1";
        $result = $con->query($sql);


        while ($row = $result->fetch()) {
            $name = $row["UserName"];
        }
    }
 
    

    if (isset($_POST["add"])) {
        
        if (empty($_POST["FEED"])) {
            $FeedErr = " <p style='color:red; font-family:Open Sans; font-weight: bold;'>* Feedback is required </p>";
            
        } else {
            $Feed = trim($_POST["FEED"]);
            $Feed = " <p style='color:green; font-family:Open Sans; font-weight: bold; ' >Thanks for feedback </p>";
        }   
    }
    
    
    
        $dbcon = new DbConnector();
        $con = $dbcon->getConnection();
        
        $sql= "INSERT INTO feedback(`FeedID`, `EmpID`, `Msj`, `date`) VALUES ('002','E22',$Feed,'1000-00-00')" ;

      
?>