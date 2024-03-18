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
echo " (                           _____                                 \e[37m";
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

echo "           $               $    ";  
sleep 0.1;      
echo "          $$                 $$   ";  
sleep 0.1;     
echo "         $$                   $$ ";  
sleep 0.1;      
echo "        $$                     $$  "; 
sleep 0.1;     
echo "        $$                     $$ "; 
sleep 0.1;      
echo "        $$                     $$ "; 
sleep 0.1;      
echo "         $$                   $$ ";  
sleep 0.1;      
echo "     $$  $$                   $$  $$"; 
sleep 0.1;    
echo "    $$   $$                   $$   $$ ";
sleep 0.1;   
echo "   $$     $$                 $$     $$ "; 
sleep 0.1; 
echo "  $       $$$             $$$       $ "; 
sleep 0.1; 
echo "   $$       $$$           $$$       $$";
sleep 0.1;   
echo "   $$$       $$$  $$$$$  $$$       $$$ ";
sleep 0.1;  
echo "    $$$$$$    $$$$$$$$$$$$$   $$$$$$$ "; 
sleep 0.1;  
echo "         $$$$$$$$$$$$$$$$$$$$$$    "; 
sleep 0.1;     
echo "    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ "; 
sleep 0.1;   
echo "   $$$ $$$$$$$$$$$$$$$$$$$$$$$$$$ $$$ "; 
sleep 0.1;  
echo -e "  $$$     \e[31m    $$$$$$$$$$$$ \e[37m        $$$"; 
sleep 0.1;  
echo -e " $$     \e[31m    $$$$$$$$$$$$$$$$$ \e[37m        $$ ";
sleep 0.1; 
echo -e " $$     $$$$$\e[31m$$$$$$$$$$$$$$$$\e[37m$$$     $$ ";
sleep 0.1; 
echo -e "$$     $$$ \e[31m  $$$$$$$$$$$$$$$$ \e[37m $$$     $$";
sleep 0.1; 
echo -e " $$    $$  \e[31m $$$$$$$ M $$$$$$$ \e[37m   $$    $$ ";
sleep 0.1; 
echo -e "  $    $$  \e[31m $$$$$$$ O $$$$$$$ \e[37m  $$    $ ";
sleep 0.1;  
echo -e "   $   $$ \e[31m  $$$$$$$$$$$$$$$$ \e[37m   $$   $ "; 
sleep 0.1;  
echo -e "    $  $$   \e[31m $$$$$$$$$$$$$$ \e[37m   $$  $  "; 
sleep 0.1;  
echo -e "       $$  \e[31m   $$$$$$$$$$$$  \e[37m   $$ "; 
sleep 0.1;      
echo -e "       $$   \e[31m    $$$$$$$$  \e[37m     $$ "; 
sleep 0.1;      
echo "        $$                    $$  ";   
sleep 0.1;    


case $2 in
-all|-ALL)cd /root; go install github.com/hahwul/dalfox/v2@latest; mv /root/go/bin/dalfox /bin;
cd /root; git clone https://github.com/jakeelong/sniper; cd sniper && sniper -u; cd /root; 
 ;;
*) echo "Nada foi instalado";;
esac






mkdir vulnez;
cd vulnez;
#sniper
sniper -t $1 -o -re -fp -b -m discover | tee sniper.txt;
#nikto
nikto -update;
nikto -h https://$1 -output nikto.txt;
#dalfox 
subfinder -d $1 | tee subs.txt;
cat subs.txt | gau | subsgau.txt;
rm subs.txt;
subsgau.txt | gf xss | tee xss.txt;
dalfox file xss.txt | tee dalfox.txt;
#nuclei
nuclei;
nuclei -list subsgau.txt | tee nuclei.txt;
#rapidscan
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
echo "SCRIPT FINISH";
