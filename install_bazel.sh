# install bazel on ubuntu 18.04
sudo apt-get -y update
sudo apt-get -y dist-upgrade

sudo apt-get install -y curl gnupg python python3 git clang build-essential
curl -fsSL https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8"
sudo apt-get update
sudo apt-get install -y bazel

# set clang as default C/C++ compiler
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang 50
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang 50
