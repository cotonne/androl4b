#!/bin/sh

ping -c 4 8.8.8.8

apt-get update

apt-get install -y build-essential cryptsetup openjdk-11-jre-headless openjdk-11-jdk-headless python3 libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386 radare2 docker.io net-tools git 

pip install frida-tools

wget -O sdk-tools-linux-4333796.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip -q sdk-tools-linux-4333796.zip -d android

git -quiet clone https://github.com/xtiankisutsa/MARA_Framework.git

wget -O ghidra.zip https://ghidra-sre.org/ghidra_9.1_PUBLIC_20191023.zip
unzip -q ghidra.zip

docker pull opensecurity/mobile-security-framework-mobsf
echo "docker run -it -p 8000:8000 opensecurity/mobile-security-framework-mobsf:latest" > mobsf
chmod +x mobsf

