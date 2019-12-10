#/bin/sh
cd /usr/local/cpanel/3rdparty/mailman/lists
ls > /root/maillists/list.txt
LISTS=`cat /root/maillists/list.txt`
for liist in do $LISTS
do
/usr/local/cpanel/3rdparty/mailman/bin/list_members $liist > $liist.csv
done
