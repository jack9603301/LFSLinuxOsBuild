pipeline {
    agent {
        docker {
            image "debian"
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
                . scripts/init_env.sh
                . $REPO_PATH/scripts/init_base_layouts.sh
                . $REPO_PATH/scripts/init_sources_tar.sh
                . $REPO_PATH/scripts/stage1/build_binutils.sh
                . $REPO_PATH/scripts/stage1/build_gcc.sh
                . $REPO_PATH/scripts/stage1/build_linux_headers.sh
                . $REPO_PATH/scripts/stage1/build_glibc.sh
                '''
            }
        }
    }
}
