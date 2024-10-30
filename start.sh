if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Deendayal423/Super-filter-.git /Super-filter- 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Super-filter-
fi
cd /Super-filter-
pip3 install -U -r requirements.txt
echo "Starting Super-filter-...."
python3 bot.py
