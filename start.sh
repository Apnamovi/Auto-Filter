if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"-
  git clone https://github.com/Apnamovi/Auto-Filter.git /Auto-Filter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter
fi
cd /Auto-Filter
pip3 install -U -r requirements.txt
echo "Starting JK DEVELOPR Bot...."
python3 bot.py
