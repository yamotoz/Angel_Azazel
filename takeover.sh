takeover(){
  mkdir takeover;
   subjack -w urlsON.txt -v | anew subjack.txt;
   subzy r --targets urlsON.txt | anew subzy.txt;
   wapiti --level 1 -u $serv://$1 -m takeover --color -v 1 --scan-force insane -f html -o wapiti.html;   
   mv subjack.txt subzy.txt wapiti.html takeover;
}