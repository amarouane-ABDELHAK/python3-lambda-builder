#! /bin/bash
cp -r $HOME/data $HOME/process/.
cd data
mkdir package
cd package
pip install -r ../requirements.txt --target .
cp -r ../src .
zip -r9 ../pyfunction.zip .
cd ../
zip -g pyfunction.zip handler.py
mv pyfunction.zip /home/bamboo/dist/.