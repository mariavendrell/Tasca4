<#  Genera un script que permeti enviar un correu per gmail quan finalitzi la còpia d'uns fitxers. Pots reutilitzar el codi que 
    vas utilitzar per fer les còpies de segureta per tal que al finalitzar enviï un correu de confirmació.                     
    https://techexpert.tips/es/powershell-es/powershell-enviar-correo-electronico-con-gmail/     #>

$Backup=$args[0]
$RutaBackup=$args[1]
    
if ($Backup -eq $null -And $RutaBackup -eq $null){
    Write-Output "Els parametres que m'has donat no son valids"
}
else 
{
    #Comprovar que els arguments siguin valits
    $existeix1= Test-Path $Backup
    $existeix2= Test-Path $RutaBackup
    
    if ($existeix1 -And $existeix2 -eq $True)
    {
        $mycredentials = Get-Credential
        Copy-Item -Path $Backup -Destination $RutaBackup -Recurse -Force
        Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From mariavendrell2003@gmail.com -To mvendrellgarcia.cf@iesesteveterradas.cat -Subject 'Backup feta' -Body 'Backup feta' -Credential $mycredentials
        Write-Output "Copia de seguretat realitzada"
    }
    else
    {
        Write-Output "Els parametres que m'has donat no son valids"
    }
}