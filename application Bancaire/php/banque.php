<?php
                     $servername = 'localhost';
                     $username = 'root';
                     $password = 'root';
                     
                     //On établit la connexion
                     $conn = mysqli_connect($servername, $username, $password);
                     
                     //On vérifie la connexion
                     if(!$conn){
                         die('Erreur : ' .mysqli_connect_error());
                     }
                     echo 'Connexion réussie';
                    
                    $bdd =  new PDO ('mysql:host=127.0.0.1;dbname=banque', 'root', 'root');
?>
<?php
/**
 * Export to PHP Array plugin for PHPMyAdmin
 * @version 5.0.2
 */

/**
 * Database `banque`
 */

/* `banque`.`agent` */
$agent = array(
);

/* `banque`.`client` */
$client = array(
);

/* `banque`.`compte` */
$compte = array(
);

/* `banque`.`demande` */
$demande = array(
);

/* `banque`.`entreprise` */
$entreprise = array(
);

/* `banque`.`operation` */
$operation = array(
);

/* `banque`.`particulier` */
$particulier = array(
);

/* `banque`.`type_compte` */
$type_compte = array(
);
