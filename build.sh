#!/bin/bash
mv -vf android ..
mv -vf arch_repo ..
apt-ftparchive packages . > Packages 
apt-ftparchive release . > Release 
gpg --clearsign -o InRelease Release
gpg -abs -o Release.gpg Release
vim ./Packages		
apt-ftparchive release . > Release
gpg --clearsign -o InRelease Release
gpg -abs -o Release.gpg Release
mv -vf ../android .
mv -vf ../arch_repo .
