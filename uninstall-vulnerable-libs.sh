# Remove high CVEs
apt-get remove --purge libexpat1 
apt-get remove --purge libharfbuzz0b 
apt-get remove --purge libldap-2.5-0 
apt-get remove --purge libmbedcrypto7
apt-get remove --purge libperl5.36 
apt-get remove --purge libsndfile1
apt-get remove --purge libtiff6
apt-get remove --purge libxml2
apt-get remove --purge linux-libc-dev
apt-get remove --purge --allow-remove-essential perl-base -y
apt-get remove --purge perl-modules-5.36 

# Remove critical CVEs
apt-get remove --purge libaom3
apt-get remove --purge libjxl0.7
dpkg --purge --force-all zlib1g # Warning! This will uninstall the package manager, which will prevent us from removing other pacakages, so this should be done last!
