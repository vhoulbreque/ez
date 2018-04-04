# Following instructions at https://developer.nvidia.com/cuda-90-download-archive?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1604&target_type=deblocal
# This version works for Tensorflow 1.6

echo "Installation of cuda 9.0 and cudnn"

cd ~

# Base Installer (1.2 GB)
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb

sudo dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64.deb
sudo apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda -y
rm cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64.deb

# Patch 1 (97.8 GB)
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/1/cuda-repo-ubuntu1604-9-0-local-cublas-performance-update_1.0-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-9-0-local-cublas-performance-update_1.0-1_amd64.deb
rm cuda-repo-ubuntu1604-9-0-local-cublas-performance-update_1.0-1_amd64.deb

# Patch 2 (97.7 GB)
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/2/cuda-repo-ubuntu1604-9-0-local-cublas-performance-update-2_1.0-1_amd64-deb
sudo dpkg -i cuda-repo-ubuntu1604-9-0-local-cublas-performance-update-2_1.0-1_amd64.deb
rm cuda-repo-ubuntu1604-9-0-local-cublas-performance-update-2_1.0-1_amd64.deb

# Install cudnn (375.5 MB)
wget https://s3.amazonaws.com/open-source-william-falcon/cudnn-9.0-linux-x64-v7.1.tgz
sudo tar -xzvf cudnn-9.0-linux-x64-v7.1.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
rm cudnn-9.0-linux-x64-v7.1.tgz

# Adding these paths to $PATH
cd ~
echo "
# added for cudnn
export LD_LIBRARY_PATH=\"\$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64\"
export CUDA_HOME=/usr/local/cuda" >> .bashrc

source ~/.bashrc
