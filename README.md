# Making it easy to change the time postponed by the modification to the 
[SUPREME DECREE No. 1,286 OF THE MINISTRY OF THE INTERIOR AND PUBLIC SAFETY OF THE YEAR 2018, PROVIDING FOR CHANGES IN TIME CHILE MAINLAND OFFICIAL](https://www.diariooficial.interior.gob.cl/publicaciones/2022/08/13/43327/01/2172567.pdf)

Using [[tz-announce] 2022b release of tz code and data available](https://mm.icann.org/pipermail/tz-announce/2022-August/000071.html) for Linux and [JAbarca's patch](https://techcommunity.microsoft.com/t5/daylight-saving-time-time-zone/interim-guidance-on-2022-time-zone-updates-for-chile/bc-p/3612076/highlight/true#M786)


## How does this work?

### Linux Using SSH (Tested on Debian, Centos 6.7)
1. Log in using SSH to your server.
2. Download script `wget https://raw.githubusercontent.com/jnacaratto/patch-dst-cl-2022/main/linux/patch_DST_cl_2022.sh`
3. Execute `sh ./patch_DST_cl_2022.sh`

### Windows (Tested on Windows Server )
1. Log in using SSH to your server.
2. Download or clone the project, enter the windows folder
3. Run as administrator `patch-setup-dst-cl-2022-2023.bat`

## Check that everything works

### Linux
1. Run the following command `zdump -v /usr/share/zoneinfo/America/Santiago | grep 2022`
![image](https://user-images.githubusercontent.com/24944384/188193417-5de60ccc-3e47-4e6d-8b6b-812ee1ed64f2.png)

2. Apply the patch and check again
![image](https://user-images.githubusercontent.com/24944384/188224562-669cc541-5c7e-481a-a669-960ca8af920f.png)

### Windows ( [Thanks to Ale_Jin](https://techcommunity.microsoft.com/t5/daylight-saving-time-time-zone/interim-guidance-on-2022-time-zone-updates-for-chile/bc-p/3610755/highlight/true#M779) and [JustinKlapp](https://techcommunity.microsoft.com/t5/user/viewprofilepage/user-id/1495529))

1. To check that the change will be effective, it must be verified with the command: w32tm /tz
![image](https://user-images.githubusercontent.com/24944384/188229084-8c259dca-bd66-4ffe-bb9c-4bc9469ca28a.png)
For example, before patching the registry, this would be the output, which is September (M:9) on the first day (D:1) that matches day of week 6 (DoW:6) which is Sunday, since for the USA the week starts on Saturday, which starts with the index 0

2. After applying the patch, it is observed that D:1 becomes D:2, that is, the "second Sunday" of September, although care must be taken to restart the w32time service so that the changes are refreshed, the script restart the service, otherwise restart windows
![image](https://user-images.githubusercontent.com/24944384/188229688-22be6b86-4ddb-40e2-86fc-210d5f23fc48.png)

## Español
# Haciendo fácil el cambio de hora aplazado por la modificación al 
[DECRETO SUPREMO Nº 1.286 DEL MINISTERIO DEL INTERIOR Y SEGURIDAD PÚBLICA DEL AÑO 2018, DISPONIENDO CAMBIOS EN LA HORA OFICIAL DE CHILE CONTINENTAL](https://www.diariooficial.interior.gob.cl/publicaciones/2022/08/13/43327/01/2172567.pdf)
Usando [[tz-announce] 2022b release of tz code and data available](https://mm.icann.org/pipermail/tz-announce/2022-August/000071.html)  para Linux y el [parche de JAbarca](https://techcommunity.microsoft.com/t5/daylight-saving-time-time-zone/interim-guidance-on-2022-time-zone-updates-for-chile/bc-p/3612076/highlight/true#M786) 

## ¿Como funciona esto?

### Linux usando SSH (Probado en Debian, Centos 6 y 7)
1. Inicie sesión usando SSH en su servidor.
2. Descargue el script `wget https://raw.githubusercontent.com/jnacaratto/patch-dst-cl-2022/main/linux/patch_DST_cl_2022.sh`
3. Ejecute `sh ./patch_DST_cl_2022.sh`

### Windows (Probado en Windows Server)
1. Descargue o clone el proyecto, ingrese a la carpeta windows
2. Ejecutar como administrador `patch-setup-dst-cl-2022-2023.bat`

## Aplique el parche y verifique nuevamente

### Linux
1. Run the following command `zdump -v /usr/share/zoneinfo/America/Santiago | grep 2022`
![image](https://user-images.githubusercontent.com/24944384/188193417-5de60ccc-3e47-4e6d-8b6b-812ee1ed64f2.png)

2. Apply the patch and check again
![image](https://user-images.githubusercontent.com/24944384/188224562-669cc541-5c7e-481a-a669-960ca8af920f.png)

### Windows ( [Thanks to Ale_Jin](https://techcommunity.microsoft.com/t5/daylight-saving-time-time-zone/interim-guidance-on-2022-time-zone-updates-for-chile/bc-p/3610755/highlight/true#M779) and [JustinKlapp](https://techcommunity.microsoft.com/t5/user/viewprofilepage/user-id/1495529))

1. Para comprobar que el cambio será efectivo, se debe verificar con el comando: w32tm /tz image 
![image](https://user-images.githubusercontent.com/24944384/188229084-8c259dca-bd66-4ffe-bb9c-4bc9469ca28a.png)
Por ejemplo, antes de parchear el registro, esta sería la salida, que es septiembre (M:9) el primer día (D: 1) que coincide con el día de la semana 6 (DoW:6) que es el domingo, ya que para los EE. UU. la semana comienza el sábado, que comienza con el índice 0


2. Tras aplicar el parche se observa que D:1 pasa a ser D:2, es decir el "segundo domingo" de septiembre, aunque hay que tener cuidado de reiniciar el servicio w32time para que se refresquen los cambios, el script reinicia el servicio , de lo contrario, reinicie Windows
![image](https://user-images.githubusercontent.com/24944384/188229688-22be6b86-4ddb-40e2-86fc-210d5f23fc48.png)



