echo "Installation of anaconda : Anaconda3-5.1.0-Linux-x86_64"

cd ~
wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
source ~/.bashrc
conda list
conda update -n base conda

conda create --name lpr34 python=3.4 --yes
conda create --name ironcarenv python=3.6 --yes
conda create --name thalesenv python=3.6 --yes

rm Anaconda3-5.1.0-Linux-x86_64.sh
