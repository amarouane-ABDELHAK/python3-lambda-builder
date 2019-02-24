#! /bin/bash
cp -r $HOME/data $HOME/process/.
cd data
pip install --user -r requirements.txt
cd /home/bamboo/.local/lib/python3.7/site-packages
zip -r9 pyfunction.zip .
mv pyfunction.zip /home/bamboo/process/data/.
cd /home/bamboo/process/data/
zip -g pyfunction.zip handler.py
zip -ur pyfunction.zip src
mv pyfunction.zip /home/bamboo/dist/.