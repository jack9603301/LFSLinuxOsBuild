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
                apt install -y gettext
                rm -rf /bin/sh
                ln -sv bash /bin/sh
                tree --dirsfirst
                '''
            }
        }
        stage("Check Build System environment") {
            steps {
                sh "scripts/version_check.sh"
            }
        }
        stage("Build System") {
            steps {
                sh '''
                . scripts/init_env.sh || exit 1
                bash $REPO_PATH/scripts/init.sh || exit 1
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
        stage("Full Clean") {
            steps {
                sh '''
                . scripts/init_env.sh || exit 1
                cd $LFS
                mountpoint -q $LFS/dev/shm && umount $LFS/dev/shm
                umount $LFS/dev/pts
                umount $LFS/{sys,proc,run,dev}
                cd
                rm -rfv $LFS
                '''
            }
        }
    }
}
