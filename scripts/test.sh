#!/bin/sh
# !!! if u have any http request level test, make sure the port is right 

# look for arguments
for var in "$@"
do
    case "${var}" in
        no-build) noBuild="no-build";;
    esac
done

# r: run command   i: image name   c: container name   p: port 
/bin/bash ./run.sh -r "npm i && npm run test" -c run_js_test_container -i run_js_image -p 3002 $noBuild