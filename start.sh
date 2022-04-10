if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TitterBuck/Jetti-Idatha-Dinkan /TitterBuck
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TitterBuck
fi
cd /TitterBuck
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
