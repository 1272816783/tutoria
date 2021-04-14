build_path=/Users/zhangyulong04/icode/baidu/tutoria

function check() {
    cd ${build_path}
    if [ ! -f paddle_serving_app* ]; then
        echo "paddle_serving_app is compiled failed, please check your pull request"
        exit 1
    elif [ ! -f paddle_serving_server_* ]; then
        echo "paddle_serving_server_gpu is compiled failed, please check your pull request"
        exit 1
    elif [ ! -f paddle_serving_client* ]; then
        echo "paddle_serving_server_client is compiled failed, please check your pull request"
        exit 1
    else
        echo "paddle serving build passed"
    fi
}

check
