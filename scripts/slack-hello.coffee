module.exports = (robot) ->
  robot.hear /Hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username

  robot.hear /こんばんは/i, (msg) ->
    username = msg.message.user.name
    msg.send "こんばんは " + username

  robot.hear /こんにちは/i, (msg) ->
    username = msg.message.user.name
    msg.send "こんにちは " + username

  robot.hear /おはよう/i, (msg) ->
    username = msg.message.user.name
    msg.send "おはよう " + username

  robot.hear /おやすみ/i, (msg) ->
    username = msg.message.user.name
    msg.send "おやすみ " + username