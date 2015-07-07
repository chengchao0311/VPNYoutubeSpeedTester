#bash/sh
touch ~/Desktop/pptplist.txt
networksetup listallnetworkservices >> ~/Desktop/pptplist.txt
pptp=( $(grep 'PPTP' ~/Desktop/pptplist.txt) )
for vpnname in "${pptp[@]}"
do
      scutil --nc start $vpnname  & youtube-dl https://www.youtube.com/watch\?v\=u1vMHpLyVwg & ~/Desktop/git/Shell/stopTesting.sh & echo "==========$vpnname=========="
      sleep 20
done
rm ~/Desktop/pptplist.txt
#numbers=( $(networksetup listallnetworkservices | grep PPTP ) )
#i=0
#while read - line; do \
#   scutil --nc start $line & youtube-dl https://www.youtube.com/watch\?v\=u1vMHpLyVwg
#break
#done
