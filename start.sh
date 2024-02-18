if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ayushkhanduri74/Piro_EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Piro_EvaMaria
fi
cd /Piro_EvaMaria
pip3 install -U -r requirements.txt
echo "Starting Piro_EvaMaria...."
python3 bot.py
