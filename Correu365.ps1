<#  Intenta realitzar la tasca amb el correu de Office365. El correu pot ser el de iesesteveterradas.cat, 
    ja que us aporta accés a Office 365. 
    https://techexpert.tips/es/powershell-es/powershell-enviar-correo-electronico-con-office-365/   #>
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
        Send-MailMessage -SmtpServer smtp.office365.com -Port 587 -UseSsl -From mvendrellg@hotmail.com -To mvendrellgarcia.cf@iesesteveterradas.cat -Subject 'Backup feta' -Body 'Backup feta' -Credential $mycredentials
        Write-Output "Copia de seguretat realitzada"
    }
    else
    {
        Write-Output "Els parametres que m'has donat no son valids"
    }
}