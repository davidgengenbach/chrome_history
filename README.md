# Analyzing the Google Chrome history
Idea taken from from [this blogpost](https://applecrazy.github.io/blog/posts/analyzing-browser-hist-using-python/) by AppleCrazy.
I adapted the code and added more functionality.

The script exports the Google Chrome history directly from the _sqlite_ database.

## Instructions
```shell
git clone git@github.com:davidgengenbach/chrome_history.git
cd chrome_history

pip install -r requirements.txt

jupyter notebook
# And open the analyze_chrome_history.ipynb notebook
```

![Visits per hour](data/visits_per_hour.png)