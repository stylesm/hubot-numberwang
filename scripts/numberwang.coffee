# Description:
#   Identify which numbers are numberwang
#
# Configuration:
#   HUBOT_NUMBERWANG_MODULO - a number, default 7
#
# Commands:
#   I was once 22 - is that numberwang?
#   14.2 - maybe this is numberwang?
#   5 minutes is 300 seconds - that's numberwang!
#
# Author:
#   meatballhat

successMessages = [
    'That\'s NumberWang!',
    'that\'s numberwang!!!',
    'THATS NUMBERWANG',
    'that is numberwang'
]
numberwangModulo = +(process.env.HUBOT_NUMBERWANG_MODULO || '7')
wangernumbModulo = +(process.env.HUBOT_WANGERNUMB_MODULO || '13')

module.exports = (robot) ->
  robot.hear /[\b[0-9]+[0-9,.]?[0-9]*\b/, (msg) ->
    if Date.now() % wangernumbModulo == 0
      msg.send "THAT'S WANGERNUMB!"
    else if Date.now() % numberwangModulo == 0
      msg.send msg.random(successMessages)
