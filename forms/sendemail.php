<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require ('/home/safidyarijaona/www/vendor/autoload.php');
require ('/home/safidyarijaona/www/vendor/phpmailer/phpmailer/src/Exception.php');
require ('/home/safidyarijaona/www/vendor/phpmailer/phpmailer/src/PHPMailer.php');
require ('/home/safidyarijaona/www/vendor/phpmailer/phpmailer/src/SMTP.php');

$nom = $_POST['name'];
$emaila = $_POST['email'];
$objet = $_POST['subject'];
$message = $_POST['message'];
try{
    //$developmentMode = false;
//$mail = new PHPMailer(true);
$mail = new PHPMailer();



    // Server settings
    $mail->SMTPDebug = 2;                     
    $mail->isSMTP();                                            
    $mail->Host  = 'smtp-safidyarijaona.alwaysdata.net';      
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'safidyarijaona@alwaysdata.net';                     // SMTP username
    $mail->Password   = 'safidyitrealmail'; 
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

    $mail->setFrom($emaila, $nom);
    $mail->addAddress('safidiarijaonatokiniaina@gmail.com');     // Add a recipient
   


    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
   
    $mail->Subject = $objet;
   // $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
    //$mail->Body    = $message;
    $mail->Body    = '<p>'.$message .'</p>';
    //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    $mail->send();
    header("Location: /index.php?vita=1");
    exit();

}catch(Exception $e)
{
//    echo 'Caught exception: ',  $e->getMessage(), "\n";

}
?>
   