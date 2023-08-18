# 440

## matrix inversion
Calculates inverse of 8x8 matrix by making use of the Gauss Jordan Elimination

## Compile and run Locally
    • cd/optimize
    • gcc optimize.c -o optimize.exe
    • ./optimize.exe

## To install on ARM
    • turn on UVic VPN and turn on
    • ssh username@seng440.ece.uvic.ca
    • cd / 
    • mkdir tmp/dev 
    • cd tmp/dev/ 
    • git clone https://github.com/Chaosfries/440.git
    • chmod 777 ./440/optimize -R 
    • cd ./440/optimize 

    • /opt/arm/4.3.2/bin/arm-linux-gcc -mfloat-abi=softfp -mfpu=neon -static -O3 -S /tmp/dev/440/optimized/optimized.c
    
    • arm-linux-gcc -static -o /tmp/dev/440/optimized/optimize.exe /tmp/dev/440/optimized/optimized.s
    
    • lftp -c "open -u user2,q6coHjd7P arm; put optimize.exe"


## Simulate in ARM using qemu
    • qemu-arm optimize.exe

## Use Real ARM Machine
    • ssh username@seng440.ece.uvic.ca
    • telnet arm
    • input Username: user2
    • input Password: q6coHjd7P
    • chmod 777 main.exe  
    • ./optimize.exe
    

