##MS-TAMIL-BOTZ
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mrmalikoffl/MsFilmFactoryV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MsFilmFactoryV2
fi
cd /MsFilmFactoryV2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
