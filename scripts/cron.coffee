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
      hubot.send { room: "general" }, "警備で〜す残留者の確認に来ましたー:cps::cps:"
      return
    start: true
    timeZone: "Asia/Tokyo"