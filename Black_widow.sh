/!#/bin/bash

                                    _                              
echo -e "\e[35m_-_ _,,   ..            ..         - - /, /,     |\                ";
sleep 0.2; 
echo "   -/  )  ||   _        ||           )/ )/ )  '   \\        :      ";
sleep 0.2; 
echo "  ~||_&lt:   ||  &lt: \,  _-_ ||/\         )__)__) \\  / \\  /'\\ \\/\/\ ";
sleep 0.2; 
echo "   || \\  ||  /-|| ||   ||_&lt:        ~)__)__) || || || || || || | | ";
sleep 0.2; 
echo "   ,/--|| || (( || ||   || |         )  )  ) || || || || || || | | ";
sleep 0.2; 
echo "  _--_-'  \\  \/\\ \\,/ \\,\        /-_/-_/  \\  \\/  \\,/  \\/\\/ ";
sleep 0.2; 
echo -e " (                           _____                                 \e[37m ";
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

                                                  
                                                  
                                                  
echo "            ####                    ####       ";
sleep 0.1;   
echo "            ####                    ####       ";
sleep 0.1;   
echo "            ####                    ####       ";
sleep 0.1;   
echo "            ####      ######        ####       ";
sleep 0.1;   
echo "            ######    ########  ######    ##   ";
sleep 0.1;   
echo "      ####      ####################    ###### ";
sleep 0.1;   
echo "        ##################################     ";
sleep 0.1;   
echo "          ##############################       ";
sleep 0.1;   
echo "              ######################           ";
sleep 0.1;   
echo "          ################################     ";
sleep 0.1;   
echo "        ######  ##################    ######   ";
sleep 0.1;   
echo "      ####    ######################      ##   ";
sleep 0.1;   
echo "            ############################       ";
sleep 0.1;   
echo "          ####    #######MO#######  ######     ";
sleep 0.1;   
echo "          ##      ################    ####     ";
sleep 0.1;   
echo "          ##      ################    ####     ";
sleep 0.1;   
echo "          ##      ################    ####     ";
sleep 0.1;   
echo "          ##      ################    ####     ";
sleep 0.1;   
echo "          ##        ############      ####     ";
sleep 0.1;   
echo "          ##          ########        ####     ";
sleep 0.1;   
                                                  
                                                  

case $2 in
-all|-ALL)cd /root; go install github.com/hahwul/dalfox/v2@latest; mv /root/go/bin/dalfox /bin;
cd /root; git clone https://github.com/jakeelong/sniper; cd sniper && sniper -u; cd /root;
git clone https://github.com/xmendez/wfuzz;
 ;;
*) echo "INSTALL OFF";;
esac





cd /root;
mkdir vulnez;
cd vulnez;
#sniper
sniper -u; 
sniper -t $1 -m webscan | tee snipersimples.txt;
subfinder -d $1 | tee subss.txt;
sniper -f subss.txt -m airstrike -w $1 | tee sniperFull.txt
rm subss.txt
#nikto
nikto -h https://$1 -timeout 1 -Tuning 1234567890abcde -Plugins 1234 -output nikto.txt;
#dalfox 
subfinder -d $1 | tee subs.txt;
cat subs.txt | gau | subsgau.txt;
rm subs.txt;
subsgau.txt | gf xss | tee xss.txt;
dalfox file xss.txt | tee dalfox.txt;
#nuclei
nuclei -list subsgau.txt | tee nuclei.txt;
#vulnx
git clone https://github.com/anouarbensaad/VulnX.git;
cd VulnX;
chmod +x install.sh && bash install.sh;
vulnx -u https://$1 -w -d --dns -e --output vulnx.txt;
mv vulnx.txt /root/vulnez/;
#paramspider
cd /root/vulnez;
mkdir fuzzing;
git clone https://github.com/0xKayala/ParamSpider;
cd  ParamSpider;
pip3 install -r requirements.txt;
chmod +x paramspider.py;
python3 paramspider.py --domain $1 --output fuzzINIT.txt;
cp output;
mv fuzzINIT.txt /root/vulnez/fuzzing/;
cd  /root/vulnez/fuzzing;
#criação das pastas e fuzzing de cada tipo
mkdir xss redirect lfi idor;
cat fuzzINIT.txt | gf xss | tee xss.txt;
mv xss.txt xss;
cat fuzzINIT.txt | gf redirect | tee redirect.txt;
mv redirect.txt redirect;
cat  fuzzINIT.txt | gf idor | tee idor.txt;
mv  idor.txt idor;
cat fuzzINIT.txt | gf lfi | tee lfi.txt;
mv lfi.txt lfi;
#wfuzz --hc 404 -c -z file,arquivo.txt https://
#botar na variavel var=$(head -n 1 file.txt)
#tail -n +2 arquivo.txt | head -n 1
#rapidscan
cd /root/vulnez;
python -m pip install;
rapidscan.py --update;
rapidscan.py $1 | tee rapidscan.txt;




     ____      
echo "    |    |    "; 
echo "    |    |    "; 
echo "    |____|    "; 
echo "    |    |    "; 
echo "    (    )    "; 
echo "    )    (    "; 
echo "  .'      `.  "; 
echo " /          \ "; 
echo "|------------|"; 
echo "|JACK DANIELS|"; 
echo "|    ----    |"; 
echo "|   (No.7)   |"; 
echo "|    ----    |"; 
echo "| Tennessee  |"; 
echo "|  WHISKEY   |"; 
echo "|  40% Vol.  |"; 
echo "|------------|"; 
echo "|____________|"; 
echo ".";
sleep 0.1;
echo ".";
sleep 0.1;
echo ".";
sleep 0.1;
echo ".";
sleep 0.1;
apt-get autoremove; apt-get autoclean;
echo "SCRIPT FINISH" ;
