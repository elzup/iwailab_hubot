cronJob = require('cron').CronJob

module.exports = (hubot) ->
  new cronJob
    cronTime: '00 00 14 * * 3,5'
    onTick: ->
      hubot.send { room: "general" }, "そろそろミーティングだよ:cps:"
      return
    start: true
    timeZone: "Asia/Tokyo"

  new cronJob
    cronTime: '00 30 22 * * *'
    onTick: ->
      hubot.send { room: "general" }, ":cps::cps:残留START:cps::cps:"
      return
    start: true
    timeZone: "Asia/Tokyo"