cmake_minimum_required(VERSION 2.8)

SET(CPACK_INCLUDE_TOPLEVEL_DIRECTORY FALSE)
SET(CPACK_PACKAGE_FILE_NAME lua-zlib-${VERSION_FULL})

SET(CPACK_GENERATOR "ZIP")
INCLUDE(CPack)

# Build the ivy file.
CONFIGURE_FILE(ivy.xml ivy-${VERSION_FULL}.xml)

#-----------------------------------------------------------------------------
#
# Install the 32bit files.
#
INSTALL(FILES ${MUHKUH_WIN32_INSTALL}/lua_plugins/zlib.dll
        DESTINATION windows_x86/lua_plugins
)


#-----------------------------------------------------------------------------
#
# Install the 64bit files.
#
INSTALL(FILES ${MUHKUH_WIN64_INSTALL}/lua_plugins/zlib.dll
        DESTINATION windows_amd64/lua_plugins
)


#-----------------------------------------------------------------------------

INSTALL(FILES install.xml
        DESTINATION .)


#-----------------------------------------------------------------------------
#
# Filter the pom.xml file.
#
SET(POM_ARTIFACT_ID  "lua-zlib")
SET(POM_GROUP_ID     "com.github.brimworks")
SET(POM_VERSION      "${VERSION_FULL}")
SET(POM_PACKAGING    "zip")
CONFIGURE_FILE(${CMAKE_CURRENT_SOURCE_DIR}/../pom.xml pom.xml)
