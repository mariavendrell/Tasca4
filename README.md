# Tasca4
## CorreuBackup.ps1
- Genera un script que permeti enviar un correu per gmail quan finalitzi la còpia d'uns fitxers. Pots reutilitzar el codi que vas utilitzar per fer les còpies de segureta per tal que al finalitzar enviï un correu de confirmació.

1r - Habilitar la doble verificació de la nostra [compte de gmail](https://myaccount.google.com/signinoptions/two-step-verification).

2n - Creear [contrasenya d'aplicació](https://security.google.com/settings/security/apppasswords).
      La creare per un dispositiu Windows(nomes podre fer-la servir a un dispositiu Windows).
      
![Captura de pantalla_20221120_175712](https://user-images.githubusercontent.com/113999297/202916396-d2c0fa39-3004-4f39-8205-844c96028b65.png)

Hem generara la contrasenya.
      
![Captura de pantalla_20221120_175717](https://user-images.githubusercontent.com/113999297/202916434-9b02c231-26a6-49ab-a8b5-c7e5243404dc.png)

3r - Habilitar l'[access extern a la teva compte de Google](https://accounts.google.com/DisplayUnlockCaptcha).

![Captura de pantalla_20221120_175808](https://user-images.githubusercontent.com/113999297/202916499-9bfeabf0-28ad-4b54-845d-b3105720b5a2.png)

![Captura de pantalla_20221120_175817](https://user-images.githubusercontent.com/113999297/202916523-5bfcb39c-1503-4c02-a892-8994f432a5c4.png)

Execució del script:
Aquest script sense modifica funciona per a que la meva compte personal de Google enví un email a la meva compte del institut per avisar que la copia de seguritat ha finalitzat.

Ens demanara las credencials de la meva compte de Google
L'usuari es el compte de correu i la contrasenya la que abans m'ha generat.

![Captura de pantalla_20221120_180112](https://user-images.githubusercontent.com/113999297/202916734-fe2c84dd-5899-4198-a67f-bab3a11f25d9.png)

Quan finlitzi l'script ens enviara el correu

![Captura de pantalla_20221120_183004](https://user-images.githubusercontent.com/113999297/202916809-127a4d6f-5409-4db0-b4a3-d04da6452d47.png)





## Correu365.ps1
- Intenta realitzar la tasca amb el correu de Office365. El correu pot ser el de iesesteveterradas.cat, ja que us aporta accés a Office 365.

Execució del script:
Aquest script sense modifica funciona per a que la meva compte personal de Hotmail enví un email a la meva compte del institut per avisar que la copia de seguritat ha finalitzat.

Ens demanara las credencials de la meva compte de Hotmail
L'usuari es el compte de correu i la contrasenya la del correu.

![Captura de pantalla_20221120_183505](https://user-images.githubusercontent.com/113999297/202917077-3ae01938-df24-4fc9-a8f3-fd95674d4f9a.png)

Quan finlitzi l'script ens enviara el correu

![Captura de pantalla_20221120_183559](https://user-images.githubusercontent.com/113999297/202917108-aa263cff-107a-448d-8a2a-6f9af2a4cfdc.png)






