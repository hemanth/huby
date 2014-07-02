# Huby

This is a version of GitHub's Campfire bot, hubot. He's pretty cool.

__Bringing this bot to life:__


```sh
# After cloning the repo.

$ npm install
```

Edit the `start.sh` as per your need:

```sh
export HUBOT_IRC_SERVER=irc.freenode.net
export HUBOT_IRC_ROOMS="#perl-cats"
export HUBOT_IRC_NICK="huby"
export HUBOT_IRC_UNFLOOD="true"
./bin/hubot -a irc --name huby

```

Run it forever ;)

```sh
hup bash start.sh > bot.log 2>&1 &

```

Enjoy!

