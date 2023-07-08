apt install https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
apt update
apt install gcc gcc-c++ make cmake postgresql13-devel proj-devel json-c-devel geos39-devel gsl-devel
git clone https://github.com/MobilityDB/MobilityDB

cd MobilityDB

git fetch
git checkout develop

cd build

cmake .. -DMEOS=on -DGEOS_INCLUDE_DIR=/usr/geos39/include/ -DGEOS_LIBRARY=/usr/geos39/lib64/libgeos_c.so
make -j
make install

python -m pip install . -vv