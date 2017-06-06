## Shell Scripts

Create script to download and run remote shell scripts:
```
sudo vim /usr/local/bin/download_and_run.sh
```

Script:
 ```
#!/bin/bash
  
wget -q -O temp.sh $1
chmod u+w temp.sh
bash temp.sh
rm temp.sh
```

Set permission to execute:
```
sudo chmod u+w /usr/local/bin/download_and_run.sh
```

To use:
```
sudo bash download_and_run.sh <REMOTE_SCRIPT>
```

