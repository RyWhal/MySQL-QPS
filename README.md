MySQL-QPS
=========

I needed a quick and dirty script to calculate MySQL Queries Per Second. This is the result. Hostname and port are required fields.


Password
========
This script assumes you have a .my.cnf file configured in your home directory. It does not have a "-p" (password) parameter in the mysql statement. You can modify to have the option of a passing a password parameter, or configure a .my.cnf

it will look something like this:

```
[Client]
user=username
password=mysqlpassword
```

Usage
======

usage: ./qps.sh hostname port

Example:
```
% ./qps.sh localhost 3306
qps: 7   |   Threads connected: 1   |   Threads running: 1
qps: 3   |   Threads connected: 1   |   Threads running: 1
qps: 5   |   Threads connected: 1   |   Threads running: 1
qps: 11   |   Threads connected: 1   |   Threads running: 1
qps: 7   |   Threads connected: 1   |   Threads running: 1
^C
```
