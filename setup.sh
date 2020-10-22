apt-get install -y build-essential cmake git pkg-config
apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler
apt-get install -y libatlas-base-dev
apt-get install -y --no-install-recommends libboost-all-dev
apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev


cd lib&&make
cd ..
mv Makefile.config caffe
cd caffe&&make clean&&make -j16

wget https://www.dropbox.com/s/nu6jwhc88ujbw1v/resnet101_faster_rcnn_final_iter_320000.caffemodel?dl=1 -O resnet101_faster_rcnn_final_iter_320000.caffemodel