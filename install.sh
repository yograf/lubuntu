sudo sh -c 'echo "deb [arch=amd64] http://apt-mo.trafficmanager.net/repos/dotnet/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893

sudo apt-get update
sudo apt-get install git cmake cutecom -y



git clone http://github.com/jcurl/serialportstream.git
cd serialportstream/dll/serialunix
./build.sh

//Put the Below lines at the end of the /root/.bashrc  file
echo 'export LD_LIBRARY_PATH=/serialportstream/dll/serialunix/bin/usr/local/lib:$LD_LIBRARY_PATH' >> ~/.bashrc

cd ~
git clone https://github.com/syneron/DotNetCoreLinux.git
cd DotNetCoreLinux
dotnet build


