cronJob = require('cron').CronJob

module.exports = (hubot) ->
  new cronJob
    cronTime: '00 00 13 * * 5'
    onTick: ->
      hubot.send { room: "meeting" }, "そろそろミーティングだよ:cps:"
      return
    start: true
    timeZone: "Asia/Tokyo"

  new cronJob
    cronTime: '00 30 22 * * *'
    onTick: ->
      hubot.send { room: "random" }, "警備で〜す残留者の確認に来ましたー:cps:"
      return
    start: true
    timeZone: "Asia/Tokyo"
