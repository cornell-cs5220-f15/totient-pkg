#!/bin/sh
#
# Generate OpenGL Math modules
#
cat <<EOF
#%Module1.0
proc ModulesHelp { } {
  global dotversion
  puts stderr "OpenGL Math $VER ($TOOLCHAIN build)"
}
 
module-whatis "OpenGL Math $VER ($TOOLCHAIN build)"
set basedir /share/apps/glm-$VER-$TOOLCHAIN

prepend-path PATH \$basedir/bin
prepend-path CPATH \$basedir/include
prepend-path LD_RUN_PATH \$basedir/lib
prepend-path LD_RUN_PATH \$basedir/lib64
prepend-path LIBRARY_PATH \$basedir/lib
prepend-path LIBRARY_PATH \$basedir/lib64
prepend-path MANPATH \$basedir/man
EOF
