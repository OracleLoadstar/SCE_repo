#!/bin/bash
apt-ftparchive packages . > Packages 
apt-ftparchive release . > Release 
gpg --clearsign -o InRelease Release
gpg -abs -o Release.gpg Release
