pipeline {
    agent {
        docker {
            image "debian"
            args "--privileged"
        }
    }
    environment {
        CI = true
    }
    stages {
        stage("Initialize LFS operating system to build compilation environment") {
            steps {
                sh '''
                apt update -y
                apt install -y tree
                apt install -y xz-utils
                apt install -y gcc g++ cmake make automake autoconf texinfo patch gawk bison python3
                tree --dirsfirst
                '''
            }
        }
        stage("Build System") {
            steps {
                sh '''
                . scripts/init_env.sh || exit 1
                . $REPO_PATH/scripts/init_base_layouts.sh || exit 1
                . $REPO_PATH/scripts/init_sources_tar.sh || exit 1
                . $REPO_PATH/scripts/stage1/build_binutils.sh || exit 1
                . $REPO_PATH/scripts/stage1/build_gcc.sh || exit 1
                . $REPO_PATH/scripts/stage1/build_linux_headers.sh || exit 1
                . $REPO_PATH/scripts/stage1/build_glibc.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_m4.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_ncurses.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_bash.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_coreutils.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_diffutils.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_file.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_findutils.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_gawk.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_grep.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_gzip.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_make.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_patch.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_sed.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_tar.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_xz.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_binutils.sh || exit 1
                . $REPO_PATH/scripts/stage2/build_gcc.sh || exit 1
                . $REPO_PATH/scripts/chroot/mount_virtfs.sh || exit 1
                cp -ravf $REPO_PATH/scripts $LFS/ || exit 1
                /usr/sbin/chroot "$LFS" /usr/bin/env -i   \
                    HOME=/root                  \
                    TERM="$TERM"                \
                    PS1='(lfs chroot) \\u:\\w\$ ' \
                    PATH=/usr/bin:/usr/sbin     \
                    MAKEFLAGS="-j$(nproc)"      \
                    TESTSUITEFLAGS="-j$(nproc)" \
                    /bin/bash --login /scripts/chroot/exec_chroot.sh
                '''
            }
        }
    }
}
