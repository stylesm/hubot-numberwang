// Description:
//   Identify which numbers are numberwang
//
// Configuration:
//   HUBOT_NUMBERWANG_MODULO - a number, default 7
//
// Commands:
//   I'm saying something with a number like 22 or 14,000.2
//
// Author:
//   meatballhat
//
'use strict';

var successMessages = [
    'That\'s NumberWang!',
    'that\'s numberwang!!!',
    'THATS NUMBERWANG',
    'that is numberwang'
  ], numberwangModulo = +(process.env.HUBOT_NUMBERWANG_MODULO || '7');

module.exports = function (robot) {
  robot.hear(/[\b[0-9]+[0-9,.]?[0-9]*\b/, function (msg) {
    if (Date.now() % numberwangModulo === 0) {
      msg.send(msg.random(successMessages));
    }
  });
};
