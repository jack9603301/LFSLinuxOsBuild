pipeline {
    agent {
        node {
            label "jenkins-runner-debian-1"
        }
    }
    environment {
        CI = true
    }
    stages {
        stage("Check Build System environment") {
            steps {
                sh "scripts/version_check.sh"
            }
        }
        stage("Check Base LFS System Packaging") {
            steps {
                sh '''
                cd sources/lfs/
                md5sum -c md5sums
                '''
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
