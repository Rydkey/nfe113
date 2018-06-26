<h1>NFE113</h1>

vous trouverez ici le travail réalisé par RISSER Rémy, étudiant au CNAM de belfort dans le cadre de l'UE <b>NFE113</b>.

<h2>Installation</h2>
    placez vous dans la racine du projet : 
    
       $ composer install
       $ composer dump-autoload
       $ mkdir app/cache
       $ sudo chmod 777 app/cache (1)      
   <hr>
    <p>Il vous faut ensuite importer la base (<i>via le script nfe113.sql</i>) 
    ainsi que les jeux de données (<i>les scripts commencant par NFE113</i>)</p>
    <h3>Dans le fichier app/config/prod.php</h3>
    <p>Trouvez la variable $db_config et mettez y vos informations :</P>
        
        $db_config = array(
          'driver'   => 'pdo_pgsql', 
          'charset'  => 'utf8', 
          'host'     => 'localhost',  
          'port'     => '5432',  
          'dbname'   => 'NFE113',  
          'user'     => 'votre identifiant', 
          'password' => 'votre mot de passe', 
        );
<hr>
    <p> <i>1 : l'application nécéssite un cache accéssible en écriture</i> </p>
    <p> <i>2 : Vous trouverez un .zip contenant tout le projet dans ce répertoire.</i> </p>
    
    