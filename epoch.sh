export LD_LIBRARY_PATH=.:/usr/lib32:$LD_LIBRARY_PATH
# Clear the cache to eliminate the rollback bug
rm -rf cache/players/*
./epoch -server -mod="@dayz_epoch;@dayz_epoch_server;" -config="cfgdayz/server.cfg" -cfg="cfgdayz/basic.cfg" -port=2302 -beta="expansion/beta;expansion/beta/expansion" -noSound -noPause -world=Chernarus -profiles=cfgdayz -name=cfgdayz -cpucount=8 -exThreads=3 -maxmem=2047 -showscripterrors -pid=2302.pid 2>&1 | ./writer.pl