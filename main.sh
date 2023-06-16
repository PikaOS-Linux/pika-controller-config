# Clone Upstream
mkdir -p ./pika-controller-config
cp -rvf ./debian ./pika-controller-config/
cp -rvf ./usr ./pika-controller-config/
cd ./pika-controller-config

# Get build deps
apt-get build-dep ./ -y

# Build package
dh_make --createorig
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
