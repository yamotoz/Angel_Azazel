idor(){
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
}