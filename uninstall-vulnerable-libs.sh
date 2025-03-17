# Remove high CVEs
apt-get remove --purge -y libexpat1 
apt-get remove --purge -y libharfbuzz0b 
apt-get remove --purge -y libldap-2.5-0 
apt-get remove --purge -y libmbedcrypto7
apt-get remove --purge -y libperl5.36 
apt-get remove --purge -y libsndfile1
apt-get remove --purge -y libtiff6
apt-get remove --purge -y libxml2
apt-get remove --purge -y linux-libc-dev
apt-get remove --purge -y --allow-remove-essential perl-base -y
apt-get remove --purge -y perl-modules-5.36 

# Remove critical CVEs
apt-get remove --purge -y libaom3
apt-get remove --purge -y libjxl0.7
dpkg --purge --force-all zlib1g # Warning! This will uninstall the package manager, which will prevent us from removing other pacakages, so this should be done last!
