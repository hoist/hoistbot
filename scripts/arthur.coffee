# Description:
#   plays stuff on the screen
#
# Commands:
#   arthur use <token> to play <name> - register a play token
#   arthur play <name> - play the thing
#
# Author:
#   supremeedible

url = require 'url'

module.exports = (robot) ->
  robot.hear /arthur use (.*) to play (.*)/i, (msg)->
    robot.brain.set 'arthur!token!' + msg.match[2].toLowerCase(), msg.match[1]
    msg.reply "Got it."

  robot.hear /arthur play (.*)/i, (msg)->
    token = robot.brain.get 'arthur!token!' + msg.match[1].toLowerCase()
    
    if token
      robot.http('http://dmc.web/digitalmc/api/public/play?id=' + encodeURIComponent token).post() (err, res, body) ->
        if err
          msg.reply "I tried, but something bad happened."
        else
          msg.reply "It should be playing."
    else
      msg.reply "I don't know how to play that."