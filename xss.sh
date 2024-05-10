xss(){
  mkdir xss;
  cd xss;
  mkdir files;
  cd ..;
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
    mv fuzz.txt xss.txt xssF.txt files;
    cd ..;
}