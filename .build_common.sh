rm -rf ${PREFIX_FOLDER}
mkdir -p ${PREFIX_FOLDER}

mkdir ${PREFIX_FOLDER}/lua5.1
mkdir ${PREFIX_FOLDER}/lua5.1/build_requirements
pushd ${PREFIX_FOLDER}/lua5.1/build_requirements
cmake -DBUILDCFG_ONLY_JONCHKI_CFG="ON" -DCMAKE_INSTALL_PREFIX="" ${COMPILER_OPTIONS} ${PRJ_DIR}
make
lua5.1 ${JONCHKI} --verbose debug --syscfg ${PRJ_DIR}/jonchki/jonchkisys.cfg --prjcfg ${PRJ_DIR}/jonchki/jonchkicfg.xml ${JONCHKI_SYSTEM} --build-dependencies lua-zlib/lua5.1-lua-zlib-*.xml
popd

pushd ${PREFIX_FOLDER}/lua5.1
cmake -DBUILDCFG_LUA_USE_SYSTEM="OFF" -DBUILDCFG_LUA_VERSION="5.1" -DCMAKE_INSTALL_PREFIX="" ${COMPILER_OPTIONS} ${PRJ_DIR}
make
make test
popd

mkdir ${PREFIX_FOLDER}/lua5.2
mkdir ${PREFIX_FOLDER}/lua5.2/build_requirements
pushd ${PREFIX_FOLDER}/lua5.2/build_requirements
cmake -DBUILDCFG_ONLY_JONCHKI_CFG="ON" -DCMAKE_INSTALL_PREFIX="" ${COMPILER_OPTIONS} ${PRJ_DIR}
make
lua5.1 ${JONCHKI} --verbose debug --syscfg ${PRJ_DIR}/jonchki/jonchkisys.cfg --prjcfg ${PRJ_DIR}/jonchki/jonchkicfg.xml ${JONCHKI_SYSTEM} --build-dependencies lua-zlib/lua5.2-lua-zlib-*.xml
popd

pushd ${PREFIX_FOLDER}/lua5.2
cmake -DBUILDCFG_LUA_USE_SYSTEM="OFF" -DBUILDCFG_LUA_VERSION="5.2" -DCMAKE_INSTALL_PREFIX="" ${COMPILER_OPTIONS} ${PRJ_DIR}
make
make test
popd

mkdir ${PREFIX_FOLDER}/lua5.3
mkdir ${PREFIX_FOLDER}/lua5.3/build_requirements
pushd ${PREFIX_FOLDER}/lua5.3/build_requirements
cmake -DBUILDCFG_ONLY_JONCHKI_CFG="ON" -DCMAKE_INSTALL_PREFIX="" ${COMPILER_OPTIONS} ${PRJ_DIR}
make
lua5.1 ${JONCHKI} --verbose debug --syscfg ${PRJ_DIR}/jonchki/jonchkisys.cfg --prjcfg ${PRJ_DIR}/jonchki/jonchkicfg.xml ${JONCHKI_SYSTEM} --build-dependencies lua-zlib/lua5.3-lua-zlib-*.xml
popd

pushd ${PREFIX_FOLDER}/lua5.3
cmake -DBUILDCFG_LUA_VERSION="5.3" -DCMAKE_INSTALL_PREFIX="" ${COMPILER_OPTIONS} ${PRJ_DIR}
make
make test
popd
