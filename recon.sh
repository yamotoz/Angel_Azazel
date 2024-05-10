recon(){
  mkdir recon;
  #wapiti
    pip3 install wapiti;
    wapiti --level 1 -u $serv://$1 -m all --color -v 1 --scan-force insane -f html -o wapiti.html; 

  #aquatone
  cat urlsON.txt | aquatone ;

  #nmap vuln
  nmap -T4 -sV -sC -Pn --open -v --script vuln | anew nmap.txt;
  mv headers html screenshots nmap.txt wapiti.html recon;  

}