gcc_config_version=4.4.3
LCGPLAT=x86_64-slc5-gcc44-opt
LCG_lib_name=lib64

LCG_contdir=/afs/cern.ch/sw/lcg/contrib
LCG_gcc_home=${LCG_contdir}/gcc/${gcc_config_version}/${LCGPLAT}

export PATH=${LCG_gcc_home}/bin:${PATH}

if [ ${LD_LIBRARY_PATH} ] 
then
export LD_LIBRARY_PATH=${LCG_gcc_home}/${LCG_lib_name}:${LD_LIBRARY_PATH}
else
export LD_LIBRARY_PATH=${LCG_gcc_home}/${LCG_lib_name}
fi

