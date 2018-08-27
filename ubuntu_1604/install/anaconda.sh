echo "Installation of Anaconda"

cd ~
wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
bash Anaconda3-5.1.0-Linux-x86_64.sh
source ~/.bashrc
conda list
conda update -n base conda

rm Anaconda3-5.1.0-Linux-x86_64.sh

echo "Installation of Anaconda complete"
