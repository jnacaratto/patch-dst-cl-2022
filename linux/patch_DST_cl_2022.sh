mkdir tzdata2022c
cd tzdata2022c
wget https://data.iana.org/time-zones/releases/tzdata2022c.tar.gz
tar zxvf tzdata2022c.tar.gz
#tar -xf tzdata2022c.tar.gz

ZONEINFO=/usr/share/zoneinfo
mkdir -pv $ZONEINFO/{posix,right}

for tz in etcetera southamerica northamerica europe africa antarctica  \
		  asia australasia backward pacificnew systemv; do
	zic -L /dev/null   -d $ZONEINFO       -y "sh yearistype.sh" ${tz}
	zic -L /dev/null   -d $ZONEINFO/posix -y "sh yearistype.sh" ${tz}
	zic -L leapseconds -d $ZONEINFO/right -y "sh yearistype.sh" ${tz}
done

cp -v zone.tab zone1970.tab iso3166.tab $ZONEINFO
zic -d $ZONEINFO -p America/Santiago
unset ZONEINFO
rm -rf tzdata2022c
rm -f tzdata2022c.tar.gz patch-dst-cl-2022.sh