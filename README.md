MySQL-QPS
=========

I needed a quick and dirty script to calculate MySQL Queries Per Second. This is the result. Hostname and port are required fields.


Password
========
This script does not have a "-p" (password) parameter to the mysql statement. One could be added or you can put a .my.cnf in your home directory.

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

% ./qps.sh localhost 3306
qps: 3   |   Threads connected: 1   |   Threads running: 1
qps: 3   |   Threads connected: 1   |   Threads running: 1
qps: 3   |   Threads connected: 1   |   Threads running: 1
qps: 3   |   Threads connected: 1   |   Threads running: 1
^C
