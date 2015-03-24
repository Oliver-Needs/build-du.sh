#Sync the Repos:
repo sync -j64

#Clean up the Source:
make clean; make clobber

#Initialize ccache:
ccache -M 50G

#Initialize Build:
. build/envsetup.sh

#Choose device to build (FLO):
lunch 2

#ccache exports:
export CCACHE_DIR=~/.ccache
export USE_CCACHE=1

#Start the build:
time make -j24 bacon
