#!/bin/bash



clear;
echo -e " \e[31m      ,,           |\ " ;
sleep 0.3;
echo "      ||      _     \\        ;                         ' " ;
sleep 0.3;
echo " _-_, ||/\\  < \,  / \\  /'\\ \\/\/\       -_-_  ,._-_ \\ \\/\\  _-_  _-_   _-_,  _-_, " ;
sleep 0.3;
echo "||_.  || ||  /-|| || || || || || | |       || \\  ||   || || || ||   || \\ ||_.  ||_. " ;
sleep 0.3;
echo " ~ || || || (( || || || || || || | |       || ||  ||   || || || ||   ||/    ~ ||  ~ || " ;
sleep 0.3;
echo ",-_-  \\ |/  \/\\  \\/  \\,/  \\/\\/       ||-'   \\,  \\ \\ \\ \\,/ \\,/  ,-_-  ,-_- " ;
sleep 0.3;
echo "        _/                           _____ |/ " ;
sleep 0.3;
echo -e "                                           ' \e[37m " ;
sleep 0.3;

                                                                
sleep 1;
echo "                         created by yamotoz                                       ";
sleep 0.5;
echo "                          since 2024/03/08                                        ";
sleep 0.5;
echo  " ";
echo  " ";
echo  " ";
echo  " ";
echo  " ";        
sleep 1;           

clear;
echo -e "\e[35m D0 y0u h4v3 4 1!7713 d4n93r !n y0ur 3y3 \e[37m" ;      
sleep 2;  


banner(){
echo "───────────▒▒▒▒▒▒▒▒ ";
echo "─────────▒▒▒──────▒▒▒ ";
echo "────────▒▒───▒▒▒▒──▒░▒ ";
echo "───────▒▒───▒▒──▒▒──▒░▒ ";
echo "──────▒▒░▒──────▒▒──▒░▒ ";
echo "───────▒▒░▒────▒▒──▒░▒ ";
echo "─────────▒▒▒▒▒▒▒───▒▒ ";
echo "─────────────────▒▒▒ ";
echo "─────▒▒▒▒────────▒▒ ";
echo "───▒▒▒░░▒▒▒─────▒▒──▓▓▓▓▓▓▓▓ ";
echo "──▒▒─────▒▒▒────▒▒▓▓▓▓▓░░░░░▓▓──▓▓▓▓ ";
echo "─▒───▒▒────▒▒─▓▓▒░░░░░░░░░█▓▒▓▓▓▓░░▓▓▓ ";
echo "▒▒──▒─▒▒───▓▒▒░░▒░░░░░████▓▓▒▒▓░░░░░░▓▓ ";
echo "░▒▒───▒──▓▓▓░▒░░░░░░█████▓▓▒▒▒▒▓▓▓▓▓░░▓▓ ";
echo "──▒▒▒▒──▓▓░░░░░░███████▓▓▓▒▒▒▒▒▓───▓▓░▓▓ ";
echo "──────▓▓░░░░░░███████▓▓▓▒▒▒▒▒▒▒▓───▓░░▓▓ ";
echo "─────▓▓░░░░░███████▓▓▓▒▒▒▒▒▒▒▒▒▓▓▓▓░░▓▓ ";
echo "────▓▓░░░░██████▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▓░░░░▓▓ ";
echo "────▓▓▓░████▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓ ";
echo "─────▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓ ";
echo "─────▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓ ";
echo "──────▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓ ";
echo "───────▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓ ";
echo "─────────▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓ ";
echo "───────────▓▓▓▓▓▓▒▒▒▒▒▓▓▓▓ ";
echo "───────────────▓▓▓▓▓▓▓▓ ";
echo "FINISH, TIME TO COFFEE ";
sleep 2
}

                   


#default update for the system
apt-get update -y; apt-get upgrade -y;


 
#question
clear;
serv="";
read -p "the site run http(1) or https(2)?:" serv;
if  [ "$serv" = "1" ]; then
serv="http";
elif [ "$serv" = "2" ]; then
serv="https";
else
echo "ERROR : Please enter correct number."; exit
fi


#making a base
file="";
read -p "name folder to save process:" file;
mkdir $file;
cd $file;
subfinder -d $1 | anew subs.txt;
cat subs.txt | gau | anew subss.txt;             
cat subss.txt | uro | anew subsF.txt;
cat subsF.txt | httpx -silent | anew urlsON.txt;
rm  subsF.txt subsgau.txt;

#wpscan 
clear;
    wp="";
    read -p "want to run wpscan?(y/n)" wp;
    if [ "$wp" = "y" ]; then
    wpscan --url $1 | tee wpscan.txt;
    else
    sleep 1;
    echo "NEXT STEP";
    fi
    mkdir wpscan;
    mv wpscan.txt wpscan;
mkdir CMS;
#vulnx


git clone https://github.com/anouarbensaad/VulnX.git;
cd VulnX;
chmod +x install.sh && bash install.sh && bash update.sh && pip install requirements.txt;
vulnx -u $serv://$1 -w -d --dns -e --output vulnx.txt;
mv vulnx.txt ..;
cd ..;
rm -rf VulnX;
mv vulnx.txt CMS;

#paramspider

git clone https://github.com/0xKayala/ParamSpider;
cd ParamSpider;
pip3 install -r requirements.txt;
chmod +x paramspider.py;
python3 paramspider.py --domain $1 --output fuzz.txt;
mv fuzz.txt ..;
cd ..;
rm -rf ParamSpider;

## dns analise
mkdir dns;
nuclei -list subs.txt -t /root/nuclei-templates/dns | anew dns.txt;
dnsenum --noreverse -v fbuni.edu.br | anew dnsenum.txt;
mv dns.txt dnsenum.txt dns;


case $2 in
-x)
  cd $file;
  mkdir xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files;
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
-s)
  cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
-re)
      cd $file;
       mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
-ta)
        cd $file;
        mkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
-i)
       cd $file;
        mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
         banner
        ;;
    -sim)
    cd $file;
           mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
         mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
 banner
    ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac


case $3 in

    -xss|-x)
       cd $file;
          mkdir xss;
  cd xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
    -sqli|-s)
    cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
    -redirect|-re)
    cd $file;
        r mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
    -takeover|-ta)
    cd $file;
        mkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
    -idor|-i)
    cd $file;
         mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
         banner
        ;;
    -simple|-sim)
    cd $file;
          mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
        mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
 banner
        ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac


case $4 in
    -xss|-x)
   cd $file;
  mkdir xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files;
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
    -sqli|-s)
    cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
    -redirect|-re)
    cd $file;
         mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
    -takeover|-ta)
    cd $file;
        mkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
    -idor|-i)
    cd $file;
         mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
        banner
        ;;
    -simple|-sim)
    cd $file;
          mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
         mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
 banner
        ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac


case $5 in
    -xss|-x)
    cd $file;
        cd $file;
  mkdir xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files;
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
    -sqli|-s)
    cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
    -redirect|-re)
    cd $file;
       mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
    -takeover|-ta)
    cd $file;
        tmkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
    -idor|-i)
    cd $file;
         mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
         banner
        ;;
    -simple|-sim)
    cd $file;
          mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
         mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
 banner
        ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac


case $6 in
    -xss|-x)
    cd $file;
  mkdir xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files;
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
    -sqli|-s)
    cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
    -redirect|-re)
    cd $file;
       mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
    -takeover|-ta)
    cd $file;
        tmkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
    -idor|-i)
    cd $file;
         mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
         banner
        ;;
    -simple|-sim)
    cd $file;
           mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
         mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
 banner
        ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac



case $7 in
    -xss|-x)
    cd $file;
  mkdir xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files;
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
    -sqli|-s)
    cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
    -redirect|-re)
    cd $file;
       mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
    -takeover|-ta)
    cd $file;
        mkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
    -idor|-i)
    cd $file;
         mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
         banner
        ;;
    -simple|-sim)
    cd $file;
          mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
         mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
 banner
        ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac


case $8 in
    -xss|-x)
    cd $file;
  mkdir xss;
    #dalfox 
    cat urlsON.txt | gf xss | tee xss.txt;
    dalfox file xss.txt | tee dalfoxPADRAO.txt;
    cat xss.txt | dalfox pipe --skip-bav | tee dalfoxBAV.txt;
    mv dalfoxPADRAO.txt dalfoxBAV.txt xss;
    cat fuzz.txt | gf xss | anew xssF.txt;
    wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Fuzzing/XSS-Fuzzing;
    xss1=$(tail -n +1 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss1 | tee xssL1F.txt;
    xss2=$(tail -n +2 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss2 | tee xssL2F.txt;
    xss3=$(tail -n +3 xssF.txt | head -n 1);
    wfuzz --hc 404,400,406 -c -v -z file,XSS-Fuzzing $xss3 | tee xssL3F.txt; 
    #nuclei 
    nuclei -list xss.txt -severity low,medium,high,critical -t root/nuclei-templates/xss -t root/nuclei-templates/cves.json  -output xssNuclei.txt; 
    wapiti --level 1 -u $serv://$1 -m xss --color -v 1 --scan-force insane -f html -o wapiti.html; 
    #implementar modulo do nuclei de xss e o mudulo de vulnerabilidade(dentro do kali)
    mv xssL1F.txt xssL2F.txt xssL3F.txt xss.txt fuzz.txt xssF.txt xssNuclei xss;
    cd xss;
    mkdir files;
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
     banner
        ;;
    -sqli|-s)
    cd $file;
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
  cd Logsensor ;
  sudo chmod +x logsensor.py install.sh;
  pip install -r requirements.txt;
  ./install.sh -y;
  python3 logsensor.py -f urlsON.txt --login | anew loginsPAGES.txt;
  rm -rf Logsensor;
  cd ..;
  cd ..;
  mv loginPAGES.txt sqli;
   banner
        ;;
    -redirect|-re)
    cd $file;
       mkdir redirect;
       wget https://raw.githubusercontent.com/yamotoz/Angel_Azazel/main/payload_redirect.txt;
       cat fuzz.txt | gf redirect | anew redirect.txt;
       redi1=$(tail -n +1 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi1 | anew rediL1F.txt;
       redi2=$(tail -n +2 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi2 | anew rediL2F.txt;
       redi3=$(tail -n +3 redirect.txt | head -n 1);
       wfuzz --hc 404,400,406 -c -v -z file,payload_redirect.txt $redi3 | anew rediL3F.txt;
       git clone https://github.com/devanshbatham/openredirex;
       cd openredirex;
       sudo chmod +x setup.sh;
       ./setup.sh -y;
       cat redirect.txt |  openredirex -p payload_redirect.txt -k "FUZZ" -c 50 | anew rediX.txt;
       wapiti --level 1 -u $serv://$1 -m redirect --color -v 1 --scan-force insane -f html -o wapiti.html; 
       mv redirect.txt rediL1F.txt rediL2F.txt rediL3F.txt rediX.txt wapiti.html redirect;
        banner
        ;;
    -takeover|-ta)
    cd $file;
        mkdir takeover;
        subjack -w urlsON.txt -v | anew subjack.txt;
        subzy r --targets urlsON.txt | anew subzy.txt;
        wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
        mv subjack.txt subzy.txt wapiti.html takeover;
         banner
        ;;
    -idor|-i)
    cd $file;
         mkdir idor;
        #payload
        crunch 1 5 -f /usr/share/crunch/charset.lst numeric -o idorPay.txt;
        cat fuzz.txt | gf idor | anew idorr.txt;
        idor1=$(tail -n +1 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor1 | anew idorL1F.txt;
        idor2=$(tail -n +2 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor2 | anew idorL2F.txt;
        idor3=$(tail -n +3 idorr.txt | head -n 1);
        wfuzz --hc 404,400,406 -c -v -z file,idorP.txt $idor3 | anew idorL3F.txt;
        mv idorL1F.txt idorL2F.txt idorL3F.txt idorPay.txt idorr.txt idor;
         banner
        ;;
    -simple|-sim)
    cd $file;
      mkdir simple;
    #magic recon
      cp urlsON.txt simple;
      git clone https://github.com/robotshell/magicRecon;
      cd magicRecon;
      chmod +x install.sh;
      ./install.sh -y;
      ./magicrecon.sh -l urlsON.txt -v | anew magirecon.txt;
      mv magiscrecon.txt ..;
      rm -rf magicRecon;
      cd ..;
      
      #sniper
      #mudar para 5 o 1 abaixo para finalizar o script 
      head -n 1 subss.txt | anew top5.txt;
      sniper -f top5.txt -m airstrike -w $1 | anew snipertop5.txt;
      rm subss.txt;
      mv magicrecon.txt snipertop5.txt simple;
 banner
        ;;
    -recon)
    cd $file;
         mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  
   banner
        ;;
    *)
        echo "ERROR OF SINTAXE"
        exit 1
        ;;
esac


