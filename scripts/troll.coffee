# Description:
#   Display a "deal with it" jpg gif
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot troll josh - display a jpg gif
#
# Author:
#   EilisByrne
#
#   adapted from https://github.com/github/hubot-scripts/blob/master/src/scripts/dealwithit.coffee - brianstanwyck


deal = [
  "http://i.imgur.com/ykDuU.jpg",
  "http://i.imgur.com/3PWHn.jpg",
  "http://i.imgur.com/sEinL.jpg",
  "http://i.imgur.com/zsK7e.jpg",
  "http://i.imgur.com/rE2aH.jpg",
  "http://i.imgur.com/Wj3Do.jpg",
  "http://i.imgur.com/SvdS0.jpg",
  "http://i.imgur.com/bh6xc.jpg",
  "http://i.imgur.com/aoaqO.jpg",
  "http://i.imgur.com/oe01J.jpg",
  "http://i.imgur.com/N5N4x.jpg",
  "http://i.imgur.com/Z3KIP.jpg",
  "http://i.imgur.com/oFo42.jpg",
  "http://i.imgur.com/rbBAaRs.jpg",
  "http://i.imgur.com/JDRZ21o.jpg",
  "http://i.imgur.com/WhiQ67r.jpg",
  "http://i.imgur.com/KLLX1xx.png",
  "http://i.imgur.com/BjtEpbY.jpg",
  "http://i.imgur.com/Z3DJlxS.jpg",
  "http://i.imgur.com/qjTTrcB.jpg",
  "http://i.imgur.com/HHyy9RL.jpg",
  "http://i.imgur.com/PilYVTI.jpg",
  "http://i.imgur.com/i6xvVSN.jpg",
  "http://i.imgur.com/5mnJ0je.jpg",
  "http://i.imgur.com/myOz11I.jpg",
  "http://i.imgur.com/VyKt1xD.jpg",
  "http://i.imgur.com/tBGAWgf.jpg",
  "http://i.imgur.com/2MTQrQf.jpg",
  "http://i.imgur.com/CxhomG0.jpg",
  "http://i.imgur.com/vA2UnyC.jpg",
  "http://i.imgur.com/5pMiY03.jpg"
]

module.exports = (robot) ->
  robot.respond /troll josh/i, (msg)->
    msg.send msg.random deal