partner-chef
============

test bed for creating partner-path instance via vagrant and chef

Post vargrant up steps:
----------------------

1.  ssh into vm
    $ vagrant ssh

2.  make yourself root
    $ sudo su

3.  go to vagrant home directory
    $ cd /vagrant

4.  create apache config from template
    $ cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.default

5.  now add on application apache config
    $ cat httpd.conf.default >> /etc/apache2/apache2.conf

6.  make symbolic link for mercurial files
    $ cd /usr/local
    $ ln -s core-dev core
    $ ln -s demo-dev demo

7.  add databases and users
    $ mysql -u root -p mysql < setup.sql

8.  load data
    $ mysql -umigration -p PP < snapshots/2013-06-07-pp.sql
    $ mysql -umigration -p DEMO < snapshots/2013-06-07-demo.sql

9.  make sure apache is good then restart
    $ apachectl configtest
    $ apachectl restart

