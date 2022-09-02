# patch-dst-cl-2022
make easy the update of tzdata on Linux

## How does this work?

### Linux Using SSH (Tested on Debian, Centos 6.7)
1. Log in using SSH to your server.
2. Download script `wget https://raw.githubusercontent.com/jnacaratto/patch-dst-cl-2022/main/linux/patch-dst-cl-2022.sh`
3. Execute `sh ./patch-dst-cl-2022.sh`

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
