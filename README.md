<h1>Méthodologie des sytèmes d'informations</h1>
<h2>TP</h2>
vous trouverez ici le travail réalisé par RISSER Rémy, étudiant au CNAM de belfort dans le cadre de la matière Méthodologie des systèmes d'informations.

<h2>Installation</h2>
    placez vous dans la racine du projet : 
    
       $ composer install
       $ composer dump-autoload
       $ mkdir app/cache
       $ sudo chmod 777 app/cache (*)      
   .
    Ensuite, créé une nouvelle bdd à l'aide l'export "_video.sql_" avec un utilisateur ayant tout les droits sur cette dernière :
    <ul>
        <li>user : dev_video</li>
        <li>mot de passe : passwdvideo</li>
    </ul>