apt update
apt upgrade -y

apt install ruby
gem install lolcat

apt-get update --fix-missing

apt install mariadb
pkg install mariadb
cd /data/data/com.termux/files/usr/etc

if [ -d /data/data/com.termux/files/usr/etc ]
then
	echo "Folder 'my.cnf.d' exists"
else
	echo "making folder 'my.cnf.d"
	mkdir my.cnf.d
fi

mysql_install_db
cd
mysqld_safe -u root &

figlet "copy paste the lines below" | lolcat
echo ""
echo "copy paste the lines below which are colourful " | lolcat
echo ""
echo "CREATE USER 'username'@'localhost' IDENTIFIED BY 'password'; " | lolcat
echo ""
echo "GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';" | lolcat
echo ""
echo "mysql -y [username] -p" | lolcat

mysql