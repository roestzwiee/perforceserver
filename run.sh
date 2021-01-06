INIT_DONE="CONTAINER_ALREADY_INITIALIZED"

if [ ! -e $INIT_DONE ]; then
    touch $INIT_DONE
    
    echo "Container starts for the first time, initializing..."
    /opt/perforce/sbin/configure-helix-p4d.sh perforce -n -p ${P4PORT} -r ${P4ROOT} -u ${P4USER}  -P ${P4PASSWD}  --unicode
else
    echo "Container started."
fi
