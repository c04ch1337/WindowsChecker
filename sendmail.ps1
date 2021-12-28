$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Username = "<your_email>@gmail.com"
$Password = "<your_email_password>"

$to = "<your_email>@gmail.com"
$from = "<your_email>@gmail.com"
$subject = "Windows Checker Log"
$body = "Windows Machine Checker"
$attachment = ".\log_winchk1.log"
$attachment2 = ".\log_winchk2.log"
$attachment3 = ".\log_winchk3.log"

$message = New-Object System.Net.Mail.MailMessage
$message.from = ($from)
    foreach ($d in $to){
    $message.to.add($d)
    }
$message.subject = $subject
$message.body = $body

$attach = New-Object System.Net.Mail.Attachment($attachment)
$attach2 = New-Object System.Net.Mail.Attachment($attachment2)
$attach3 = New-Object System.Net.Mail.Attachment($attachment3)


$message.attachments.add($attach)
$message.attachments.add($attach2)
$message.attachments.add($attach3)

$smtp = New-Object Net.Mail.SmtpClient($SMTPServer, $SMTPPort)
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message)
    $attach.Dispose()
    $attach2.Dispose()
    $attach3.Dispose()


Remove-Item -Recurse -Path .\sendmail.ps1
exit
