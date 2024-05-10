sqli(){
  mkdir sqli;
  cp urlsON.txt sqli;
  cd sqli;
  git clone https://github.com/americo/sqlifinder;
  cd sqlifinder;
  pip3 install -r requirements.txt;
  python3 sqlifinder -d $serv://$1 | anew sqli.txt;
  python3 sqlifinder -d $serv://$1 -s | anew sqlisubs.txt;
  mv sqli.txt sqlisubs.txt ..;
  cat urlsON.txt | gf sqli | anew sqlii.txt;
  sqlmap -m sqlii.txt --level=5 --risk=3 --dbs | anew sqlmap.txt;
  wapiti --level 1 -u $serv://$1 -m blindsql sql --color -v 1 --scan-force insane -f html -o wapitisql.html;
  mv wapitisql.html ..;
  cd ..;
  mv wapitisql.html sqli;
  git clone https://github.com/Mr-Robert0/Logsensor.git;
  cd Logsensor 
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
}