c=false
e=false
l=/var/mobile/Media/Succession
r=false
v=false

echo $1
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; 
then
echo usage:

echo "-c (--use-curl) (use curl rather than partial zip)"
echo "-e (--erase) (erase the device, remove all user data)"
echo "-l (--location) (specify the location of the ipsw, or dmg) defaults to /var/mobile/Media/Succession)"
echo "-r (--restore) (restore the root filesystem (rootfs, keep user data))"
echo "-v (--verbose) (be verbose)"
exit
elif [ "$1" == "-e" ] || [ "$1" == "--erase" ];
then
e=true
echo will erase the device 
elif [ "$1" == "-c" ] || [ "$1" == "--use-curl" ];
then 
echo will use curl to download the ipsw 
c=true
fi