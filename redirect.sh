redirect(){
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

}