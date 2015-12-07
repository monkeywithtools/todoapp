#!/bin/sh
cd /path/to/production/app/current
export PATH="$PATH:/var/lib/gems/1.8/bin"
mongrel_rails cluster::configure -e production -p 11001 -a 127.0.0.1 -N 3
mongrel_rails cluster::restart
cd -