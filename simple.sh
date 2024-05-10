simple(){
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

      

}