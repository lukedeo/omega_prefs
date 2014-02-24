# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#. /home/hep/share/.hep_bash_profile

# -- ATLAS Specific shit
source ~dhg3/setup/hep_bash.sh 
shopt -s expand_aliases
export ATLAS_LOCAL_ROOT_BASE=/home/hep/share/app/atlas/ATLASLocalRootBase
alias setupAtlas='source ${ATLAS_LOCAL_ROOT_BASE}/user/atlasLocalSetup.sh'
setupAtlas --quiet


# -- specific python distro 

export PATH=/home/hep/share/app/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/hep/share/app/lib


# -- set up the big bitch thats ROOT
ROOTBASE=/home/hep/baker/dhg3/public/root_5_34_09_roofit
export ROOTSYS=${ROOTBASE}
export PATH+=:${ROOTBASE}/bin
export LD_LIBRARY_PATH=${ROOTBASE}/lib/root:$LD_LIBRARY_PATH

# --- git 
GIT_DIR=~dhg3/public/git-1.8.5.4
export PATH=${PATH}:${GIT_DIR}/bin
export MANPATH=${MANPATH}:${GIT_DIR}/share
. ${GIT_DIR}/etc/git-completion.bash


# -- Load some better stuff
module load Compilers/Compilers/GCC/4.8.1
module load Libraries/Eigen/3.2.0

if [[ -z "$(find $HOME | grep "gitconfig")" ]]; then
	git config --global --add color.ui true
fi


PYROOT_DIR=$(root-config --libdir)


# --- atlas / blas 
LOOK_MA_ATLAS=/lustre/home/client/apps/fas/Libs/ATLAS/atlas-3.8.4-gcc/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${LOOK_MA_ATLAS}

complete -u finger

export PYTHONPATH+=$PYROOT_DIR
export PYTHONPATH+=:$HOME/PyJunk/root_numpy/root_numpy

export PATH+=:$HOME/AGILEPack

alias ipython='python -m IPython'


# source $HOME/prefs/deoliveira-omega-prefs.sh

