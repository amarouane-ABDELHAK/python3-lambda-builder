#! /bin/bash
cp -r $HOME/data $HOME/process/.
cd data
mkdir package
cd package
pip install -r ../requirements.txt --target .
cp -r ../* .
chmod -R 755 .
zip -r9 ../pyfunction.zip .
cd ../
mv pyfunction.zip /home/bamboo/dist/.