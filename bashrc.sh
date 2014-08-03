# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# -- ATLAS Specific shit
source ~dhg3/setup/hep_bash.sh 
shopt -s expand_aliases
export ATLAS_LOCAL_ROOT_BASE=/home/hep/share/app/atlas/ATLASLocalRootBase
alias setupAtlas='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
setupAtlas --quiet


# -- specific python distro 

# export PATH=/home/hep/share/app/bin:$PATH
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/hep/share/app/lib

# ATLAS installation -- not quite sure how good it is...
export ATLAS_PY_DIR=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/python/2.7.3-x86_64-slc6-gcc47/sw/lcg/external/Python/2.7.3/x86_64-slc6-gcc47-opt

# -- make it in front
export PATH=$ATLAS_PY_DIR/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ATLAS_PY_DIR/lib

# -- my python is better and doest DIE
export MY_BETTER_PYTHON_DIR=~/Software/bin
export PATH=$MY_BETTER_PYTHON_DIR/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$MY_BETTER_PYTHON_DIR/lib


# -- set up the big bitch thats ROOT
ROOTBASE=/home/hep/baker/dhg3/public/root_5_34_09_roofit
export ROOTSYS=${ROOTBASE}
export PATH+=:${ROOTBASE}/bin
export LD_LIBRARY_PATH=${ROOTBASE}/lib/root:$LD_LIBRARY_PATH

# -- git 
GIT_DIR=~dhg3/public/git-1.8.5.4
export PATH=${PATH}:${GIT_DIR}/bin
export MANPATH=${MANPATH}:${GIT_DIR}/share
. ${GIT_DIR}/etc/git-completion.bash


# -- Load some better stuff
module load Langs/GCC/4.7.2
module load Libraries/Eigen/3.2.0

if [[ -z "$(find $HOME | grep "gitconfig")" ]]; then
	git config --global --add color.ui true
fi

# -- make sure we can 'import ROOT' in python.

PYROOT_DIR=$(root-config --libdir)


# --- atlas / blas 
LOOK_MA_ATLAS=/lustre/home/client/apps/fas/Libs/ATLAS/atlas-3.8.4-gcc/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${LOOK_MA_ATLAS}

# -- complete that shit
complete -u finger

# -- make python find stuff.
export PYTHONPATH+=$PYROOT_DIR
export PYTHONPATH+=:$HOME/PyJunk/root_numpy/root_numpy
export PYTHONPATH+=:/home/hep/golling/lpd7/TopTaggingPerf

export PATH+=:$HOME/AGILEPack

export CPLUS_INCLUDE_PATH+=:$HOME/Software/hdf5-1.8.12/hdf5/include
export PATH+=:$HOME/Software/hdf5-1.8.12/hdf5/bin
export LD_LIBRARY_PATH+=:$HOME/Software/hdf5-1.8.12/hdf5/lib


# source $HOME/prefs/deoliveira-omega-prefs.sh

