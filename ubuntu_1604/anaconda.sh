echo "Installation of anaconda : Anaconda3-5.1.0-Linux-x86_64"

cd ~
wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
source ~/.bashrc
conda list
conda update -n base conda

rm Anaconda3-5.1.0-Linux-x86_64.sh
